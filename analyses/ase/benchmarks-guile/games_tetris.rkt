(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7995 #t)) g7995)))
    (meta (lambda (v) (letrec* ((g7996 v)) g7996)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7997
          (letrec*
           ((g7998
             (letrec*
              ((x-e7999 lst))
              (letrec*
               ((v1804 x-e7999))
               (cond
                ((begin (write '(funapp 22 18)) (display "\n") (null? v1804))
                 (letrec* () #f))
                ((begin (write '(funapp 23 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 25 24)) (display "\n") (car v1804)))
                   (vs
                    (begin
                      (write '(funapp 25 41))
                      (display "\n")
                      (cdr v1804))))
                  (letrec*
                   ((x-cnd8000
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd8000
                     #t
                     (begin
                       (write '(funapp 28 37))
                       (display "\n")
                       (member v vs))))))
                (else
                 (begin
                   (write '(funapp 29 23))
                   (display "\n")
                   (error "no match found"))))))))
           g7998)))
        g7997)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g8001 (lambda (v) (letrec* ((g8002 v)) g8002)))) g8001)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g8003
          (letrec*
           ((x8004 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x8004)))))
        g8003))))
   (letrec*
    ((g8005
      (letrec*
       ((g8006
         (letrec*
          ((orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g8007 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g8008
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g8009
                     (lambda (k j lst)
                       (letrec*
                        ((g8010
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g8011
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g8011))
                             lst))))
                        g8010))))
                   g8009)))
               (real?/c
                (lambda (g7534 g7535 g7536)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7536))))
                      (if x-cnd8013
                        g7536
                        (begin
                          (write '(blame g7534 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7534)))))))
                   g8012)))
               (boolean?/c
                (lambda (g7537 g7538 g7539)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7539))))
                      (if x-cnd8015
                        g7539
                        (begin
                          (write '(blame g7537 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7537)))))))
                   g8014)))
               (number?/c
                (lambda (g7540 g7541 g7542)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7542))))
                      (if x-cnd8017
                        g7542
                        (begin
                          (write '(blame g7540 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7540)))))))
                   g8016)))
               (any/c
                (lambda (g7543 g7544 g7545)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x-cnd8019
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g8020 #t)) g8020)) g7545))))
                      (if x-cnd8019
                        g7545
                        (begin
                          (write '(blame g7543 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7543)))))))
                   g8018)))
               (any?/c
                (lambda (g7546 g7547 g7548)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x-cnd8022
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g8023 #t)) g8023)) g7548))))
                      (if x-cnd8022
                        g7548
                        (begin
                          (write '(blame g7546 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7546)))))))
                   g8021)))
               (cons?/c
                (lambda (g7549 g7550 g7551)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x-cnd8025
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7551))))
                      (if x-cnd8025
                        g7551
                        (begin
                          (write '(blame g7549 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7549)))))))
                   g8024)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7552 g7553 g7554)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x-cnd8027
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7554))))
                      (if x-cnd8027
                        g7554
                        (begin
                          (write '(blame g7552 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7552)))))))
                   g8026)))
               (integer?/c
                (lambda (g7555 g7556 g7557)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x-cnd8029
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7557))))
                      (if x-cnd8029
                        g7557
                        (begin
                          (write '(blame g7555 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7555)))))))
                   g8028)))
               (symbol?/c
                (lambda (g7558 g7559 g7560)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x-cnd8031
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7560))))
                      (if x-cnd8031
                        g7560
                        (begin
                          (write '(blame g7558 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7558)))))))
                   g8030)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g8032
                     (lambda (k j v)
                       (letrec*
                        ((g8033
                          (letrec*
                           ((x-cnd8034
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd8034
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g8033))))
                   g8032)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g8035
                     (lambda (k j v)
                       (letrec*
                        ((g8036
                          (letrec*
                           ((x-cnd8037
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd8037
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x8041
                                (letrec*
                                 ((x8042
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x8042))))
                               (x8038
                                (letrec*
                                 ((x8040
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x8039
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x8040 k j x8039)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x8041 x8038)))))))
                        g8036))))
                   g8035)))
               (any? (lambda (v) (letrec* ((g8043 #t)) g8043)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8045
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x8045)))))
                   g8044)))
               (nonzero?/c
                (lambda (g7561 g7562 g7563)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x-cnd8047
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g8048
                                (letrec*
                                 ((x8049
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x8049)))))
                              g8048))
                           g7563))))
                      (if x-cnd8047
                        g7563
                        (begin
                          (write '(blame g7561 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7561)))))))
                   g8046)))
               (meta (lambda (v) (letrec* ((g8050 v)) g8050)))
               (+
                (letrec*
                 ((xj7564
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7565
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8051
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7568 k7569 f7570)
                         (letrec*
                          ((g8053
                            (lambda (g7566 g7567)
                              (letrec*
                               ((g8054
                                 (letrec*
                                  ((x8055
                                    (letrec*
                                     ((x8057
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7568 k7569 g7566)))
                                      (x8056
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7568 k7569 g7567))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7570 x8057 x8056)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7568 k7569 x8055)))))
                               g8054))))
                          g8053))
                       xj7564
                       xk7565
                       (lambda (a b)
                         (letrec*
                          ((g8052
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g8052))))))
                  g8051)))
               (-
                (letrec*
                 ((xj7571
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7572
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8058
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7575 k7576 f7577)
                         (letrec*
                          ((g8060
                            (lambda (g7573 g7574)
                              (letrec*
                               ((g8061
                                 (letrec*
                                  ((x8062
                                    (letrec*
                                     ((x8064
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7575 k7576 g7573)))
                                      (x8063
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7575 k7576 g7574))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7577 x8064 x8063)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7575 k7576 x8062)))))
                               g8061))))
                          g8060))
                       xj7571
                       xk7572
                       (lambda (a b)
                         (letrec*
                          ((g8059
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g8059))))))
                  g8058)))
               (*
                (letrec*
                 ((xj7578
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7579
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8065
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7582 k7583 f7584)
                         (letrec*
                          ((g8067
                            (lambda (g7580 g7581)
                              (letrec*
                               ((g8068
                                 (letrec*
                                  ((x8069
                                    (letrec*
                                     ((x8071
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7582 k7583 g7580)))
                                      (x8070
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7582 k7583 g7581))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7584 x8071 x8070)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7582 k7583 x8069)))))
                               g8068))))
                          g8067))
                       xj7578
                       xk7579
                       (lambda (a b)
                         (letrec*
                          ((g8066
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g8066))))))
                  g8065)))
               (/
                (letrec*
                 ((xj7585
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7586
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8072
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7589 k7590 f7591)
                         (letrec*
                          ((g8074
                            (lambda (g7587 g7588)
                              (letrec*
                               ((g8075
                                 (letrec*
                                  ((x8076
                                    (letrec*
                                     ((x8078
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7589 k7590 g7587)))
                                      (x8077
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7589 k7590 g7588))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7591 x8078 x8077)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7589 k7590 x8076)))))
                               g8075))))
                          g8074))
                       xj7585
                       xk7586
                       (lambda (a b)
                         (letrec*
                          ((g8073
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g8073))))))
                  g8072)))
               (car
                (letrec*
                 ((xj7592
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7593
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8079
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7595 k7596 f7597)
                         (letrec*
                          ((g8081
                            (lambda (g7594)
                              (letrec*
                               ((g8082
                                 (letrec*
                                  ((x8083
                                    (letrec*
                                     ((x8084
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7595 k7596 g7594))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7597 x8084)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7595 k7596 x8083)))))
                               g8082))))
                          g8081))
                       xj7592
                       xk7593
                       (lambda (p)
                         (letrec*
                          ((g8080
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g8080))))))
                  g8079)))
               (cdr
                (letrec*
                 ((xj7598
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7599
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8085
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7601 k7602 f7603)
                         (letrec*
                          ((g8087
                            (lambda (g7600)
                              (letrec*
                               ((g8088
                                 (letrec*
                                  ((x8089
                                    (letrec*
                                     ((x8090
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7601 k7602 g7600))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7603 x8090)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7601 k7602 x8089)))))
                               g8088))))
                          g8087))
                       xj7598
                       xk7599
                       (lambda (p)
                         (letrec*
                          ((g8086
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g8086))))))
                  g8085)))
               (cons
                (letrec*
                 ((xj7604
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7605
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8091
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7608 k7609 f7610)
                         (letrec*
                          ((g8093
                            (lambda (g7606 g7607)
                              (letrec*
                               ((g8094
                                 (letrec*
                                  ((x8095
                                    (letrec*
                                     ((x8097
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7608 k7609 g7606)))
                                      (x8096
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7608 k7609 g7607))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7610 x8097 x8096)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7608 k7609 x8095)))))
                               g8094))))
                          g8093))
                       xj7604
                       xk7605
                       (lambda (a b)
                         (letrec*
                          ((g8092
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g8092))))))
                  g8091)))
               (vector-ref
                (letrec*
                 ((xj7611
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7612
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8098
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7614 k7615 f7616)
                         (letrec*
                          ((g8100
                            (lambda (g7613)
                              (letrec*
                               ((g8101
                                 (letrec*
                                  ((x8102
                                    (letrec*
                                     ((x8103
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7614 k7615 g7613))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7616 x8103)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7614 k7615 x8102)))))
                               g8101))))
                          g8100))
                       xj7611
                       xk7612
                       (lambda (v i)
                         (letrec*
                          ((g8099
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g8099))))))
                  g8098)))
               (vector-set!
                (letrec*
                 ((xj7617
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7618
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g8104
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7621 k7622 f7623)
                         (letrec*
                          ((g8106
                            (lambda (g7619 g7620)
                              (letrec*
                               ((g8107
                                 (letrec*
                                  ((x8108
                                    (letrec*
                                     ((x8110
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7621 k7622 g7619)))
                                      (x8109
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7621 k7622 g7620))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7623 x8110 x8109)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7621 k7622 x8108)))))
                               g8107))))
                          g8106))
                       xj7617
                       xk7618
                       (lambda (vec i v)
                         (letrec*
                          ((g8105
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g8105))))))
                  g8104)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g8111
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g8111)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8113
                        (letrec*
                         ((x8114
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x8114)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x8113)))))
                   g8112)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((x-cnd8120
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8120
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x8123
                           (letrec*
                            ((x8124
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x8124))))
                          (x8121
                           (letrec*
                            ((x8122
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x8122)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x8123 x8121)))))))
                   g8117)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x8126)))))
                   g8125)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (letrec*
                         ((x8129
                           (letrec*
                            ((x8130
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x8130)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x8129)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8132
                        (letrec*
                         ((x8133
                           (letrec*
                            ((x8134
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x8134)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x8133)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x8132)))))
                   g8131)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x8138))))
                    (g8136
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x8139))))
                    (g8137
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 484 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 485 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g8140
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g8141 res))
                       g8141))))
                   g8137)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8143
                        (letrec*
                         ((x8144
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x8144)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x8143)))))
                   g8142)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8146
                        (letrec*
                         ((x8147
                           (letrec*
                            ((x8148
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x8148)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x8147)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x8146)))))
                   g8145)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8151
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x8151))))
                    (g8150
                     (letrec*
                      ((x-cnd8152
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8152
                        #f
                        (letrec*
                         ((x-cnd8153
                           (letrec*
                            ((x8154
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x8154 k)))))
                         (if x-cnd8153
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8155
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x8155)))))))))
                   g8150)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g8156
                     (letrec*
                      ((x8157
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x8157)))))
                   g8156)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x8160
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x8160))))
                    (g8159
                     (letrec*
                      ((x-cnd8161
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8161
                        ""
                        (letrec*
                         ((x8164
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x8165))))
                          (x8162
                           (letrec*
                            ((x8163
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x8163)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x8164 x8162)))))))
                   g8159)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x8169
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x8169))))
                    (g8167
                     (letrec*
                      ((x8170
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x8170))))
                    (g8168
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8171
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8171))))
                   g8168)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8172
                     (letrec*
                      ((x8173
                        (letrec*
                         ((x8174
                           (letrec*
                            ((x8175
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x8175)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x8174)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x8173)))))
                   g8172)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((x8179
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x8179))))
                    (g8177
                     (letrec*
                      ((x8180
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x8180))))
                    (g8178
                     (letrec*
                      ((x-cnd8181
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8181
                        x
                        (letrec*
                         ((x8183
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x8182
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x8183 x8182)))))))
                   g8178)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8184
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g8184)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8185
                     (letrec*
                      ((x-cnd8186
                        (letrec*
                         ((x8187 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x8187)))))
                      (if x-cnd8186
                        (letrec*
                         ((x8188 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x8188)))
                        #f))))
                   g8185)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g8189
                     (letrec*
                      ((x8191
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x8191))))
                    (g8190
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g8192
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g8193 (if val7517 val7517 #f)))
                             g8193)))))
                       g8192))))
                   g8190)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x8195
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x8195 9)))))
                      (letrec*
                       ((g8196
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x8197
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x8197 10)))))
                            (letrec*
                             ((g8198
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x8199
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x8199 32))))))
                             g8198)))))
                       g8196))))
                   g8194)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8200
                     (letrec*
                      ((x8201
                        (letrec*
                         ((x8202
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x8202)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x8201)))))
                   g8200)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8203
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x8205))))
                    (g8204
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g8204)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8206 #f)) g8206)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8207
                     (letrec*
                      ((x8208
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x8208)))))
                   g8207)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8209
                     (letrec*
                      ((x8211
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x8211))))
                    (g8210
                     (letrec*
                      ((x-cnd8212
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8212
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g8210)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8213
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8214
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd8215
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8215
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8216
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd8217
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8217
                                       (letrec*
                                        ((x-cnd8218
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8218
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8219
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd8220
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8220
                                             (letrec*
                                              ((x-cnd8221
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8221
                                                (letrec*
                                                 ((x-cnd8222
                                                   (letrec*
                                                    ((x8224
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8223
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x8224 x8223)))))
                                                 (if x-cnd8222
                                                   (letrec*
                                                    ((x8226
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8225
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x8226 x8225)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8227
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd8228
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8228
                                                (letrec*
                                                 ((x-cnd8229
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8229
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8230
                                                       (letrec*
                                                        ((x-cnd8231
                                                          (letrec*
                                                           ((x8232
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  743
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 745 60))
                                                             (display "\n")
                                                             (= x8232 n)))))
                                                        (if x-cnd8231
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8233
                                                                  (letrec*
                                                                   ((val7524
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          754
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8234
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd8235
                                                                           (letrec*
                                                                            ((x8237
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   763
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8236
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   767
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 770
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8237
                                                                               x8236)))))
                                                                         (if x-cnd8235
                                                                           (letrec*
                                                                            ((x8238
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   776
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 779
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8238)))
                                                                           #f)))))
                                                                    g8234))))
                                                                g8233))))
                                                           (letrec*
                                                            ((g8239
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8239))
                                                          #f))))
                                                     g8230))
                                                   #f))
                                                #f)))))
                                         g8227)))))
                                   g8219)))))
                             g8216)))))
                       g8214))))
                   g8213)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((x8241
                        (letrec*
                         ((x8242
                           (letrec*
                            ((x8243
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x8243)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x8242)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x8241)))))
                   g8240)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8244
                     (letrec*
                      ((x8245
                        (letrec*
                         ((x8246
                           (letrec*
                            ((x8247
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x8247)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x8246)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x8245)))))
                   g8244)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8248
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g8248)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g8249
                     (letrec*
                      ((x8251
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x8251))))
                    (g8250
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g8252
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g8253 (if val7526 val7526 #f)))
                             g8253)))))
                       g8252))))
                   g8250)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x8257
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x8257))))
                    (g8255
                     (letrec*
                      ((x8258
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x8258))))
                    (g8256
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 846 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 847 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8259
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8260 res))
                       g8260))))
                   g8256)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8261
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g8261)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8262
                     (letrec*
                      ((x8265
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x8265))))
                    (g8263
                     (letrec*
                      ((x8266
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x8266))))
                    (g8264
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8267
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8267))))
                   g8264)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8268
                     (letrec*
                      ((x8269
                        (letrec*
                         ((x8270
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x8270)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x8269)))))
                   g8268)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8271
                     (letrec*
                      ((x8272
                        (letrec*
                         ((x8273
                           (letrec*
                            ((x8274
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x8274)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x8273)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x8272)))))
                   g8271)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8275
                     (letrec*
                      ((x8276
                        (letrec*
                         ((x8277
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x8277)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x8276)))))
                   g8275)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8278
                     (letrec*
                      ((x8279
                        (letrec*
                         ((x8280
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x8280)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x8279)))))
                   g8278)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8281
                     (letrec*
                      ((x8284
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x8284))))
                    (g8282
                     (letrec*
                      ((x8285
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x8285))))
                    (g8283
                     (letrec*
                      ((x8286
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x8286)))))
                   g8283)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8287
                     (letrec*
                      ((x8288
                        (letrec*
                         ((x8289
                           (letrec*
                            ((x8290
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x8290)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x8289)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x8288)))))
                   g8287)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8291
                     (letrec*
                      ((x8293
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x8293))))
                    (g8292
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g8292)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8294
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g8294)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8296
                        (letrec*
                         ((x8297
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x8297)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x8296)))))
                   g8295)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8298
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g8298)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8299
                     (letrec*
                      ((x8301
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x8301))))
                    (g8300
                     (letrec*
                      ((x-cnd8302
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8302
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x8305
                           (letrec*
                            ((x8306
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x8306))))
                          (x8303
                           (letrec*
                            ((x8304
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x8304)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x8305 x8303)))))))
                   g8300)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8307
                     (letrec*
                      ((x8308
                        (letrec*
                         ((x8309
                           (letrec*
                            ((x8310
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x8310)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x8309)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x8308)))))
                   g8307)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8311
                     (letrec*
                      ((x8312
                        (letrec*
                         ((x8313
                           (letrec*
                            ((x8314
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x8314)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x8313)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x8312)))))
                   g8311)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8315
                     (letrec*
                      ((x8317
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x8317))))
                    (g8316
                     (letrec*
                      ((x8318
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x8318)))))
                   g8316)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8319
                     (letrec*
                      ((x8320
                        (letrec*
                         ((x8321
                           (letrec*
                            ((x8322
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x8322)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x8321)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x8320)))))
                   g8319)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8323
                     (letrec*
                      ((x8326
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x8326))))
                    (g8324
                     (letrec*
                      ((x8327
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x8327))))
                    (g8325
                     (letrec*
                      ((x-cnd8328
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8328
                        (letrec*
                         ((g8329
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g8329)
                        (letrec*
                         ((x-cnd8330
                           (letrec*
                            ((x8331
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x8331)))))
                         (if x-cnd8330
                           (letrec*
                            ((g8332
                              (letrec*
                               ((x8333
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x8333)))))
                            g8332)
                           (letrec*
                            ((x-cnd8334
                              (letrec*
                               ((x8335
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x8335)))))
                            (if x-cnd8334
                              (letrec*
                               ((g8336
                                 (letrec*
                                  ((x8338
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x8337
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x8338 x8337)))))
                               g8336)
                              (letrec*
                               ((x-cnd8339
                                 (letrec*
                                  ((x8340
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x8340)))))
                               (if x-cnd8339
                                 (letrec*
                                  ((g8341
                                    (letrec*
                                     ((x8344
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x8343
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8342
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x8344 x8343 x8342)))))
                                  g8341)
                                 (letrec*
                                  ((x-cnd8345
                                    (letrec*
                                     ((x8346
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x8346)))))
                                  (if x-cnd8345
                                    (letrec*
                                     ((g8347
                                       (letrec*
                                        ((x8351
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x8350
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8349
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8348
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x8351 x8350 x8349 x8348)))))
                                     g8347)
                                    (letrec*
                                     ((x-cnd8352
                                       (letrec*
                                        ((x8353
                                          (letrec*
                                           ((x8354
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x8354)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x8353)))))
                                     (if x-cnd8352
                                       (letrec*
                                        ((g8355
                                          (letrec*
                                           ((x8361
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8360
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8359
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8358
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8356
                                             (letrec*
                                              ((x8357
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8357)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8361
                                              x8360
                                              x8359
                                              x8358
                                              x8356)))))
                                        g8355)
                                       (letrec*
                                        ((x-cnd8362
                                          (letrec*
                                           ((x8363
                                             (letrec*
                                              ((x8364
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8364)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8363)))))
                                        (if x-cnd8362
                                          (letrec*
                                           ((g8365
                                             (letrec*
                                              ((x8373
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8372
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8371
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8370
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8368
                                                (letrec*
                                                 ((x8369
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8369))))
                                               (x8366
                                                (letrec*
                                                 ((x8367
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8367)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8373
                                                 x8372
                                                 x8371
                                                 x8370
                                                 x8368
                                                 x8366)))))
                                           g8365)
                                          (letrec*
                                           ((x-cnd8374
                                             (letrec*
                                              ((x8375
                                                (letrec*
                                                 ((x8376
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8376)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8375)))))
                                           (if x-cnd8374
                                             (letrec*
                                              ((g8377
                                                (letrec*
                                                 ((x8387
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8386
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8385
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8384
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8382
                                                   (letrec*
                                                    ((x8383
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8383))))
                                                  (x8380
                                                   (letrec*
                                                    ((x8381
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8381))))
                                                  (x8378
                                                   (letrec*
                                                    ((x8379
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8379)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8387
                                                    x8386
                                                    x8385
                                                    x8384
                                                    x8382
                                                    x8380
                                                    x8378)))))
                                              g8377)
                                             (letrec*
                                              ((g8388
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8388)))))))))))))))))))
                   g8325)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8389
                     (letrec*
                      ((x8391
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8391))))
                    (g8390
                     (letrec*
                      ((x-cnd8392
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8392
                        #f
                        (letrec*
                         ((x-cnd8393
                           (letrec*
                            ((x8394
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8394 e)))))
                         (if x-cnd8393
                           l
                           (letrec*
                            ((x8395
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8395)))))))))
                   g8390)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((x8397
                        (letrec*
                         ((x8398
                           (letrec*
                            ((x8399
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8399)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8398)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8397)))))
                   g8396)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8400
                     (letrec*
                      ((x8401
                        (letrec*
                         ((x8402
                           (letrec*
                            ((x8403
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8403)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8402)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8401)))))
                   g8400)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8404
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8404)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8405
                     (letrec*
                      ((x8407
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8407))))
                    (g8406
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8406)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8408
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8409
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8409))))
                   g8408)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8410
                     (letrec*
                      ((x8411
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8411)))))
                   g8410)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8412
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8413
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8413
                           (letrec*
                            ((x8414
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8414)))
                           #f))))
                      (letrec*
                       ((g8415
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8415))))
                   g8412)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8416
                     (letrec*
                      ((x8417
                        (letrec*
                         ((x8418
                           (letrec*
                            ((x8419
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8419)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8418)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8417)))))
                   g8416)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8420
                     (letrec*
                      ((x-cnd8421
                        (letrec*
                         ((x8422 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8422 c)))))
                      (if x-cnd8421
                        (letrec*
                         ((x8423 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8423)))
                        #f))))
                   g8420)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8424
                     (letrec*
                      ((x8426
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8426))))
                    (g8425
                     (letrec*
                      ((x-cnd8427
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8427
                        #f
                        (letrec*
                         ((x-cnd8428
                           (letrec*
                            ((x8429
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8429 k)))))
                         (if x-cnd8428
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8430
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8430)))))))))
                   g8425)))
               (not (lambda (x) (letrec* ((g8431 (if x #f #t))) g8431)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8432
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8432)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8433
                     (letrec*
                      ((x8435
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8435))))
                    (g8434
                     (letrec*
                      ((x-cnd8436
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8436
                        #f
                        (letrec*
                         ((x-cnd8437
                           (letrec*
                            ((x8438
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8438 e)))))
                         (if x-cnd8437
                           l
                           (letrec*
                            ((x8439
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8439)))))))))
                   g8434)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8440
                     (letrec*
                      ((x8441
                        (letrec*
                         ((x8442
                           (letrec*
                            ((x8443
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8443)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8442)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8441)))))
                   g8440)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8444
                     (letrec*
                      ((x8446
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8446))))
                    (g8445
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8447
                             (letrec*
                              ((x-cnd8448
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8448
                                0
                                (letrec*
                                 ((x8449
                                   (letrec*
                                    ((x8450
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8450)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8449)))))))
                           g8447))))
                      (letrec*
                       ((g8451
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8451))))
                   g8445)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8452
                     (letrec*
                      ((x8455
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8455))))
                    (g8453
                     (letrec*
                      ((x8456
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8456))))
                    (g8454
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8457
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8457))))
                   g8454)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8458
                     (letrec*
                      ((x8459
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8459)))))
                   g8458)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8460
                     (letrec*
                      ((x8461
                        (letrec*
                         ((x8462
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8462)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8461)))))
                   g8460)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8463
                     (letrec*
                      ((x8465
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8465))))
                    (g8464
                     (letrec*
                      ((x-cnd8466
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8466
                        #f
                        (letrec*
                         ((x-cnd8467
                           (letrec*
                            ((x8468
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8468 k)))))
                         (if x-cnd8467
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8469
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8469)))))))))
                   g8464)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8470
                     (letrec*
                      ((x8471
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8471)))))
                   g8470)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8472
                     (letrec*
                      ((x8475
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8475))))
                    (g8473
                     (letrec*
                      ((x8476
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8476))))
                    (g8474
                     (letrec*
                      ((x8477
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8477)))))
                   g8474)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8478
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8479
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8479))))
                   g8478)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8480
                     (letrec*
                      ((x8483
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8483))))
                    (g8481
                     (letrec*
                      ((x8484
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8484))))
                    (g8482
                     (letrec*
                      ((x-cnd8485
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8485
                        #t
                        (letrec*
                         ((x-cnd8486
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8486
                           (letrec*
                            ((g8487
                              (letrec*
                               ((x8489
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8489))))
                             (g8488
                              (letrec*
                               ((x8490
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8490)))))
                            g8488)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8482)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8491
                     (letrec*
                      ((x8493
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8493))))
                    (g8492
                     (letrec*
                      ((x-cnd8494
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8494
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8492)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8495
                     (letrec*
                      ((x8498
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8498))))
                    (g8496
                     (letrec*
                      ((x8499
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8499))))
                    (g8497
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8500
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8500))))
                   g8497)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8501
                     (letrec*
                      ((x8502
                        (letrec*
                         ((x8503
                           (letrec*
                            ((x8504
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8504)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8503)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8502)))))
                   g8501)))
               (newline (lambda () (letrec* ((g8505 #f)) g8505)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8506
                     (letrec*
                      ((x8508
                        (letrec*
                         ((x8509
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8509))))
                       (x8507
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8508 x8507)))))
                   g8506)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8510
                     (letrec*
                      ((x8512
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8512))))
                    (g8511
                     (letrec*
                      ((x8513
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8513)))))
                   g8511)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8514
                     (letrec*
                      ((x8518
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8518))))
                    (g8515
                     (letrec*
                      ((x8519
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8519))))
                    (g8516
                     (letrec*
                      ((x8520
                        (letrec*
                         ((x8521
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8521)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8520))))
                    (g8517
                     (letrec*
                      ((x-cnd8522
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8522
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8524
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8523
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8524 x8523)))))))
                   g8517)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8525
                     (letrec*
                      ((x-cnd8526
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8526
                        a
                        (letrec*
                         ((x8527
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8527)))))))
                   g8525)))
               (block
                (lambda (x7973 y7974 color7975)
                  (letrec*
                   ((g8528
                     (letrec*
                      ((x8529
                        (letrec*
                         ((x8530
                           (letrec*
                            ((x8531
                              (begin
                                (write '(funapp 1480 37))
                                (display "\n")
                                (orig-cons
                                 color7975
                                 (begin
                                   (write '(funapp 1480 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1481 29))
                              (display "\n")
                              (orig-cons y7974 x8531)))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (orig-cons x7973 x8530)))))
                      (begin
                        (write '(funapp 1483 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1483 33))
                           (display "\n")
                           'block)
                         x8529)))))
                   g8528)))
               (block?
                (lambda (block7972)
                  (letrec*
                   ((g8532
                     (letrec*
                      ((x8533
                        (begin
                          (write '(funapp 1489 39))
                          (display "\n")
                          (car block7972))))
                      (begin
                        (write '(funapp 1489 57))
                        (display "\n")
                        (eq?
                         x8533
                         (begin
                           (write '(funapp 1489 67))
                           (display "\n")
                           'block))))))
                   g8532)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8534
                     (letrec*
                      ((x8535
                        (begin
                          (write '(funapp 1495 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1495 58))
                        (display "\n")
                        (orig-car x8535)))))
                   g8534)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8536
                     (letrec*
                      ((x8537
                        (letrec*
                         ((x8538
                           (begin
                             (write '(funapp 1503 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1503 61))
                           (display "\n")
                           (orig-cdr x8538)))))
                      (begin
                        (write '(funapp 1504 23))
                        (display "\n")
                        (orig-car x8537)))))
                   g8536)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8539
                     (letrec*
                      ((x8540
                        (letrec*
                         ((x8541
                           (letrec*
                            ((x8542
                              (begin
                                (write '(funapp 1515 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1516 29))
                              (display "\n")
                              (orig-cdr x8542)))))
                         (begin
                           (write '(funapp 1517 26))
                           (display "\n")
                           (orig-cdr x8541)))))
                      (begin
                        (write '(funapp 1518 23))
                        (display "\n")
                        (orig-car x8540)))))
                   g8539)))
               (tetra
                (lambda (center7980 blocks7981)
                  (letrec*
                   ((g8543
                     (letrec*
                      ((x8544
                        (letrec*
                         ((x8545
                           (begin
                             (write '(funapp 1527 34))
                             (display "\n")
                             (orig-cons
                              blocks7981
                              (begin
                                (write '(funapp 1527 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1528 26))
                           (display "\n")
                           (orig-cons center7980 x8545)))))
                      (begin
                        (write '(funapp 1529 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1529 33))
                           (display "\n")
                           'tetra)
                         x8544)))))
                   g8543)))
               (tetra?
                (lambda (tetra7979)
                  (letrec*
                   ((g8546
                     (letrec*
                      ((x8547
                        (begin
                          (write '(funapp 1535 39))
                          (display "\n")
                          (car tetra7979))))
                      (begin
                        (write '(funapp 1535 57))
                        (display "\n")
                        (eq?
                         x8547
                         (begin
                           (write '(funapp 1535 67))
                           (display "\n")
                           'tetra))))))
                   g8546)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8548
                     (letrec*
                      ((x8549
                        (begin
                          (write '(funapp 1541 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1541 58))
                        (display "\n")
                        (orig-car x8549)))))
                   g8548)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8550
                     (letrec*
                      ((x8551
                        (letrec*
                         ((x8552
                           (begin
                             (write '(funapp 1549 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1549 61))
                           (display "\n")
                           (orig-cdr x8552)))))
                      (begin
                        (write '(funapp 1550 23))
                        (display "\n")
                        (orig-car x8551)))))
                   g8550)))
               (world
                (lambda (tetra7985 blocks7986)
                  (letrec*
                   ((g8553
                     (letrec*
                      ((x8554
                        (letrec*
                         ((x8555
                           (begin
                             (write '(funapp 1559 34))
                             (display "\n")
                             (orig-cons
                              blocks7986
                              (begin
                                (write '(funapp 1559 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1560 26))
                           (display "\n")
                           (orig-cons tetra7985 x8555)))))
                      (begin
                        (write '(funapp 1561 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1561 33))
                           (display "\n")
                           'world)
                         x8554)))))
                   g8553)))
               (world?
                (lambda (world7984)
                  (letrec*
                   ((g8556
                     (letrec*
                      ((x8557
                        (begin
                          (write '(funapp 1567 39))
                          (display "\n")
                          (car world7984))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (eq?
                         x8557
                         (begin
                           (write '(funapp 1567 67))
                           (display "\n")
                           'world))))))
                   g8556)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8558
                     (letrec*
                      ((x8559
                        (begin
                          (write '(funapp 1573 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1573 58))
                        (display "\n")
                        (orig-car x8559)))))
                   g8558)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8560
                     (letrec*
                      ((x8561
                        (letrec*
                         ((x8562
                           (begin
                             (write '(funapp 1581 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1581 61))
                           (display "\n")
                           (orig-cdr x8562)))))
                      (begin
                        (write '(funapp 1582 23))
                        (display "\n")
                        (orig-car x8561)))))
                   g8560)))
               (posn
                (lambda (x7990 y7991)
                  (letrec*
                   ((g8563
                     (letrec*
                      ((x8564
                        (letrec*
                         ((x8565
                           (begin
                             (write '(funapp 1591 34))
                             (display "\n")
                             (orig-cons
                              y7991
                              (begin
                                (write '(funapp 1591 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1592 26))
                           (display "\n")
                           (orig-cons x7990 x8565)))))
                      (begin
                        (write '(funapp 1593 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1593 33)) (display "\n") 'posn)
                         x8564)))))
                   g8563)))
               (posn?
                (lambda (posn7989)
                  (letrec*
                   ((g8566
                     (letrec*
                      ((x8567
                        (begin
                          (write '(funapp 1599 39))
                          (display "\n")
                          (car posn7989))))
                      (begin
                        (write '(funapp 1599 56))
                        (display "\n")
                        (eq?
                         x8567
                         (begin
                           (write '(funapp 1599 66))
                           (display "\n")
                           'posn))))))
                   g8566)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8568
                     (letrec*
                      ((x8569
                        (begin
                          (write '(funapp 1605 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1605 57))
                        (display "\n")
                        (orig-car x8569)))))
                   g8568)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8570
                     (letrec*
                      ((x8571
                        (letrec*
                         ((x8572
                           (begin
                             (write '(funapp 1613 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1613 60))
                           (display "\n")
                           (orig-cdr x8572)))))
                      (begin
                        (write '(funapp 1614 23))
                        (display "\n")
                        (orig-car x8571)))))
                   g8570)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7625 k7626 v7624)
                  (letrec*
                   ((g8573
                     (letrec*
                      ((checked7627
                        (letrec*
                         ((x8574
                           (letrec*
                            ((x8575
                              (begin
                                (write '(funapp 1626 37))
                                (display "\n")
                                (orig-cdr v7624))))
                            (begin
                              (write '(funapp 1627 29))
                              (display "\n")
                              (orig-car x8575)))))
                         (begin
                           (write '(funapp 1628 26))
                           (display "\n")
                           (real?/c j7625 k7626 x8574)))))
                      (letrec*
                       ((g8576
                         (letrec*
                          ((checked7628
                            (letrec*
                             ((x8577
                               (letrec*
                                ((x8578
                                  (letrec*
                                   ((x8579
                                     (begin
                                       (write '(funapp 1638 44))
                                       (display "\n")
                                       (orig-cdr v7624))))
                                   (begin
                                     (write '(funapp 1639 36))
                                     (display "\n")
                                     (orig-cdr x8579)))))
                                (begin
                                  (write '(funapp 1640 33))
                                  (display "\n")
                                  (orig-car x8578)))))
                             (begin
                               (write '(funapp 1641 30))
                               (display "\n")
                               (real?/c j7625 k7626 x8577)))))
                          (letrec*
                           ((g8580
                             (letrec*
                              ((x8581
                                (letrec*
                                 ((x8582
                                   (begin
                                     (write '(funapp 1647 42))
                                     (display "\n")
                                     (cons
                                      checked7628
                                      (begin
                                        (write '(funapp 1647 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1648 34))
                                   (display "\n")
                                   (cons checked7627 x8582)))))
                              (begin
                                (write '(funapp 1649 31))
                                (display "\n")
                                (cons posn x8581)))))
                           g8580))))
                       g8576))))
                   g8573)))
               (BLOCK/C
                (lambda (j7631 k7632 v7630)
                  (letrec*
                   ((g8583
                     (letrec*
                      ((checked7633
                        (letrec*
                         ((x8584
                           (letrec*
                            ((x8585
                              (begin
                                (write '(funapp 1662 37))
                                (display "\n")
                                (orig-cdr v7630))))
                            (begin
                              (write '(funapp 1663 29))
                              (display "\n")
                              (orig-car x8585)))))
                         (begin
                           (write '(funapp 1664 26))
                           (display "\n")
                           (real?/c j7631 k7632 x8584)))))
                      (letrec*
                       ((g8586
                         (letrec*
                          ((checked7634
                            (letrec*
                             ((x8587
                               (letrec*
                                ((x8588
                                  (letrec*
                                   ((x8589
                                     (begin
                                       (write '(funapp 1674 44))
                                       (display "\n")
                                       (orig-cdr v7630))))
                                   (begin
                                     (write '(funapp 1675 36))
                                     (display "\n")
                                     (orig-cdr x8589)))))
                                (begin
                                  (write '(funapp 1676 33))
                                  (display "\n")
                                  (orig-car x8588)))))
                             (begin
                               (write '(funapp 1677 30))
                               (display "\n")
                               (real?/c j7631 k7632 x8587)))))
                          (letrec*
                           ((g8590
                             (letrec*
                              ((checked7635
                                (letrec*
                                 ((x8591
                                   (letrec*
                                    ((x8592
                                      (letrec*
                                       ((x8593
                                         (letrec*
                                          ((x8594
                                            (begin
                                              (write '(funapp 1689 51))
                                              (display "\n")
                                              (orig-cdr v7630))))
                                          (begin
                                            (write '(funapp 1690 43))
                                            (display "\n")
                                            (orig-cdr x8594)))))
                                       (begin
                                         (write '(funapp 1691 40))
                                         (display "\n")
                                         (orig-cdr x8593)))))
                                    (begin
                                      (write '(funapp 1692 37))
                                      (display "\n")
                                      (orig-car x8592)))))
                                 (begin
                                   (write '(funapp 1693 34))
                                   (display "\n")
                                   (COLOR/C j7631 k7632 x8591)))))
                              (letrec*
                               ((g8595
                                 (letrec*
                                  ((x8596
                                    (letrec*
                                     ((x8597
                                       (letrec*
                                        ((x8598
                                          (begin
                                            (write '(funapp 1701 49))
                                            (display "\n")
                                            (cons
                                             checked7635
                                             (begin
                                               (write '(funapp 1701 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1702 41))
                                          (display "\n")
                                          (cons checked7634 x8598)))))
                                     (begin
                                       (write '(funapp 1703 38))
                                       (display "\n")
                                       (cons checked7633 x8597)))))
                                  (begin
                                    (write '(funapp 1704 35))
                                    (display "\n")
                                    (cons block x8596)))))
                               g8595))))
                           g8590))))
                       g8586))))
                   g8583)))
               (BSET/C
                (begin
                  (write '(funapp 1709 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7638 k7639 v7637)
                  (letrec*
                   ((g8599
                     (letrec*
                      ((checked7640
                        (letrec*
                         ((x8600
                           (letrec*
                            ((x8601
                              (begin
                                (write '(funapp 1719 37))
                                (display "\n")
                                (orig-cdr v7637))))
                            (begin
                              (write '(funapp 1720 29))
                              (display "\n")
                              (orig-car x8601)))))
                         (begin
                           (write '(funapp 1721 26))
                           (display "\n")
                           (POSN/C j7638 k7639 x8600)))))
                      (letrec*
                       ((g8602
                         (letrec*
                          ((checked7641
                            (letrec*
                             ((x8603
                               (letrec*
                                ((x8604
                                  (letrec*
                                   ((x8605
                                     (begin
                                       (write '(funapp 1731 44))
                                       (display "\n")
                                       (orig-cdr v7637))))
                                   (begin
                                     (write '(funapp 1732 36))
                                     (display "\n")
                                     (orig-cdr x8605)))))
                                (begin
                                  (write '(funapp 1733 33))
                                  (display "\n")
                                  (orig-car x8604)))))
                             (begin
                               (write '(funapp 1734 30))
                               (display "\n")
                               (BSET/C j7638 k7639 x8603)))))
                          (letrec*
                           ((g8606
                             (letrec*
                              ((x8607
                                (letrec*
                                 ((x8608
                                   (begin
                                     (write '(funapp 1740 42))
                                     (display "\n")
                                     (cons
                                      checked7641
                                      (begin
                                        (write '(funapp 1740 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1741 34))
                                   (display "\n")
                                   (cons checked7640 x8608)))))
                              (begin
                                (write '(funapp 1742 31))
                                (display "\n")
                                (cons tetra x8607)))))
                           g8606))))
                       g8602))))
                   g8599)))
               (WORLD/C
                (lambda (j7644 k7645 v7643)
                  (letrec*
                   ((g8609
                     (letrec*
                      ((checked7646
                        (letrec*
                         ((x8610
                           (letrec*
                            ((x8611
                              (begin
                                (write '(funapp 1755 37))
                                (display "\n")
                                (orig-cdr v7643))))
                            (begin
                              (write '(funapp 1756 29))
                              (display "\n")
                              (orig-car x8611)))))
                         (begin
                           (write '(funapp 1757 26))
                           (display "\n")
                           (TETRA/C j7644 k7645 x8610)))))
                      (letrec*
                       ((g8612
                         (letrec*
                          ((checked7647
                            (letrec*
                             ((x8613
                               (letrec*
                                ((x8614
                                  (letrec*
                                   ((x8615
                                     (begin
                                       (write '(funapp 1767 44))
                                       (display "\n")
                                       (orig-cdr v7643))))
                                   (begin
                                     (write '(funapp 1768 36))
                                     (display "\n")
                                     (orig-cdr x8615)))))
                                (begin
                                  (write '(funapp 1769 33))
                                  (display "\n")
                                  (orig-car x8614)))))
                             (begin
                               (write '(funapp 1770 30))
                               (display "\n")
                               (BSET/C j7644 k7645 x8613)))))
                          (letrec*
                           ((g8616
                             (letrec*
                              ((x8617
                                (letrec*
                                 ((x8618
                                   (begin
                                     (write '(funapp 1776 42))
                                     (display "\n")
                                     (cons
                                      checked7647
                                      (begin
                                        (write '(funapp 1776 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1777 34))
                                   (display "\n")
                                   (cons checked7646 x8618)))))
                              (begin
                                (write '(funapp 1778 31))
                                (display "\n")
                                (cons world x8617)))))
                           g8616))))
                       g8612))))
                   g8609)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8619
                     (letrec*
                      ((x-cnd8620
                        (letrec*
                         ((x8622
                           (begin
                             (write '(funapp 1789 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8621
                           (begin
                             (write '(funapp 1789 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1790 26))
                           (display "\n")
                           (= x8622 x8621)))))
                      (if x-cnd8620
                        (letrec*
                         ((x8624
                           (begin
                             (write '(funapp 1793 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8623
                           (begin
                             (write '(funapp 1793 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1794 26))
                           (display "\n")
                           (= x8624 x8623)))
                        #f))))
                   g8619)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8625
                     (letrec*
                      ((x-cnd8626
                        (letrec*
                         ((x8628
                           (begin
                             (write '(funapp 1807 34))
                             (display "\n")
                             (block-x b1)))
                          (x8627
                           (begin
                             (write '(funapp 1807 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1808 26))
                           (display "\n")
                           (= x8628 x8627)))))
                      (if x-cnd8626
                        (letrec*
                         ((x8630
                           (begin
                             (write '(funapp 1811 34))
                             (display "\n")
                             (block-y b1)))
                          (x8629
                           (begin
                             (write '(funapp 1811 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1812 26))
                           (display "\n")
                           (= x8630 x8629)))
                        #f))))
                   g8625)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8631
                     (letrec*
                      ((x8635
                        (letrec*
                         ((x8636
                           (begin
                             (write '(funapp 1820 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1820 62))
                           (display "\n")
                           (+ dx x8636))))
                       (x8633
                        (letrec*
                         ((x8634
                           (begin
                             (write '(funapp 1821 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1821 62))
                           (display "\n")
                           (+ dy x8634))))
                       (x8632
                        (begin
                          (write '(funapp 1822 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1823 23))
                        (display "\n")
                        (block x8635 x8633 x8632)))))
                   g8631)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8637
                     (letrec*
                      ((x8644
                        (letrec*
                         ((x8648
                           (begin
                             (write '(funapp 1832 34))
                             (display "\n")
                             (posn-x c)))
                          (x8645
                           (letrec*
                            ((x8647
                              (begin
                                (write '(funapp 1835 37))
                                (display "\n")
                                (posn-y c)))
                             (x8646
                              (begin
                                (write '(funapp 1835 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1836 29))
                              (display "\n")
                              (- x8647 x8646)))))
                         (begin
                           (write '(funapp 1837 26))
                           (display "\n")
                           (+ x8648 x8645))))
                       (x8639
                        (letrec*
                         ((x8643
                           (begin
                             (write '(funapp 1840 34))
                             (display "\n")
                             (posn-y c)))
                          (x8640
                           (letrec*
                            ((x8642
                              (begin
                                (write '(funapp 1843 37))
                                (display "\n")
                                (block-x b)))
                             (x8641
                              (begin
                                (write '(funapp 1843 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1844 29))
                              (display "\n")
                              (- x8642 x8641)))))
                         (begin
                           (write '(funapp 1845 26))
                           (display "\n")
                           (+ x8643 x8640))))
                       (x8638
                        (begin
                          (write '(funapp 1846 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1847 23))
                        (display "\n")
                        (block x8644 x8639 x8638)))))
                   g8637)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8649
                     (letrec*
                      ((x8650
                        (letrec*
                         ((x8651
                           (begin
                             (write '(funapp 1856 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1857 26))
                           (display "\n")
                           (block-rotate-ccw c x8651)))))
                      (begin
                        (write '(funapp 1858 23))
                        (display "\n")
                        (block-rotate-ccw c x8650)))))
                   g8649)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8652
                     (letrec*
                      ((x-cnd8653
                        (begin
                          (write '(funapp 1865 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8653
                        (letrec* ((g8654 #f)) g8654)
                        (letrec*
                         ((g8655
                           (letrec*
                            ((x8658
                              (letrec*
                               ((x8659
                                 (begin
                                   (write '(funapp 1871 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1871 65))
                                 (display "\n")
                                 (p? x8659))))
                             (x8656
                              (letrec*
                               ((x8657
                                 (begin
                                   (write '(funapp 1873 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1873 59))
                                 (display "\n")
                                 (ormap p? x8657)))))
                            (begin
                              (write '(funapp 1874 29))
                              (display "\n")
                              (or x8658 x8656)))))
                         g8655)))))
                   g8652)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8660
                     (letrec*
                      ((x-cnd8661
                        (begin
                          (write '(funapp 1882 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8661
                        (letrec* ((g8662 #t)) g8662)
                        (letrec*
                         ((g8663
                           (letrec*
                            ((x8666
                              (letrec*
                               ((x8667
                                 (begin
                                   (write '(funapp 1888 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1888 65))
                                 (display "\n")
                                 (p? x8667))))
                             (x8664
                              (letrec*
                               ((x8665
                                 (begin
                                   (write '(funapp 1890 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1890 59))
                                 (display "\n")
                                 (andmap p? x8665)))))
                            (begin
                              (write '(funapp 1891 29))
                              (display "\n")
                              (and x8666 x8664)))))
                         g8663)))))
                   g8660)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8668
                     (letrec*
                      ((x-cnd8669
                        (begin
                          (write '(funapp 1899 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8669
                        (letrec* ((g8670 null)) g8670)
                        (letrec*
                         ((x-cnd8671
                           (letrec*
                            ((x8672
                              (begin
                                (write '(funapp 1903 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1903 66))
                              (display "\n")
                              (p? x8672)))))
                         (if x-cnd8671
                           (letrec*
                            ((g8673
                              (letrec*
                               ((x8676
                                 (begin
                                   (write '(funapp 1908 40))
                                   (display "\n")
                                   (car xs)))
                                (x8674
                                 (letrec*
                                  ((x8675
                                    (begin
                                      (write '(funapp 1911 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1912 35))
                                    (display "\n")
                                    (filter p? x8675)))))
                               (begin
                                 (write '(funapp 1913 32))
                                 (display "\n")
                                 (cons x8676 x8674)))))
                            g8673)
                           (letrec*
                            ((g8677
                              (letrec*
                               ((x8678
                                 (begin
                                   (write '(funapp 1917 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1917 59))
                                 (display "\n")
                                 (filter p? x8678)))))
                            g8677)))))))
                   g8668)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8679
                     (letrec*
                      ((x-cnd8680
                        (begin
                          (write '(funapp 1925 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8680
                        (letrec* ((g8681 r)) g8681)
                        (letrec*
                         ((g8682
                           (letrec*
                            ((x8685
                              (begin
                                (write '(funapp 1931 37))
                                (display "\n")
                                (car l)))
                             (x8683
                              (letrec*
                               ((x8684
                                 (begin
                                   (write '(funapp 1933 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1933 58))
                                 (display "\n")
                                 (append x8684 r)))))
                            (begin
                              (write '(funapp 1934 29))
                              (display "\n")
                              (cons x8685 x8683)))))
                         g8682)))))
                   g8679)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8686
                     (letrec*
                      ((x-cnd8687
                        (begin
                          (write '(funapp 1942 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8687
                        (letrec* ((g8688 a)) g8688)
                        (letrec*
                         ((g8689
                           (letrec*
                            ((x8692
                              (begin
                                (write '(funapp 1948 37))
                                (display "\n")
                                (car xs)))
                             (x8690
                              (letrec*
                               ((x8691
                                 (begin
                                   (write '(funapp 1950 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1950 59))
                                 (display "\n")
                                 (foldr f a x8691)))))
                            (begin
                              (write '(funapp 1951 29))
                              (display "\n")
                              (f x8692 x8690)))))
                         g8689)))))
                   g8686)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8693
                     (letrec*
                      ((x8694
                        (letrec*
                         ((x8696
                           (begin
                             (write '(funapp 1961 34))
                             (display "\n")
                             (c)))
                          (x8695
                           (begin
                             (write '(funapp 1961 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1962 26))
                           (display "\n")
                           (λ x8696 x8695)))))
                      (begin
                        (write '(funapp 1963 23))
                        (display "\n")
                        (ormap x8694 bs)))))
                   g8693)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8697
                     (letrec*
                      ((x8698
                        (letrec*
                         ((x8700
                           (begin
                             (write '(funapp 1972 34))
                             (display "\n")
                             (b)))
                          (x8699
                           (begin
                             (write '(funapp 1972 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1973 26))
                           (display "\n")
                           (λ x8700 x8699)))))
                      (begin
                        (write '(funapp 1974 23))
                        (display "\n")
                        (andmap x8698 bs1)))))
                   g8697)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8701
                     (letrec*
                      ((x-cnd8702
                        (begin
                          (write '(funapp 1981 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8702
                        (begin
                          (write '(funapp 1982 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8701)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8703
                     (letrec*
                      ((x8704
                        (letrec*
                         ((x8706
                           (begin
                             (write '(funapp 1991 34))
                             (display "\n")
                             (b)))
                          (x8705
                           (begin
                             (write '(funapp 1991 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1992 26))
                           (display "\n")
                           (λ x8706 x8705)))))
                      (begin
                        (write '(funapp 1993 23))
                        (display "\n")
                        (filter x8704 bs1)))))
                   g8703)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8707
                     (begin
                       (write '(funapp 1996 47))
                       (display "\n")
                       (length bs))))
                   g8707)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8708
                     (letrec*
                      ((x8709
                        (letrec*
                         ((x8711
                           (begin
                             (write '(funapp 2004 34))
                             (display "\n")
                             (b)))
                          (x8710
                           (begin
                             (write '(funapp 2004 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 2005 26))
                           (display "\n")
                           (λ x8711 x8710)))))
                      (begin
                        (write '(funapp 2006 23))
                        (display "\n")
                        (map x8709 bs)))))
                   g8708)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8712
                     (letrec*
                      ((x8713
                        (letrec*
                         ((x8715
                           (begin
                             (write '(funapp 2015 34))
                             (display "\n")
                             (b)))
                          (x8714
                           (begin
                             (write '(funapp 2015 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2016 26))
                           (display "\n")
                           (λ x8715 x8714)))))
                      (begin
                        (write '(funapp 2017 23))
                        (display "\n")
                        (map x8713 bs)))))
                   g8712)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8716
                     (letrec*
                      ((x8717
                        (letrec*
                         ((x8719
                           (begin
                             (write '(funapp 2026 34))
                             (display "\n")
                             (b)))
                          (x8718
                           (begin
                             (write '(funapp 2026 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 2027 26))
                           (display "\n")
                           (λ x8719 x8718)))))
                      (begin
                        (write '(funapp 2028 23))
                        (display "\n")
                        (map x8717 bs)))))
                   g8716)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8720
                     (letrec*
                      ((x8721
                        (letrec*
                         ((x8725
                           (begin
                             (write '(funapp 2037 34))
                             (display "\n")
                             (b)))
                          (x8722
                           (letrec*
                            ((x8724
                              (begin
                                (write '(funapp 2040 37))
                                (display "\n")
                                (block-x b)))
                             (x8723
                              (begin
                                (write '(funapp 2040 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2041 29))
                              (display "\n")
                              (block x8724 x8723 c)))))
                         (begin
                           (write '(funapp 2042 26))
                           (display "\n")
                           (λ x8725 x8722)))))
                      (begin
                        (write '(funapp 2043 23))
                        (display "\n")
                        (map x8721 bs)))))
                   g8720)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8726
                     (letrec*
                      ((x8727
                        (letrec*
                         ((x8730
                           (begin
                             (write '(funapp 2052 34))
                             (display "\n")
                             (b)))
                          (x8728
                           (letrec*
                            ((x8729
                              (begin
                                (write '(funapp 2053 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2053 65))
                              (display "\n")
                              (= i x8729)))))
                         (begin
                           (write '(funapp 2054 26))
                           (display "\n")
                           (λ x8730 x8728)))))
                      (begin
                        (write '(funapp 2055 23))
                        (display "\n")
                        (filter x8727 bs)))))
                   g8726)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8731
                     (letrec*
                      ((x8732
                        (letrec*
                         ((x8733
                           (begin
                             (write '(funapp 2064 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2065 26))
                           (display "\n")
                           (blocks-count x8733)))))
                      (begin
                        (write '(funapp 2066 23))
                        (display "\n")
                        (= board-width x8732)))))
                   g8731)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8734
                     (letrec*
                      ((x8735
                        (letrec*
                         ((x8738
                           (begin
                             (write '(funapp 2075 34))
                             (display "\n")
                             (b)))
                          (x8736
                           (letrec*
                            ((x8737
                              (begin
                                (write '(funapp 2076 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2076 65))
                              (display "\n")
                              (<= x8737 0)))))
                         (begin
                           (write '(funapp 2077 26))
                           (display "\n")
                           (λ x8738 x8736)))))
                      (begin
                        (write '(funapp 2078 23))
                        (display "\n")
                        (ormap x8735 bs)))))
                   g8734)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8739
                     (letrec*
                      ((x8740
                        (letrec*
                         ((x8745
                           (begin
                             (write '(funapp 2087 34))
                             (display "\n")
                             (b bs)))
                          (x8741
                           (letrec*
                            ((x-cnd8742
                              (begin
                                (write '(funapp 2090 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8742
                              (letrec* ((g8743 bs)) g8743)
                              (letrec*
                               ((g8744
                                 (begin
                                   (write '(funapp 2093 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8744)))))
                         (begin
                           (write '(funapp 2094 26))
                           (display "\n")
                           (λ x8745 x8741)))))
                      (begin
                        (write '(funapp 2095 23))
                        (display "\n")
                        (foldr x8740 bs2 bs1)))))
                   g8739)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8746
                     (letrec*
                      ((x8747
                        (letrec*
                         ((x8750
                           (begin
                             (write '(funapp 2104 34))
                             (display "\n")
                             (b n)))
                          (x8748
                           (letrec*
                            ((x8749
                              (begin
                                (write '(funapp 2106 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2106 59))
                              (display "\n")
                              (max x8749 n)))))
                         (begin
                           (write '(funapp 2107 26))
                           (display "\n")
                           (λ x8750 x8748)))))
                      (begin
                        (write '(funapp 2108 23))
                        (display "\n")
                        (foldr x8747 0 bs)))))
                   g8746)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8751
                     (letrec*
                      ((x8752
                        (letrec*
                         ((x8755
                           (begin
                             (write '(funapp 2117 34))
                             (display "\n")
                             (b n)))
                          (x8753
                           (letrec*
                            ((x8754
                              (begin
                                (write '(funapp 2119 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2119 59))
                              (display "\n")
                              (min x8754 n)))))
                         (begin
                           (write '(funapp 2120 26))
                           (display "\n")
                           (λ x8755 x8753)))))
                      (begin
                        (write '(funapp 2121 23))
                        (display "\n")
                        (foldr x8752 board-width bs)))))
                   g8751)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8756
                     (letrec*
                      ((x8757
                        (letrec*
                         ((x8760
                           (begin
                             (write '(funapp 2130 34))
                             (display "\n")
                             (b n)))
                          (x8758
                           (letrec*
                            ((x8759
                              (begin
                                (write '(funapp 2132 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2132 59))
                              (display "\n")
                              (max x8759 n)))))
                         (begin
                           (write '(funapp 2133 26))
                           (display "\n")
                           (λ x8760 x8758)))))
                      (begin
                        (write '(funapp 2134 23))
                        (display "\n")
                        (foldr x8757 0 bs)))))
                   g8756)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8761
                     (begin
                       (write '(funapp 2138 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8761)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8762
                     (letrec*
                      ((x-cnd8763
                        (begin
                          (write '(funapp 2144 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8763
                        (letrec* ((g8764 empty)) g8764)
                        (letrec*
                         ((x-cnd8765
                           (begin
                             (write '(funapp 2148 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8765
                           (letrec*
                            ((g8766
                              (letrec*
                               ((x8768
                                 (begin
                                   (write '(funapp 2153 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8767
                                 (begin
                                   (write '(funapp 2153 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2154 32))
                                 (display "\n")
                                 (elim-row bs x8768 x8767)))))
                            g8766)
                           (letrec*
                            ((g8769
                              (letrec*
                               ((x8772
                                 (letrec*
                                  ((x8773
                                    (begin
                                      (write '(funapp 2161 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2162 35))
                                    (display "\n")
                                    (elim-row bs x8773 offset))))
                                (x8770
                                 (letrec*
                                  ((x8771
                                    (begin
                                      (write '(funapp 2165 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2166 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8771)))))
                               (begin
                                 (write '(funapp 2167 32))
                                 (display "\n")
                                 (blocks-union x8772 x8770)))))
                            g8769)))))))
                   g8762)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8774
                     (letrec*
                      ((x8777
                        (letrec*
                         ((x8781
                           (letrec*
                            ((x8782
                              (letrec*
                               ((x8783
                                 (begin
                                   (write '(funapp 2181 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2182 32))
                                 (display "\n")
                                 (posn-x x8783)))))
                            (begin
                              (write '(funapp 2183 29))
                              (display "\n")
                              (+ dx x8782))))
                          (x8778
                           (letrec*
                            ((x8779
                              (letrec*
                               ((x8780
                                 (begin
                                   (write '(funapp 2188 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2189 32))
                                 (display "\n")
                                 (posn-y x8780)))))
                            (begin
                              (write '(funapp 2190 29))
                              (display "\n")
                              (+ dy x8779)))))
                         (begin
                           (write '(funapp 2191 26))
                           (display "\n")
                           (posn x8781 x8778))))
                       (x8775
                        (letrec*
                         ((x8776
                           (begin
                             (write '(funapp 2194 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2195 26))
                           (display "\n")
                           (blocks-move dx dy x8776)))))
                      (begin
                        (write '(funapp 2196 23))
                        (display "\n")
                        (tetra x8777 x8775)))))
                   g8774)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8784
                     (letrec*
                      ((x8788
                        (begin
                          (write '(funapp 2203 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8785
                        (letrec*
                         ((x8787
                           (begin
                             (write '(funapp 2206 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8786
                           (begin
                             (write '(funapp 2206 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2207 26))
                           (display "\n")
                           (blocks-rotate-ccw x8787 x8786)))))
                      (begin
                        (write '(funapp 2208 23))
                        (display "\n")
                        (tetra x8788 x8785)))))
                   g8784)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8789
                     (letrec*
                      ((x8793
                        (begin
                          (write '(funapp 2215 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8790
                        (letrec*
                         ((x8792
                           (begin
                             (write '(funapp 2218 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8791
                           (begin
                             (write '(funapp 2218 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2219 26))
                           (display "\n")
                           (blocks-rotate-cw x8792 x8791)))))
                      (begin
                        (write '(funapp 2220 23))
                        (display "\n")
                        (tetra x8793 x8790)))))
                   g8789)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8794
                     (letrec*
                      ((x8795
                        (letrec*
                         ((x8796
                           (letrec*
                            ((x8797
                              (begin
                                (write '(funapp 2231 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2232 29))
                              (display "\n")
                              (blocks-intersect x8797 bs)))))
                         (begin
                           (write '(funapp 2233 26))
                           (display "\n")
                           (false? x8796)))))
                      (begin
                        (write '(funapp 2234 23))
                        (display "\n")
                        (false? x8795)))))
                   g8794)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8798
                     (letrec*
                      ((x8801
                        (begin
                          (write '(funapp 2241 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8799
                        (letrec*
                         ((x8800
                           (begin
                             (write '(funapp 2244 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2245 26))
                           (display "\n")
                           (blocks-change-color x8800 c)))))
                      (begin
                        (write '(funapp 2246 23))
                        (display "\n")
                        (tetra x8801 x8799)))))
                   g8798)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8802
                     (letrec*
                      ((x8803
                        (letrec*
                         ((x8809
                           (begin
                             (write '(funapp 2255 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8804
                           (letrec*
                            ((x8808
                              (begin
                                (write '(funapp 2258 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8807
                              (begin
                                (write '(funapp 2259 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8806
                              (begin
                                (write '(funapp 2260 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8805
                              (begin
                                (write '(funapp 2261 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2262 29))
                              (display "\n")
                              (list x8808 x8807 x8806 x8805)))))
                         (begin
                           (write '(funapp 2263 26))
                           (display "\n")
                           (tetra x8809 x8804)))))
                      (begin
                        (write '(funapp 2264 23))
                        (display "\n")
                        (tetra-move 3 0 x8803)))))
                   g8802)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8810
                     (letrec*
                      ((x8816
                        (begin
                          (write '(funapp 2271 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8811
                        (letrec*
                         ((x8812
                           (letrec*
                            ((x8814
                              (letrec*
                               ((x8815
                                 (begin
                                   (write '(funapp 2278 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2279 32))
                                 (display "\n")
                                 (tetra-blocks x8815))))
                             (x8813
                              (begin
                                (write '(funapp 2280 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2281 29))
                              (display "\n")
                              (blocks-union x8814 x8813)))))
                         (begin
                           (write '(funapp 2282 26))
                           (display "\n")
                           (eliminate-full-rows x8812)))))
                      (begin
                        (write '(funapp 2283 23))
                        (display "\n")
                        (world x8816 x8811)))))
                   g8810)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8817
                     (letrec*
                      ((x-cnd8818
                        (begin
                          (write '(funapp 2290 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8818
                        (letrec* ((g8819 w)) g8819)
                        (letrec*
                         ((g8820
                           (letrec*
                            ((x8821
                              (letrec*
                               ((x8823
                                 (letrec*
                                  ((x8824
                                    (begin
                                      (write '(funapp 2300 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2301 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8824))))
                                (x8822
                                 (begin
                                   (write '(funapp 2302 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2303 32))
                                 (display "\n")
                                 (world x8823 x8822)))))
                            (begin
                              (write '(funapp 2304 29))
                              (display "\n")
                              (world-jump-down x8821)))))
                         g8820)))))
                   g8817)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8825
                     (letrec*
                      ((x8827
                        (letrec*
                         ((x8828
                           (begin
                             (write '(funapp 2314 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2315 26))
                           (display "\n")
                           (tetra-move 0 1 x8828))))
                       (x8826
                        (begin
                          (write '(funapp 2316 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2317 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8827 x8826)))))
                   g8825)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8829
                     (letrec*
                      ((x8831
                        (letrec*
                         ((x8832
                           (letrec*
                            ((x8833
                              (begin
                                (write '(funapp 2328 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2329 29))
                              (display "\n")
                              (tetra-blocks x8833)))))
                         (begin
                           (write '(funapp 2330 26))
                           (display "\n")
                           (blocks-max-y x8832))))
                       (x8830
                        (begin
                          (write '(funapp 2331 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2332 23))
                        (display "\n")
                        (= x8831 x8830)))))
                   g8829)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8834
                     (letrec*
                      ((val7533
                        (begin
                          (write '(funapp 2339 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8835
                         (if val7533
                           val7533
                           (begin
                             (write '(funapp 2341 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8835))))
                   g8834)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8836
                     (letrec*
                      ((x-cnd8837
                        (begin
                          (write '(funapp 2349 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8837
                        (letrec*
                         ((g8838
                           (begin
                             (write '(funapp 2351 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8838)
                        (letrec*
                         ((g8839
                           (letrec*
                            ((x8841
                              (letrec*
                               ((x8842
                                 (begin
                                   (write '(funapp 2357 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2358 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8842))))
                             (x8840
                              (begin
                                (write '(funapp 2359 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2360 29))
                              (display "\n")
                              (world x8841 x8840)))))
                         g8839)))))
                   g8836)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8843
                     (letrec*
                      ((x-cnd8844
                        (letrec*
                         ((x8850
                           (letrec*
                            ((x8851
                              (letrec*
                               ((x8852
                                 (begin
                                   (write '(funapp 2374 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2375 32))
                                 (display "\n")
                                 (blocks-min-x x8852)))))
                            (begin
                              (write '(funapp 2376 29))
                              (display "\n")
                              (< x8851 0))))
                          (x8847
                           (letrec*
                            ((x8848
                              (letrec*
                               ((x8849
                                 (begin
                                   (write '(funapp 2381 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2382 32))
                                 (display "\n")
                                 (blocks-max-x x8849)))))
                            (begin
                              (write '(funapp 2383 29))
                              (display "\n")
                              (>= x8848 board-width))))
                          (x8845
                           (letrec*
                            ((x8846
                              (begin
                                (write '(funapp 2386 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2387 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8846)))))
                         (begin
                           (write '(funapp 2388 26))
                           (display "\n")
                           (or x8850 x8847 x8845)))))
                      (if x-cnd8844
                        (letrec* ((g8853 w)) g8853)
                        (letrec*
                         ((g8854
                           (letrec*
                            ((x8855
                              (begin
                                (write '(funapp 2394 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2395 29))
                              (display "\n")
                              (world new-tetra x8855)))))
                         g8854)))))
                   g8843)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8856
                     (letrec*
                      ((x8857
                        (letrec*
                         ((x8858
                           (begin
                             (write '(funapp 2405 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2406 26))
                           (display "\n")
                           (tetra-move dx dy x8858)))))
                      (begin
                        (write '(funapp 2407 23))
                        (display "\n")
                        (try-new-tetra w x8857)))))
                   g8856)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8859
                     (letrec*
                      ((x8860
                        (letrec*
                         ((x8861
                           (begin
                             (write '(funapp 2416 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2417 26))
                           (display "\n")
                           (tetra-rotate-ccw x8861)))))
                      (begin
                        (write '(funapp 2418 23))
                        (display "\n")
                        (try-new-tetra w x8860)))))
                   g8859)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8862
                     (letrec*
                      ((x8863
                        (letrec*
                         ((x8864
                           (begin
                             (write '(funapp 2427 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2428 26))
                           (display "\n")
                           (tetra-rotate-cw x8864)))))
                      (begin
                        (write '(funapp 2429 23))
                        (display "\n")
                        (try-new-tetra w x8863)))))
                   g8862)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8865
                     (letrec*
                      ((x8866
                        (letrec*
                         ((x8867
                           (letrec*
                            ((x8868
                              (begin
                                (write '(funapp 2440 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2441 29))
                              (display "\n")
                              (world-tetra x8868)))))
                         (begin
                           (write '(funapp 2442 26))
                           (display "\n")
                           (tetra-change-color
                            x8867
                            (begin
                              (write '(funapp 2442 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2443 23))
                        (display "\n")
                        (tetra-blocks x8866)))))
                   g8865)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8869
                     (letrec*
                      ((x-cnd8870
                        (begin
                          (write '(funapp 2450 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8870
                        (letrec*
                         ((g8871
                           (begin
                             (write '(funapp 2452 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8871)
                        (letrec*
                         ((x-cnd8872
                           (begin
                             (write '(funapp 2454 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8872
                           (letrec*
                            ((g8873
                              (begin
                                (write '(funapp 2456 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8873)
                           (letrec*
                            ((x-cnd8874
                              (begin
                                (write '(funapp 2458 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8874
                              (letrec*
                               ((g8875
                                 (begin
                                   (write '(funapp 2460 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8875)
                              (letrec*
                               ((x-cnd8876
                                 (begin
                                   (write '(funapp 2462 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8876
                                 (letrec*
                                  ((g8877
                                    (begin
                                      (write '(funapp 2464 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8877)
                                 (letrec*
                                  ((x-cnd8878
                                    (begin
                                      (write '(funapp 2466 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8878
                                    (letrec*
                                     ((g8879
                                       (begin
                                         (write '(funapp 2469 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8879)
                                    (letrec* ((g8880 w)) g8880)))))))))))))
                   g8869)))
               (image
                (lambda ()
                  (letrec*
                   ((g8881
                     (begin
                       (write '(funapp 2474 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2474 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2474 62))
                          (display "\n")
                          '())))))
                   g8881)))
               (image?
                (lambda (image7994)
                  (letrec*
                   ((g8882
                     (letrec*
                      ((x8883
                        (begin
                          (write '(funapp 2479 39))
                          (display "\n")
                          (car image7994))))
                      (begin
                        (write '(funapp 2479 57))
                        (display "\n")
                        (eq?
                         x8883
                         (begin
                           (write '(funapp 2479 67))
                           (display "\n")
                           'image))))))
                   g8882)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8884
                     (begin (write '(funapp 2481 58)) (display "\n") (image))))
                   g8884)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8885
                     (begin (write '(funapp 2482 57)) (display "\n") (image))))
                   g8885)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8886
                     (begin (write '(funapp 2483 62)) (display "\n") (image))))
                   g8886)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8887
                     (begin (write '(funapp 2485 54)) (display "\n") (image))))
                   g8887)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8888
                     (begin (write '(funapp 2486 60)) (display "\n") (image))))
                   g8888)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8889
                     (letrec*
                      ((x-cnd8890
                        (letrec*
                         ((x8891
                           (begin
                             (write '(funapp 2492 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2492 63))
                           (display "\n")
                           (null? x8891)))))
                      (if x-cnd8890
                        (letrec*
                         ((g8892
                           (begin
                             (write '(funapp 2494 42))
                             (display "\n")
                             (car xs))))
                         g8892)
                        (letrec*
                         ((g8893
                           (letrec*
                            ((x8894
                              (begin
                                (write '(funapp 2498 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2499 29))
                              (display "\n")
                              (list-pick-random x8894)))))
                         g8893)))))
                   g8889)))
               (neg-1
                (begin (write '(funapp 2502 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8895
                     (letrec*
                      ((x8899
                        (letrec*
                         ((x8900
                           (letrec*
                            ((x8904
                              (letrec*
                               ((x8905
                                 (begin
                                   (write '(funapp 2514 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2515 32))
                                 (display "\n")
                                 (tetra-blocks x8905))))
                             (x8901
                              (letrec*
                               ((x8903
                                 (begin
                                   (write '(funapp 2518 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8902
                                 (begin
                                   (write '(funapp 2519 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2520 32))
                                 (display "\n")
                                 (append x8903 x8902)))))
                            (begin
                              (write '(funapp 2521 29))
                              (display "\n")
                              (append x8904 x8901)))))
                         (begin
                           (write '(funapp 2522 26))
                           (display "\n")
                           (blocks->image x8900))))
                       (x8896
                        (letrec*
                         ((x8898
                           (begin
                             (write '(funapp 2525 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8897
                           (begin
                             (write '(funapp 2526 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2527 26))
                           (display "\n")
                           (empty-scene x8898 x8897)))))
                      (begin
                        (write '(funapp 2528 23))
                        (display "\n")
                        (place-image x8899 0 0 x8896)))))
                   g8895)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8906
                     (letrec*
                      ((x8912
                        (letrec*
                         ((x8918
                           (begin
                             (write '(funapp 2537 34))
                             (display "\n")
                             (b img)))
                          (x8913
                           (letrec*
                            ((x-cnd8914
                              (letrec*
                               ((x8915
                                 (begin
                                   (write '(funapp 2541 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2541 62))
                                 (display "\n")
                                 (<= 0 x8915)))))
                            (if x-cnd8914
                              (letrec*
                               ((g8916
                                 (begin
                                   (write '(funapp 2543 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8916)
                              (letrec* ((g8917 img)) g8917)))))
                         (begin
                           (write '(funapp 2545 26))
                           (display "\n")
                           (λ x8918 x8913))))
                       (x8907
                        (letrec*
                         ((x8910
                           (letrec*
                            ((x8911
                              (begin
                                (write '(funapp 2550 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2551 29))
                              (display "\n")
                              (add1 x8911))))
                          (x8908
                           (letrec*
                            ((x8909
                              (begin
                                (write '(funapp 2554 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2555 29))
                              (display "\n")
                              (add1 x8909)))))
                         (begin
                           (write '(funapp 2556 26))
                           (display "\n")
                           (empty-scene x8910 x8908)))))
                      (begin
                        (write '(funapp 2557 23))
                        (display "\n")
                        (foldr x8912 x8907 bs)))))
                   g8906)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8919
                     (letrec*
                      ((x8923
                        (letrec*
                         ((x8926
                           (begin
                             (write '(funapp 2566 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8925
                           (begin
                             (write '(funapp 2567 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8924
                           (begin
                             (write '(funapp 2568 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2569 26))
                           (display "\n")
                           (rectangle
                            x8926
                            x8925
                            (begin
                              (write '(funapp 2569 48))
                              (display "\n")
                              'solid)
                            x8924))))
                       (x8920
                        (letrec*
                         ((x8922
                           (begin
                             (write '(funapp 2572 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8921
                           (begin
                             (write '(funapp 2572 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2573 26))
                           (display "\n")
                           (rectangle
                            x8922
                            x8921
                            (begin
                              (write '(funapp 2573 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2573 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2574 23))
                        (display "\n")
                        (overlay x8923 x8920)))))
                   g8919)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8927
                     (letrec*
                      ((x8936
                        (begin
                          (write '(funapp 2581 31))
                          (display "\n")
                          (block->image b)))
                       (x8932
                        (letrec*
                         ((x8934
                           (letrec*
                            ((x8935
                              (begin
                                (write '(funapp 2586 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2587 29))
                              (display "\n")
                              (* x8935 block-size))))
                          (x8933
                           (begin
                             (write '(funapp 2588 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2589 26))
                           (display "\n")
                           (+ x8934 x8933))))
                       (x8928
                        (letrec*
                         ((x8930
                           (letrec*
                            ((x8931
                              (begin
                                (write '(funapp 2594 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2595 29))
                              (display "\n")
                              (* x8931 block-size))))
                          (x8929
                           (begin
                             (write '(funapp 2596 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2597 26))
                           (display "\n")
                           (+ x8930 x8929)))))
                      (begin
                        (write '(funapp 2598 23))
                        (display "\n")
                        (place-image x8936 x8932 x8928 scene)))))
                   g8927)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8937
                     (letrec*
                      ((x8938
                        (begin
                          (write '(funapp 2605 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2606 23))
                        (display "\n")
                        (world x8938 null)))))
                   g8937))))
              (letrec*
               ((g8939
                 (begin
                   (write '(funapp 2610 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2611 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8950
                          (letrec*
                           ((xj7649
                             (begin
                               (write '(funapp 2615 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2615 37))
                                  (display "\n")
                                  'module))))
                            (xk7650
                             (begin
                               (write '(funapp 2615 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2615 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8951
                              (begin
                                (write '(funapp 2618 27))
                                (display "\n")
                                ((lambda (j7653 k7654 f7655)
                                   (letrec*
                                    ((g8952
                                      (lambda (g7651 g7652)
                                        (letrec*
                                         ((g8953
                                           (letrec*
                                            ((x8954
                                              (letrec*
                                               ((x8956
                                                 (begin
                                                   (write '(funapp 2627 50))
                                                   (display "\n")
                                                   (POSN/C j7653 k7654 g7651)))
                                                (x8955
                                                 (begin
                                                   (write '(funapp 2628 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7653
                                                    k7654
                                                    g7652))))
                                               (begin
                                                 (write '(funapp 2629 42))
                                                 (display "\n")
                                                 (f7655 x8956 x8955)))))
                                            (begin
                                              (write '(funapp 2630 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7653
                                               k7654
                                               x8954)))))
                                         g8953))))
                                    g8952))
                                 xj7649
                                 xk7650
                                 posn=?))))
                            g8951)))
                         (x8945
                          (letrec*
                           ((x8946
                             (letrec*
                              ((x8949 (input))
                               (x8947
                                (letrec*
                                 ((x8948 (input)))
                                 (begin
                                   (write '(funapp 2643 56))
                                   (display "\n")
                                   (cons
                                    x8948
                                    (begin
                                      (write '(funapp 2643 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2644 27))
                                (display "\n")
                                (cons x8949 x8947)))))
                           (begin
                             (write '(funapp 2645 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2645 29))
                                (display "\n")
                                'posn)
                              x8946))))
                         (x8940
                          (letrec*
                           ((x8941
                             (letrec*
                              ((x8944 (input))
                               (x8942
                                (letrec*
                                 ((x8943 (input)))
                                 (begin
                                   (write '(funapp 2652 56))
                                   (display "\n")
                                   (cons
                                    x8943
                                    (begin
                                      (write '(funapp 2652 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2653 27))
                                (display "\n")
                                (cons x8944 x8942)))))
                           (begin
                             (write '(funapp 2654 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2654 29))
                                (display "\n")
                                'posn)
                              x8941)))))
                        (begin
                          (write '(funapp 2655 21))
                          (display "\n")
                          (x8950 x8945 x8940)))
                       (letrec*
                        ((xj7656
                          (begin
                            (write '(funapp 2657 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2657 34))
                               (display "\n")
                               'module))))
                         (xk7657
                          (begin
                            (write '(funapp 2657 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2657 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8957
                           (begin
                             (write '(funapp 2658 38))
                             (display "\n")
                             (any/c xj7656 xk7657 COLOR/C))))
                         g8957))
                       (letrec*
                        ((xj7658
                          (begin
                            (write '(funapp 2660 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2660 34))
                               (display "\n")
                               'module))))
                         (xk7659
                          (begin
                            (write '(funapp 2660 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2660 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8958
                           (begin
                             (write '(funapp 2661 38))
                             (display "\n")
                             (any/c xj7658 xk7659 POSN/C))))
                         g8958))
                       (letrec*
                        ((xj7660
                          (begin
                            (write '(funapp 2663 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2663 34))
                               (display "\n")
                               'module))))
                         (xk7661
                          (begin
                            (write '(funapp 2663 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2663 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8959
                           (begin
                             (write '(funapp 2664 38))
                             (display "\n")
                             (any/c xj7660 xk7661 BLOCK/C))))
                         g8959))
                       (letrec*
                        ((xj7662
                          (begin
                            (write '(funapp 2666 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2666 34))
                               (display "\n")
                               'module))))
                         (xk7663
                          (begin
                            (write '(funapp 2666 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2666 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8960
                           (begin
                             (write '(funapp 2667 38))
                             (display "\n")
                             (any/c xj7662 xk7663 TETRA/C))))
                         g8960))
                       (letrec*
                        ((xj7664
                          (begin
                            (write '(funapp 2669 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2669 34))
                               (display "\n")
                               'module))))
                         (xk7665
                          (begin
                            (write '(funapp 2669 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2669 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8961
                           (begin
                             (write '(funapp 2670 38))
                             (display "\n")
                             (any/c xj7664 xk7665 WORLD/C))))
                         g8961))
                       (letrec*
                        ((xj7666
                          (begin
                            (write '(funapp 2672 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2672 34))
                               (display "\n")
                               'module))))
                         (xk7667
                          (begin
                            (write '(funapp 2672 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2672 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8962
                           (begin
                             (write '(funapp 2673 38))
                             (display "\n")
                             (any/c xj7666 xk7667 BSET/C))))
                         g8962))
                       (letrec*
                        ((xj7668
                          (begin
                            (write '(funapp 2675 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2675 34))
                               (display "\n")
                               'module))))
                         (xk7669
                          (begin
                            (write '(funapp 2675 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2675 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8963
                           (begin
                             (write '(funapp 2677 30))
                             (display "\n")
                             (integer?/c xj7668 xk7669 block-size))))
                         g8963))
                       (letrec*
                        ((xj7670
                          (begin
                            (write '(funapp 2680 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2680 34))
                               (display "\n")
                               'module))))
                         (xk7671
                          (begin
                            (write '(funapp 2680 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2680 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8964
                           (begin
                             (write '(funapp 2682 30))
                             (display "\n")
                             (integer?/c xj7670 xk7671 board-width))))
                         g8964))
                       (letrec*
                        ((xj7672
                          (begin
                            (write '(funapp 2685 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2685 34))
                               (display "\n")
                               'module))))
                         (xk7673
                          (begin
                            (write '(funapp 2685 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2685 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8965
                           (begin
                             (write '(funapp 2687 30))
                             (display "\n")
                             (integer?/c xj7672 xk7673 board-height))))
                         g8965))
                       (letrec*
                        ((x8978
                          (letrec*
                           ((xj7674
                             (begin
                               (write '(funapp 2692 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2692 37))
                                  (display "\n")
                                  'module))))
                            (xk7675
                             (begin
                               (write '(funapp 2692 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2692 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8979
                              (begin
                                (write '(funapp 2695 27))
                                (display "\n")
                                ((lambda (j7678 k7679 f7680)
                                   (letrec*
                                    ((g8980
                                      (lambda (g7676 g7677)
                                        (letrec*
                                         ((g8981
                                           (letrec*
                                            ((x8982
                                              (letrec*
                                               ((x8984
                                                 (begin
                                                   (write '(funapp 2704 50))
                                                   (display "\n")
                                                   (POSN/C j7678 k7679 g7676)))
                                                (x8983
                                                 (begin
                                                   (write '(funapp 2705 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7678
                                                    k7679
                                                    g7677))))
                                               (begin
                                                 (write '(funapp 2706 42))
                                                 (display "\n")
                                                 (f7680 x8984 x8983)))))
                                            (begin
                                              (write '(funapp 2707 39))
                                              (display "\n")
                                              (BLOCK/C j7678 k7679 x8982)))))
                                         g8981))))
                                    g8980))
                                 xj7674
                                 xk7675
                                 block-rotate-ccw))))
                            g8979)))
                         (x8973
                          (letrec*
                           ((x8974
                             (letrec*
                              ((x8977 (input))
                               (x8975
                                (letrec*
                                 ((x8976 (input)))
                                 (begin
                                   (write '(funapp 2720 56))
                                   (display "\n")
                                   (cons
                                    x8976
                                    (begin
                                      (write '(funapp 2720 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2721 27))
                                (display "\n")
                                (cons x8977 x8975)))))
                           (begin
                             (write '(funapp 2722 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2722 29))
                                (display "\n")
                                'posn)
                              x8974))))
                         (x8966
                          (letrec*
                           ((x8967
                             (letrec*
                              ((x8972 (input))
                               (x8968
                                (letrec*
                                 ((x8971 (input))
                                  (x8969
                                   (letrec*
                                    ((x8970 (input)))
                                    (begin
                                      (write '(funapp 2732 59))
                                      (display "\n")
                                      (cons
                                       x8970
                                       (begin
                                         (write '(funapp 2732 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2733 30))
                                   (display "\n")
                                   (cons x8971 x8969)))))
                              (begin
                                (write '(funapp 2734 27))
                                (display "\n")
                                (cons x8972 x8968)))))
                           (begin
                             (write '(funapp 2735 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2735 29))
                                (display "\n")
                                'block)
                              x8967)))))
                        (begin
                          (write '(funapp 2736 21))
                          (display "\n")
                          (x8978 x8973 x8966)))
                       (letrec*
                        ((x8997
                          (letrec*
                           ((xj7681
                             (begin
                               (write '(funapp 2740 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2740 37))
                                  (display "\n")
                                  'module))))
                            (xk7682
                             (begin
                               (write '(funapp 2740 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2740 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8998
                              (begin
                                (write '(funapp 2743 27))
                                (display "\n")
                                ((lambda (j7685 k7686 f7687)
                                   (letrec*
                                    ((g8999
                                      (lambda (g7683 g7684)
                                        (letrec*
                                         ((g9000
                                           (letrec*
                                            ((x9001
                                              (letrec*
                                               ((x9003
                                                 (begin
                                                   (write '(funapp 2752 50))
                                                   (display "\n")
                                                   (POSN/C j7685 k7686 g7683)))
                                                (x9002
                                                 (begin
                                                   (write '(funapp 2753 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7685
                                                    k7686
                                                    g7684))))
                                               (begin
                                                 (write '(funapp 2754 42))
                                                 (display "\n")
                                                 (f7687 x9003 x9002)))))
                                            (begin
                                              (write '(funapp 2755 39))
                                              (display "\n")
                                              (BLOCK/C j7685 k7686 x9001)))))
                                         g9000))))
                                    g8999))
                                 xj7681
                                 xk7682
                                 block-rotate-cw))))
                            g8998)))
                         (x8992
                          (letrec*
                           ((x8993
                             (letrec*
                              ((x8996 (input))
                               (x8994
                                (letrec*
                                 ((x8995 (input)))
                                 (begin
                                   (write '(funapp 2768 56))
                                   (display "\n")
                                   (cons
                                    x8995
                                    (begin
                                      (write '(funapp 2768 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2769 27))
                                (display "\n")
                                (cons x8996 x8994)))))
                           (begin
                             (write '(funapp 2770 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2770 29))
                                (display "\n")
                                'posn)
                              x8993))))
                         (x8985
                          (letrec*
                           ((x8986
                             (letrec*
                              ((x8991 (input))
                               (x8987
                                (letrec*
                                 ((x8990 (input))
                                  (x8988
                                   (letrec*
                                    ((x8989 (input)))
                                    (begin
                                      (write '(funapp 2780 59))
                                      (display "\n")
                                      (cons
                                       x8989
                                       (begin
                                         (write '(funapp 2780 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2781 30))
                                   (display "\n")
                                   (cons x8990 x8988)))))
                              (begin
                                (write '(funapp 2782 27))
                                (display "\n")
                                (cons x8991 x8987)))))
                           (begin
                             (write '(funapp 2783 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2783 29))
                                (display "\n")
                                'block)
                              x8986)))))
                        (begin
                          (write '(funapp 2784 21))
                          (display "\n")
                          (x8997 x8992 x8985)))
                       (letrec*
                        ((x9018
                          (letrec*
                           ((xj7688
                             (begin
                               (write '(funapp 2788 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2788 37))
                                  (display "\n")
                                  'module))))
                            (xk7689
                             (begin
                               (write '(funapp 2788 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2788 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9019
                              (begin
                                (write '(funapp 2791 27))
                                (display "\n")
                                ((lambda (j7692 k7693 f7694)
                                   (letrec*
                                    ((g9020
                                      (lambda (g7690 g7691)
                                        (letrec*
                                         ((g9021
                                           (letrec*
                                            ((x9022
                                              (letrec*
                                               ((x9024
                                                 (begin
                                                   (write '(funapp 2800 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7692
                                                    k7693
                                                    g7690)))
                                                (x9023
                                                 (begin
                                                   (write '(funapp 2801 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7692
                                                    k7693
                                                    g7691))))
                                               (begin
                                                 (write '(funapp 2802 42))
                                                 (display "\n")
                                                 (f7694 x9024 x9023)))))
                                            (begin
                                              (write '(funapp 2803 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7692
                                               k7693
                                               x9022)))))
                                         g9021))))
                                    g9020))
                                 xj7688
                                 xk7689
                                 block=?))))
                            g9019)))
                         (x9011
                          (letrec*
                           ((x9012
                             (letrec*
                              ((x9017 (input))
                               (x9013
                                (letrec*
                                 ((x9016 (input))
                                  (x9014
                                   (letrec*
                                    ((x9015 (input)))
                                    (begin
                                      (write '(funapp 2819 59))
                                      (display "\n")
                                      (cons
                                       x9015
                                       (begin
                                         (write '(funapp 2819 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2820 30))
                                   (display "\n")
                                   (cons x9016 x9014)))))
                              (begin
                                (write '(funapp 2821 27))
                                (display "\n")
                                (cons x9017 x9013)))))
                           (begin
                             (write '(funapp 2822 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2822 29))
                                (display "\n")
                                'block)
                              x9012))))
                         (x9004
                          (letrec*
                           ((x9005
                             (letrec*
                              ((x9010 (input))
                               (x9006
                                (letrec*
                                 ((x9009 (input))
                                  (x9007
                                   (letrec*
                                    ((x9008 (input)))
                                    (begin
                                      (write '(funapp 2832 59))
                                      (display "\n")
                                      (cons
                                       x9008
                                       (begin
                                         (write '(funapp 2832 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2833 30))
                                   (display "\n")
                                   (cons x9009 x9007)))))
                              (begin
                                (write '(funapp 2834 27))
                                (display "\n")
                                (cons x9010 x9006)))))
                           (begin
                             (write '(funapp 2835 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2835 29))
                                (display "\n")
                                'block)
                              x9005)))))
                        (begin
                          (write '(funapp 2836 21))
                          (display "\n")
                          (x9018 x9011 x9004)))
                       (letrec*
                        ((x9034
                          (letrec*
                           ((xj7695
                             (begin
                               (write '(funapp 2840 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2840 37))
                                  (display "\n")
                                  'module))))
                            (xk7696
                             (begin
                               (write '(funapp 2840 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2840 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9035
                              (begin
                                (write '(funapp 2843 27))
                                (display "\n")
                                ((lambda (j7700 k7701 f7702)
                                   (letrec*
                                    ((g9036
                                      (lambda (g7697 g7698 g7699)
                                        (letrec*
                                         ((g9037
                                           (letrec*
                                            ((x9038
                                              (letrec*
                                               ((x9041
                                                 (begin
                                                   (write '(funapp 2852 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7700
                                                    k7701
                                                    g7697)))
                                                (x9040
                                                 (begin
                                                   (write '(funapp 2853 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7700
                                                    k7701
                                                    g7698)))
                                                (x9039
                                                 (begin
                                                   (write '(funapp 2854 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7700
                                                    k7701
                                                    g7699))))
                                               (begin
                                                 (write '(funapp 2855 42))
                                                 (display "\n")
                                                 (f7702 x9041 x9040 x9039)))))
                                            (begin
                                              (write '(funapp 2856 39))
                                              (display "\n")
                                              (BLOCK/C j7700 k7701 x9038)))))
                                         g9037))))
                                    g9036))
                                 xj7695
                                 xk7696
                                 block-move))))
                            g9035)))
                         (x9033 (input))
                         (x9032 (input))
                         (x9025
                          (letrec*
                           ((x9026
                             (letrec*
                              ((x9031 (input))
                               (x9027
                                (letrec*
                                 ((x9030 (input))
                                  (x9028
                                   (letrec*
                                    ((x9029 (input)))
                                    (begin
                                      (write '(funapp 2874 59))
                                      (display "\n")
                                      (cons
                                       x9029
                                       (begin
                                         (write '(funapp 2874 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2875 30))
                                   (display "\n")
                                   (cons x9030 x9028)))))
                              (begin
                                (write '(funapp 2876 27))
                                (display "\n")
                                (cons x9031 x9027)))))
                           (begin
                             (write '(funapp 2877 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2877 29))
                                (display "\n")
                                'block)
                              x9026)))))
                        (begin
                          (write '(funapp 2878 21))
                          (display "\n")
                          (x9034 x9033 x9032 x9025)))
                       (letrec*
                        ((x9050
                          (letrec*
                           ((xj7703
                             (begin
                               (write '(funapp 2882 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2882 37))
                                  (display "\n")
                                  'module))))
                            (xk7704
                             (begin
                               (write '(funapp 2882 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2882 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9051
                              (begin
                                (write '(funapp 2885 27))
                                (display "\n")
                                ((lambda (j7707 k7708 f7709)
                                   (letrec*
                                    ((g9052
                                      (lambda (g7705 g7706)
                                        (letrec*
                                         ((g9053
                                           (letrec*
                                            ((x9054
                                              (letrec*
                                               ((x9056
                                                 (begin
                                                   (write '(funapp 2894 50))
                                                   (display "\n")
                                                   (BSET/C j7707 k7708 g7705)))
                                                (x9055
                                                 (begin
                                                   (write '(funapp 2895 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7707
                                                    k7708
                                                    g7706))))
                                               (begin
                                                 (write '(funapp 2896 42))
                                                 (display "\n")
                                                 (f7709 x9056 x9055)))))
                                            (begin
                                              (write '(funapp 2897 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7707
                                               k7708
                                               x9054)))))
                                         g9053))))
                                    g9052))
                                 xj7703
                                 xk7704
                                 blocks-contains?))))
                            g9051)))
                         (x9049 (input))
                         (x9042
                          (letrec*
                           ((x9043
                             (letrec*
                              ((x9048 (input))
                               (x9044
                                (letrec*
                                 ((x9047 (input))
                                  (x9045
                                   (letrec*
                                    ((x9046 (input)))
                                    (begin
                                      (write '(funapp 2914 59))
                                      (display "\n")
                                      (cons
                                       x9046
                                       (begin
                                         (write '(funapp 2914 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2915 30))
                                   (display "\n")
                                   (cons x9047 x9045)))))
                              (begin
                                (write '(funapp 2916 27))
                                (display "\n")
                                (cons x9048 x9044)))))
                           (begin
                             (write '(funapp 2917 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2917 29))
                                (display "\n")
                                'block)
                              x9043)))))
                        (begin
                          (write '(funapp 2918 21))
                          (display "\n")
                          (x9050 x9049 x9042)))
                       (letrec*
                        ((x9059
                          (letrec*
                           ((xj7710
                             (begin
                               (write '(funapp 2922 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2922 37))
                                  (display "\n")
                                  'module))))
                            (xk7711
                             (begin
                               (write '(funapp 2922 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2922 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9060
                              (begin
                                (write '(funapp 2925 27))
                                (display "\n")
                                ((lambda (j7714 k7715 f7716)
                                   (letrec*
                                    ((g9061
                                      (lambda (g7712 g7713)
                                        (letrec*
                                         ((g9062
                                           (letrec*
                                            ((x9063
                                              (letrec*
                                               ((x9065
                                                 (begin
                                                   (write '(funapp 2934 50))
                                                   (display "\n")
                                                   (BSET/C j7714 k7715 g7712)))
                                                (x9064
                                                 (begin
                                                   (write '(funapp 2935 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7714
                                                    k7715
                                                    g7713))))
                                               (begin
                                                 (write '(funapp 2936 42))
                                                 (display "\n")
                                                 (f7716 x9065 x9064)))))
                                            (begin
                                              (write '(funapp 2937 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7714
                                               k7715
                                               x9063)))))
                                         g9062))))
                                    g9061))
                                 xj7710
                                 xk7711
                                 blocks=?))))
                            g9060)))
                         (x9058 (input))
                         (x9057 (input)))
                        (begin
                          (write '(funapp 2946 21))
                          (display "\n")
                          (x9059 x9058 x9057)))
                       (letrec*
                        ((x9068
                          (letrec*
                           ((xj7717
                             (begin
                               (write '(funapp 2950 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2950 37))
                                  (display "\n")
                                  'module))))
                            (xk7718
                             (begin
                               (write '(funapp 2950 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2950 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9069
                              (begin
                                (write '(funapp 2953 27))
                                (display "\n")
                                ((lambda (j7721 k7722 f7723)
                                   (letrec*
                                    ((g9070
                                      (lambda (g7719 g7720)
                                        (letrec*
                                         ((g9071
                                           (letrec*
                                            ((x9072
                                              (letrec*
                                               ((x9074
                                                 (begin
                                                   (write '(funapp 2962 50))
                                                   (display "\n")
                                                   (BSET/C j7721 k7722 g7719)))
                                                (x9073
                                                 (begin
                                                   (write '(funapp 2963 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7721
                                                    k7722
                                                    g7720))))
                                               (begin
                                                 (write '(funapp 2964 42))
                                                 (display "\n")
                                                 (f7723 x9074 x9073)))))
                                            (begin
                                              (write '(funapp 2965 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7721
                                               k7722
                                               x9072)))))
                                         g9071))))
                                    g9070))
                                 xj7717
                                 xk7718
                                 blocks-subset?))))
                            g9069)))
                         (x9067 (input))
                         (x9066 (input)))
                        (begin
                          (write '(funapp 2974 21))
                          (display "\n")
                          (x9068 x9067 x9066)))
                       (letrec*
                        ((x9077
                          (letrec*
                           ((xj7724
                             (begin
                               (write '(funapp 2978 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2978 37))
                                  (display "\n")
                                  'module))))
                            (xk7725
                             (begin
                               (write '(funapp 2978 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2978 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9078
                              (begin
                                (write '(funapp 2981 27))
                                (display "\n")
                                ((lambda (j7728 k7729 f7730)
                                   (letrec*
                                    ((g9079
                                      (lambda (g7726 g7727)
                                        (letrec*
                                         ((g9080
                                           (letrec*
                                            ((x9081
                                              (letrec*
                                               ((x9083
                                                 (begin
                                                   (write '(funapp 2990 50))
                                                   (display "\n")
                                                   (BSET/C j7728 k7729 g7726)))
                                                (x9082
                                                 (begin
                                                   (write '(funapp 2991 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7728
                                                    k7729
                                                    g7727))))
                                               (begin
                                                 (write '(funapp 2992 42))
                                                 (display "\n")
                                                 (f7730 x9083 x9082)))))
                                            (begin
                                              (write '(funapp 2993 39))
                                              (display "\n")
                                              (BSET/C j7728 k7729 x9081)))))
                                         g9080))))
                                    g9079))
                                 xj7724
                                 xk7725
                                 blocks-intersect))))
                            g9078)))
                         (x9076 (input))
                         (x9075 (input)))
                        (begin
                          (write '(funapp 3002 21))
                          (display "\n")
                          (x9077 x9076 x9075)))
                       (letrec*
                        ((x9085
                          (letrec*
                           ((xj7731
                             (begin
                               (write '(funapp 3006 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3006 37))
                                  (display "\n")
                                  'module))))
                            (xk7732
                             (begin
                               (write '(funapp 3006 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3006 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9086
                              (begin
                                (write '(funapp 3009 27))
                                (display "\n")
                                ((lambda (j7734 k7735 f7736)
                                   (letrec*
                                    ((g9087
                                      (lambda (g7733)
                                        (letrec*
                                         ((g9088
                                           (letrec*
                                            ((x9089
                                              (letrec*
                                               ((x9090
                                                 (begin
                                                   (write '(funapp 3018 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7734
                                                    k7735
                                                    g7733))))
                                               (begin
                                                 (write '(funapp 3019 42))
                                                 (display "\n")
                                                 (f7736 x9090)))))
                                            (begin
                                              (write '(funapp 3020 39))
                                              (display "\n")
                                              (real?/c j7734 k7735 x9089)))))
                                         g9088))))
                                    g9087))
                                 xj7731
                                 xk7732
                                 blocks-count))))
                            g9086)))
                         (x9084 (input)))
                        (begin
                          (write '(funapp 3028 21))
                          (display "\n")
                          (x9085 x9084)))
                       (letrec*
                        ((x9092
                          (letrec*
                           ((xj7737
                             (begin
                               (write '(funapp 3032 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3032 37))
                                  (display "\n")
                                  'module))))
                            (xk7738
                             (begin
                               (write '(funapp 3032 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3032 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9093
                              (begin
                                (write '(funapp 3035 27))
                                (display "\n")
                                ((lambda (j7740 k7741 f7742)
                                   (letrec*
                                    ((g9094
                                      (lambda (g7739)
                                        (letrec*
                                         ((g9095
                                           (letrec*
                                            ((x9096
                                              (letrec*
                                               ((x9097
                                                 (begin
                                                   (write '(funapp 3044 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7740
                                                    k7741
                                                    g7739))))
                                               (begin
                                                 (write '(funapp 3045 42))
                                                 (display "\n")
                                                 (f7742 x9097)))))
                                            (begin
                                              (write '(funapp 3046 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7740
                                               k7741
                                               x9096)))))
                                         g9095))))
                                    g9094))
                                 xj7737
                                 xk7738
                                 blocks-overflow?))))
                            g9093)))
                         (x9091 (input)))
                        (begin
                          (write '(funapp 3054 21))
                          (display "\n")
                          (x9092 x9091)))
                       (letrec*
                        ((x9101
                          (letrec*
                           ((xj7743
                             (begin
                               (write '(funapp 3058 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3058 37))
                                  (display "\n")
                                  'module))))
                            (xk7744
                             (begin
                               (write '(funapp 3058 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3058 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9102
                              (begin
                                (write '(funapp 3061 27))
                                (display "\n")
                                ((lambda (j7748 k7749 f7750)
                                   (letrec*
                                    ((g9103
                                      (lambda (g7745 g7746 g7747)
                                        (letrec*
                                         ((g9104
                                           (letrec*
                                            ((x9105
                                              (letrec*
                                               ((x9108
                                                 (begin
                                                   (write '(funapp 3070 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7748
                                                    k7749
                                                    g7745)))
                                                (x9107
                                                 (begin
                                                   (write '(funapp 3071 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7748
                                                    k7749
                                                    g7746)))
                                                (x9106
                                                 (begin
                                                   (write '(funapp 3072 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7748
                                                    k7749
                                                    g7747))))
                                               (begin
                                                 (write '(funapp 3073 42))
                                                 (display "\n")
                                                 (f7750 x9108 x9107 x9106)))))
                                            (begin
                                              (write '(funapp 3074 39))
                                              (display "\n")
                                              (BSET/C j7748 k7749 x9105)))))
                                         g9104))))
                                    g9103))
                                 xj7743
                                 xk7744
                                 blocks-move))))
                            g9102)))
                         (x9100 (input))
                         (x9099 (input))
                         (x9098 (input)))
                        (begin
                          (write '(funapp 3084 21))
                          (display "\n")
                          (x9101 x9100 x9099 x9098)))
                       (letrec*
                        ((x9115
                          (letrec*
                           ((xj7751
                             (begin
                               (write '(funapp 3088 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3088 37))
                                  (display "\n")
                                  'module))))
                            (xk7752
                             (begin
                               (write '(funapp 3088 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3088 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9116
                              (begin
                                (write '(funapp 3091 27))
                                (display "\n")
                                ((lambda (j7755 k7756 f7757)
                                   (letrec*
                                    ((g9117
                                      (lambda (g7753 g7754)
                                        (letrec*
                                         ((g9118
                                           (letrec*
                                            ((x9119
                                              (letrec*
                                               ((x9121
                                                 (begin
                                                   (write '(funapp 3100 50))
                                                   (display "\n")
                                                   (POSN/C j7755 k7756 g7753)))
                                                (x9120
                                                 (begin
                                                   (write '(funapp 3101 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7755
                                                    k7756
                                                    g7754))))
                                               (begin
                                                 (write '(funapp 3102 42))
                                                 (display "\n")
                                                 (f7757 x9121 x9120)))))
                                            (begin
                                              (write '(funapp 3103 39))
                                              (display "\n")
                                              (BSET/C j7755 k7756 x9119)))))
                                         g9118))))
                                    g9117))
                                 xj7751
                                 xk7752
                                 blocks-rotate-cw))))
                            g9116)))
                         (x9110
                          (letrec*
                           ((x9111
                             (letrec*
                              ((x9114 (input))
                               (x9112
                                (letrec*
                                 ((x9113 (input)))
                                 (begin
                                   (write '(funapp 3116 56))
                                   (display "\n")
                                   (cons
                                    x9113
                                    (begin
                                      (write '(funapp 3116 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3117 27))
                                (display "\n")
                                (cons x9114 x9112)))))
                           (begin
                             (write '(funapp 3118 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3118 29))
                                (display "\n")
                                'posn)
                              x9111))))
                         (x9109 (input)))
                        (begin
                          (write '(funapp 3120 21))
                          (display "\n")
                          (x9115 x9110 x9109)))
                       (letrec*
                        ((x9128
                          (letrec*
                           ((xj7758
                             (begin
                               (write '(funapp 3124 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3124 37))
                                  (display "\n")
                                  'module))))
                            (xk7759
                             (begin
                               (write '(funapp 3124 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3124 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9129
                              (begin
                                (write '(funapp 3127 27))
                                (display "\n")
                                ((lambda (j7762 k7763 f7764)
                                   (letrec*
                                    ((g9130
                                      (lambda (g7760 g7761)
                                        (letrec*
                                         ((g9131
                                           (letrec*
                                            ((x9132
                                              (letrec*
                                               ((x9134
                                                 (begin
                                                   (write '(funapp 3136 50))
                                                   (display "\n")
                                                   (POSN/C j7762 k7763 g7760)))
                                                (x9133
                                                 (begin
                                                   (write '(funapp 3137 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7762
                                                    k7763
                                                    g7761))))
                                               (begin
                                                 (write '(funapp 3138 42))
                                                 (display "\n")
                                                 (f7764 x9134 x9133)))))
                                            (begin
                                              (write '(funapp 3139 39))
                                              (display "\n")
                                              (BSET/C j7762 k7763 x9132)))))
                                         g9131))))
                                    g9130))
                                 xj7758
                                 xk7759
                                 blocks-rotate-ccw))))
                            g9129)))
                         (x9123
                          (letrec*
                           ((x9124
                             (letrec*
                              ((x9127 (input))
                               (x9125
                                (letrec*
                                 ((x9126 (input)))
                                 (begin
                                   (write '(funapp 3152 56))
                                   (display "\n")
                                   (cons
                                    x9126
                                    (begin
                                      (write '(funapp 3152 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3153 27))
                                (display "\n")
                                (cons x9127 x9125)))))
                           (begin
                             (write '(funapp 3154 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3154 29))
                                (display "\n")
                                'posn)
                              x9124))))
                         (x9122 (input)))
                        (begin
                          (write '(funapp 3156 21))
                          (display "\n")
                          (x9128 x9123 x9122)))
                       (letrec*
                        ((x9137
                          (letrec*
                           ((xj7765
                             (begin
                               (write '(funapp 3160 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3160 37))
                                  (display "\n")
                                  'module))))
                            (xk7766
                             (begin
                               (write '(funapp 3160 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3160 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9138
                              (begin
                                (write '(funapp 3163 27))
                                (display "\n")
                                ((lambda (j7769 k7770 f7771)
                                   (letrec*
                                    ((g9139
                                      (lambda (g7767 g7768)
                                        (letrec*
                                         ((g9140
                                           (letrec*
                                            ((x9141
                                              (letrec*
                                               ((x9143
                                                 (begin
                                                   (write '(funapp 3172 50))
                                                   (display "\n")
                                                   (BSET/C j7769 k7770 g7767)))
                                                (x9142
                                                 (begin
                                                   (write '(funapp 3173 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7769
                                                    k7770
                                                    g7768))))
                                               (begin
                                                 (write '(funapp 3174 42))
                                                 (display "\n")
                                                 (f7771 x9143 x9142)))))
                                            (begin
                                              (write '(funapp 3175 39))
                                              (display "\n")
                                              (BSET/C j7769 k7770 x9141)))))
                                         g9140))))
                                    g9139))
                                 xj7765
                                 xk7766
                                 blocks-change-color))))
                            g9138)))
                         (x9136 (input))
                         (x9135 (input)))
                        (begin
                          (write '(funapp 3184 21))
                          (display "\n")
                          (x9137 x9136 x9135)))
                       (letrec*
                        ((x9146
                          (letrec*
                           ((xj7772
                             (begin
                               (write '(funapp 3188 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3188 37))
                                  (display "\n")
                                  'module))))
                            (xk7773
                             (begin
                               (write '(funapp 3188 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3188 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9147
                              (begin
                                (write '(funapp 3191 27))
                                (display "\n")
                                ((lambda (j7776 k7777 f7778)
                                   (letrec*
                                    ((g9148
                                      (lambda (g7774 g7775)
                                        (letrec*
                                         ((g9149
                                           (letrec*
                                            ((x9150
                                              (letrec*
                                               ((x9152
                                                 (begin
                                                   (write '(funapp 3200 50))
                                                   (display "\n")
                                                   (BSET/C j7776 k7777 g7774)))
                                                (x9151
                                                 (begin
                                                   (write '(funapp 3201 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7776
                                                    k7777
                                                    g7775))))
                                               (begin
                                                 (write '(funapp 3202 42))
                                                 (display "\n")
                                                 (f7778 x9152 x9151)))))
                                            (begin
                                              (write '(funapp 3203 39))
                                              (display "\n")
                                              (BSET/C j7776 k7777 x9150)))))
                                         g9149))))
                                    g9148))
                                 xj7772
                                 xk7773
                                 blocks-row))))
                            g9147)))
                         (x9145 (input))
                         (x9144 (input)))
                        (begin
                          (write '(funapp 3212 21))
                          (display "\n")
                          (x9146 x9145 x9144)))
                       (letrec*
                        ((x9155
                          (letrec*
                           ((xj7779
                             (begin
                               (write '(funapp 3216 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3216 37))
                                  (display "\n")
                                  'module))))
                            (xk7780
                             (begin
                               (write '(funapp 3216 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3216 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9156
                              (begin
                                (write '(funapp 3219 27))
                                (display "\n")
                                ((lambda (j7783 k7784 f7785)
                                   (letrec*
                                    ((g9157
                                      (lambda (g7781 g7782)
                                        (letrec*
                                         ((g9158
                                           (letrec*
                                            ((x9159
                                              (letrec*
                                               ((x9161
                                                 (begin
                                                   (write '(funapp 3228 50))
                                                   (display "\n")
                                                   (BSET/C j7783 k7784 g7781)))
                                                (x9160
                                                 (begin
                                                   (write '(funapp 3229 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7783
                                                    k7784
                                                    g7782))))
                                               (begin
                                                 (write '(funapp 3230 42))
                                                 (display "\n")
                                                 (f7785 x9161 x9160)))))
                                            (begin
                                              (write '(funapp 3231 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7783
                                               k7784
                                               x9159)))))
                                         g9158))))
                                    g9157))
                                 xj7779
                                 xk7780
                                 full-row?))))
                            g9156)))
                         (x9154 (input))
                         (x9153 (input)))
                        (begin
                          (write '(funapp 3240 21))
                          (display "\n")
                          (x9155 x9154 x9153)))
                       (letrec*
                        ((x9164
                          (letrec*
                           ((xj7786
                             (begin
                               (write '(funapp 3244 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3244 37))
                                  (display "\n")
                                  'module))))
                            (xk7787
                             (begin
                               (write '(funapp 3244 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3244 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9165
                              (begin
                                (write '(funapp 3247 27))
                                (display "\n")
                                ((lambda (j7790 k7791 f7792)
                                   (letrec*
                                    ((g9166
                                      (lambda (g7788 g7789)
                                        (letrec*
                                         ((g9167
                                           (letrec*
                                            ((x9168
                                              (letrec*
                                               ((x9170
                                                 (begin
                                                   (write '(funapp 3256 50))
                                                   (display "\n")
                                                   (BSET/C j7790 k7791 g7788)))
                                                (x9169
                                                 (begin
                                                   (write '(funapp 3257 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7790
                                                    k7791
                                                    g7789))))
                                               (begin
                                                 (write '(funapp 3258 42))
                                                 (display "\n")
                                                 (f7792 x9170 x9169)))))
                                            (begin
                                              (write '(funapp 3259 39))
                                              (display "\n")
                                              (BSET/C j7790 k7791 x9168)))))
                                         g9167))))
                                    g9166))
                                 xj7786
                                 xk7787
                                 blocks-union))))
                            g9165)))
                         (x9163 (input))
                         (x9162 (input)))
                        (begin
                          (write '(funapp 3268 21))
                          (display "\n")
                          (x9164 x9163 x9162)))
                       (letrec*
                        ((x9172
                          (letrec*
                           ((xj7793
                             (begin
                               (write '(funapp 3272 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3272 37))
                                  (display "\n")
                                  'module))))
                            (xk7794
                             (begin
                               (write '(funapp 3272 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3272 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9173
                              (begin
                                (write '(funapp 3275 27))
                                (display "\n")
                                ((lambda (j7796 k7797 f7798)
                                   (letrec*
                                    ((g9174
                                      (lambda (g7795)
                                        (letrec*
                                         ((g9175
                                           (letrec*
                                            ((x9176
                                              (letrec*
                                               ((x9177
                                                 (begin
                                                   (write '(funapp 3284 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7796
                                                    k7797
                                                    g7795))))
                                               (begin
                                                 (write '(funapp 3285 42))
                                                 (display "\n")
                                                 (f7798 x9177)))))
                                            (begin
                                              (write '(funapp 3286 39))
                                              (display "\n")
                                              (real?/c j7796 k7797 x9176)))))
                                         g9175))))
                                    g9174))
                                 xj7793
                                 xk7794
                                 blocks-max-x))))
                            g9173)))
                         (x9171 (input)))
                        (begin
                          (write '(funapp 3294 21))
                          (display "\n")
                          (x9172 x9171)))
                       (letrec*
                        ((x9179
                          (letrec*
                           ((xj7799
                             (begin
                               (write '(funapp 3298 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3298 37))
                                  (display "\n")
                                  'module))))
                            (xk7800
                             (begin
                               (write '(funapp 3298 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3298 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9180
                              (begin
                                (write '(funapp 3301 27))
                                (display "\n")
                                ((lambda (j7802 k7803 f7804)
                                   (letrec*
                                    ((g9181
                                      (lambda (g7801)
                                        (letrec*
                                         ((g9182
                                           (letrec*
                                            ((x9183
                                              (letrec*
                                               ((x9184
                                                 (begin
                                                   (write '(funapp 3310 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7802
                                                    k7803
                                                    g7801))))
                                               (begin
                                                 (write '(funapp 3311 42))
                                                 (display "\n")
                                                 (f7804 x9184)))))
                                            (begin
                                              (write '(funapp 3312 39))
                                              (display "\n")
                                              (real?/c j7802 k7803 x9183)))))
                                         g9182))))
                                    g9181))
                                 xj7799
                                 xk7800
                                 blocks-min-x))))
                            g9180)))
                         (x9178 (input)))
                        (begin
                          (write '(funapp 3320 21))
                          (display "\n")
                          (x9179 x9178)))
                       (letrec*
                        ((x9186
                          (letrec*
                           ((xj7805
                             (begin
                               (write '(funapp 3324 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3324 37))
                                  (display "\n")
                                  'module))))
                            (xk7806
                             (begin
                               (write '(funapp 3324 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3324 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9187
                              (begin
                                (write '(funapp 3327 27))
                                (display "\n")
                                ((lambda (j7808 k7809 f7810)
                                   (letrec*
                                    ((g9188
                                      (lambda (g7807)
                                        (letrec*
                                         ((g9189
                                           (letrec*
                                            ((x9190
                                              (letrec*
                                               ((x9191
                                                 (begin
                                                   (write '(funapp 3336 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7808
                                                    k7809
                                                    g7807))))
                                               (begin
                                                 (write '(funapp 3337 42))
                                                 (display "\n")
                                                 (f7810 x9191)))))
                                            (begin
                                              (write '(funapp 3338 39))
                                              (display "\n")
                                              (real?/c j7808 k7809 x9190)))))
                                         g9189))))
                                    g9188))
                                 xj7805
                                 xk7806
                                 blocks-max-y))))
                            g9187)))
                         (x9185 (input)))
                        (begin
                          (write '(funapp 3346 21))
                          (display "\n")
                          (x9186 x9185)))
                       (letrec*
                        ((x9193
                          (letrec*
                           ((xj7811
                             (begin
                               (write '(funapp 3350 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3350 37))
                                  (display "\n")
                                  'module))))
                            (xk7812
                             (begin
                               (write '(funapp 3350 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3350 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9194
                              (begin
                                (write '(funapp 3353 27))
                                (display "\n")
                                ((lambda (j7814 k7815 f7816)
                                   (letrec*
                                    ((g9195
                                      (lambda (g7813)
                                        (letrec*
                                         ((g9196
                                           (letrec*
                                            ((x9197
                                              (letrec*
                                               ((x9198
                                                 (begin
                                                   (write '(funapp 3362 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7814
                                                    k7815
                                                    g7813))))
                                               (begin
                                                 (write '(funapp 3363 42))
                                                 (display "\n")
                                                 (f7816 x9198)))))
                                            (begin
                                              (write '(funapp 3364 39))
                                              (display "\n")
                                              (BSET/C j7814 k7815 x9197)))))
                                         g9196))))
                                    g9195))
                                 xj7811
                                 xk7812
                                 eliminate-full-rows))))
                            g9194)))
                         (x9192 (input)))
                        (begin
                          (write '(funapp 3372 21))
                          (display "\n")
                          (x9193 x9192)))
                       (letrec*
                        ((x9210
                          (letrec*
                           ((xj7817
                             (begin
                               (write '(funapp 3376 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3376 37))
                                  (display "\n")
                                  'module))))
                            (xk7818
                             (begin
                               (write '(funapp 3376 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3376 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9211
                              (begin
                                (write '(funapp 3379 27))
                                (display "\n")
                                ((lambda (j7822 k7823 f7824)
                                   (letrec*
                                    ((g9212
                                      (lambda (g7819 g7820 g7821)
                                        (letrec*
                                         ((g9213
                                           (letrec*
                                            ((x9214
                                              (letrec*
                                               ((x9217
                                                 (begin
                                                   (write '(funapp 3389 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7822
                                                    k7823
                                                    g7819)))
                                                (x9216
                                                 (begin
                                                   (write '(funapp 3391 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7822
                                                    k7823
                                                    g7820)))
                                                (x9215
                                                 (begin
                                                   (write '(funapp 3392 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7822
                                                    k7823
                                                    g7821))))
                                               (begin
                                                 (write '(funapp 3393 42))
                                                 (display "\n")
                                                 (f7824 x9217 x9216 x9215)))))
                                            (begin
                                              (write '(funapp 3394 39))
                                              (display "\n")
                                              (TETRA/C j7822 k7823 x9214)))))
                                         g9213))))
                                    g9212))
                                 xj7817
                                 xk7818
                                 tetra-move))))
                            g9211)))
                         (x9209 (input))
                         (x9208 (input))
                         (x9199
                          (letrec*
                           ((x9200
                             (letrec*
                              ((x9203
                                (letrec*
                                 ((x9204
                                   (letrec*
                                    ((x9207 (input))
                                     (x9205
                                      (letrec*
                                       ((x9206 (input)))
                                       (begin
                                         (write '(funapp 3415 36))
                                         (display "\n")
                                         (cons
                                          x9206
                                          (begin
                                            (write '(funapp 3415 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3416 33))
                                      (display "\n")
                                      (cons x9207 x9205)))))
                                 (begin
                                   (write '(funapp 3417 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3417 35))
                                      (display "\n")
                                      'posn)
                                    x9204))))
                               (x9201
                                (letrec*
                                 ((x9202 (input)))
                                 (begin
                                   (write '(funapp 3419 56))
                                   (display "\n")
                                   (cons
                                    x9202
                                    (begin
                                      (write '(funapp 3419 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3420 27))
                                (display "\n")
                                (cons x9203 x9201)))))
                           (begin
                             (write '(funapp 3421 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3421 29))
                                (display "\n")
                                'tetra)
                              x9200)))))
                        (begin
                          (write '(funapp 3422 21))
                          (display "\n")
                          (x9210 x9209 x9208 x9199)))
                       (letrec*
                        ((x9227
                          (letrec*
                           ((xj7825
                             (begin
                               (write '(funapp 3426 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3426 37))
                                  (display "\n")
                                  'module))))
                            (xk7826
                             (begin
                               (write '(funapp 3426 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3426 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9228
                              (begin
                                (write '(funapp 3429 27))
                                (display "\n")
                                ((lambda (j7828 k7829 f7830)
                                   (letrec*
                                    ((g9229
                                      (lambda (g7827)
                                        (letrec*
                                         ((g9230
                                           (letrec*
                                            ((x9231
                                              (letrec*
                                               ((x9232
                                                 (begin
                                                   (write '(funapp 3438 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7828
                                                    k7829
                                                    g7827))))
                                               (begin
                                                 (write '(funapp 3439 42))
                                                 (display "\n")
                                                 (f7830 x9232)))))
                                            (begin
                                              (write '(funapp 3440 39))
                                              (display "\n")
                                              (TETRA/C j7828 k7829 x9231)))))
                                         g9230))))
                                    g9229))
                                 xj7825
                                 xk7826
                                 tetra-rotate-ccw))))
                            g9228)))
                         (x9218
                          (letrec*
                           ((x9219
                             (letrec*
                              ((x9222
                                (letrec*
                                 ((x9223
                                   (letrec*
                                    ((x9226 (input))
                                     (x9224
                                      (letrec*
                                       ((x9225 (input)))
                                       (begin
                                         (write '(funapp 3459 36))
                                         (display "\n")
                                         (cons
                                          x9225
                                          (begin
                                            (write '(funapp 3459 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3460 33))
                                      (display "\n")
                                      (cons x9226 x9224)))))
                                 (begin
                                   (write '(funapp 3461 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3461 35))
                                      (display "\n")
                                      'posn)
                                    x9223))))
                               (x9220
                                (letrec*
                                 ((x9221 (input)))
                                 (begin
                                   (write '(funapp 3463 56))
                                   (display "\n")
                                   (cons
                                    x9221
                                    (begin
                                      (write '(funapp 3463 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3464 27))
                                (display "\n")
                                (cons x9222 x9220)))))
                           (begin
                             (write '(funapp 3465 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3465 29))
                                (display "\n")
                                'tetra)
                              x9219)))))
                        (begin
                          (write '(funapp 3466 21))
                          (display "\n")
                          (x9227 x9218)))
                       (letrec*
                        ((x9242
                          (letrec*
                           ((xj7831
                             (begin
                               (write '(funapp 3470 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3470 37))
                                  (display "\n")
                                  'module))))
                            (xk7832
                             (begin
                               (write '(funapp 3470 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3470 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9243
                              (begin
                                (write '(funapp 3473 27))
                                (display "\n")
                                ((lambda (j7834 k7835 f7836)
                                   (letrec*
                                    ((g9244
                                      (lambda (g7833)
                                        (letrec*
                                         ((g9245
                                           (letrec*
                                            ((x9246
                                              (letrec*
                                               ((x9247
                                                 (begin
                                                   (write '(funapp 3482 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7834
                                                    k7835
                                                    g7833))))
                                               (begin
                                                 (write '(funapp 3483 42))
                                                 (display "\n")
                                                 (f7836 x9247)))))
                                            (begin
                                              (write '(funapp 3484 39))
                                              (display "\n")
                                              (TETRA/C j7834 k7835 x9246)))))
                                         g9245))))
                                    g9244))
                                 xj7831
                                 xk7832
                                 tetra-rotate-cw))))
                            g9243)))
                         (x9233
                          (letrec*
                           ((x9234
                             (letrec*
                              ((x9237
                                (letrec*
                                 ((x9238
                                   (letrec*
                                    ((x9241 (input))
                                     (x9239
                                      (letrec*
                                       ((x9240 (input)))
                                       (begin
                                         (write '(funapp 3503 36))
                                         (display "\n")
                                         (cons
                                          x9240
                                          (begin
                                            (write '(funapp 3503 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3504 33))
                                      (display "\n")
                                      (cons x9241 x9239)))))
                                 (begin
                                   (write '(funapp 3505 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3505 35))
                                      (display "\n")
                                      'posn)
                                    x9238))))
                               (x9235
                                (letrec*
                                 ((x9236 (input)))
                                 (begin
                                   (write '(funapp 3507 56))
                                   (display "\n")
                                   (cons
                                    x9236
                                    (begin
                                      (write '(funapp 3507 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3508 27))
                                (display "\n")
                                (cons x9237 x9235)))))
                           (begin
                             (write '(funapp 3509 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3509 29))
                                (display "\n")
                                'tetra)
                              x9234)))))
                        (begin
                          (write '(funapp 3510 21))
                          (display "\n")
                          (x9242 x9233)))
                       (letrec*
                        ((x9258
                          (letrec*
                           ((xj7837
                             (begin
                               (write '(funapp 3514 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3514 37))
                                  (display "\n")
                                  'module))))
                            (xk7838
                             (begin
                               (write '(funapp 3514 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3514 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9259
                              (begin
                                (write '(funapp 3517 27))
                                (display "\n")
                                ((lambda (j7841 k7842 f7843)
                                   (letrec*
                                    ((g9260
                                      (lambda (g7839 g7840)
                                        (letrec*
                                         ((g9261
                                           (letrec*
                                            ((x9262
                                              (letrec*
                                               ((x9264
                                                 (begin
                                                   (write '(funapp 3526 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7841
                                                    k7842
                                                    g7839)))
                                                (x9263
                                                 (begin
                                                   (write '(funapp 3527 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7841
                                                    k7842
                                                    g7840))))
                                               (begin
                                                 (write '(funapp 3528 42))
                                                 (display "\n")
                                                 (f7843 x9264 x9263)))))
                                            (begin
                                              (write '(funapp 3529 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7841
                                               k7842
                                               x9262)))))
                                         g9261))))
                                    g9260))
                                 xj7837
                                 xk7838
                                 tetra-overlaps-blocks?))))
                            g9259)))
                         (x9249
                          (letrec*
                           ((x9250
                             (letrec*
                              ((x9253
                                (letrec*
                                 ((x9254
                                   (letrec*
                                    ((x9257 (input))
                                     (x9255
                                      (letrec*
                                       ((x9256 (input)))
                                       (begin
                                         (write '(funapp 3548 36))
                                         (display "\n")
                                         (cons
                                          x9256
                                          (begin
                                            (write '(funapp 3548 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3549 33))
                                      (display "\n")
                                      (cons x9257 x9255)))))
                                 (begin
                                   (write '(funapp 3550 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3550 35))
                                      (display "\n")
                                      'posn)
                                    x9254))))
                               (x9251
                                (letrec*
                                 ((x9252 (input)))
                                 (begin
                                   (write '(funapp 3552 56))
                                   (display "\n")
                                   (cons
                                    x9252
                                    (begin
                                      (write '(funapp 3552 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3553 27))
                                (display "\n")
                                (cons x9253 x9251)))))
                           (begin
                             (write '(funapp 3554 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3554 29))
                                (display "\n")
                                'tetra)
                              x9250))))
                         (x9248 (input)))
                        (begin
                          (write '(funapp 3556 21))
                          (display "\n")
                          (x9258 x9249 x9248)))
                       (letrec*
                        ((x9276
                          (letrec*
                           ((xj7844
                             (begin
                               (write '(funapp 3560 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3560 37))
                                  (display "\n")
                                  'module))))
                            (xk7845
                             (begin
                               (write '(funapp 3560 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3560 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9277
                              (begin
                                (write '(funapp 3563 27))
                                (display "\n")
                                ((lambda (j7857 k7858 f7859)
                                   (letrec*
                                    ((g9278
                                      (lambda (g7846
                                               g7847
                                               g7848
                                               g7849
                                               g7850
                                               g7851
                                               g7852
                                               g7853
                                               g7854
                                               g7855
                                               g7856)
                                        (letrec*
                                         ((g9279
                                           (letrec*
                                            ((x9280
                                              (letrec*
                                               ((x9291
                                                 (begin
                                                   (write '(funapp 3582 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7857
                                                    k7858
                                                    g7846)))
                                                (x9290
                                                 (begin
                                                   (write '(funapp 3583 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7857
                                                    k7858
                                                    g7847)))
                                                (x9289
                                                 (begin
                                                   (write '(funapp 3584 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7857
                                                    k7858
                                                    g7848)))
                                                (x9288
                                                 (begin
                                                   (write '(funapp 3586 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7849)))
                                                (x9287
                                                 (begin
                                                   (write '(funapp 3588 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7850)))
                                                (x9286
                                                 (begin
                                                   (write '(funapp 3590 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7851)))
                                                (x9285
                                                 (begin
                                                   (write '(funapp 3592 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7852)))
                                                (x9284
                                                 (begin
                                                   (write '(funapp 3594 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7853)))
                                                (x9283
                                                 (begin
                                                   (write '(funapp 3596 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7854)))
                                                (x9282
                                                 (begin
                                                   (write '(funapp 3598 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7855)))
                                                (x9281
                                                 (begin
                                                   (write '(funapp 3600 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7857
                                                    k7858
                                                    g7856))))
                                               (begin
                                                 (write '(funapp 3601 42))
                                                 (display "\n")
                                                 (f7859
                                                  x9291
                                                  x9290
                                                  x9289
                                                  x9288
                                                  x9287
                                                  x9286
                                                  x9285
                                                  x9284
                                                  x9283
                                                  x9282
                                                  x9281)))))
                                            (begin
                                              (write '(funapp 3613 39))
                                              (display "\n")
                                              (TETRA/C j7857 k7858 x9280)))))
                                         g9279))))
                                    g9278))
                                 xj7844
                                 xk7845
                                 build-tetra-blocks))))
                            g9277)))
                         (x9275 (input))
                         (x9274 (input))
                         (x9273 (input))
                         (x9272 (input))
                         (x9271 (input))
                         (x9270 (input))
                         (x9269 (input))
                         (x9268 (input))
                         (x9267 (input))
                         (x9266 (input))
                         (x9265 (input)))
                        (begin
                          (write '(funapp 3631 21))
                          (display "\n")
                          (x9276
                           x9275
                           x9274
                           x9273
                           x9272
                           x9271
                           x9270
                           x9269
                           x9268
                           x9267
                           x9266
                           x9265)))
                       (letrec*
                        ((x9302
                          (letrec*
                           ((xj7860
                             (begin
                               (write '(funapp 3646 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3646 37))
                                  (display "\n")
                                  'module))))
                            (xk7861
                             (begin
                               (write '(funapp 3646 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3646 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9303
                              (begin
                                (write '(funapp 3649 27))
                                (display "\n")
                                ((lambda (j7864 k7865 f7866)
                                   (letrec*
                                    ((g9304
                                      (lambda (g7862 g7863)
                                        (letrec*
                                         ((g9305
                                           (letrec*
                                            ((x9306
                                              (letrec*
                                               ((x9308
                                                 (begin
                                                   (write '(funapp 3658 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7864
                                                    k7865
                                                    g7862)))
                                                (x9307
                                                 (begin
                                                   (write '(funapp 3659 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7864
                                                    k7865
                                                    g7863))))
                                               (begin
                                                 (write '(funapp 3660 42))
                                                 (display "\n")
                                                 (f7866 x9308 x9307)))))
                                            (begin
                                              (write '(funapp 3661 39))
                                              (display "\n")
                                              (TETRA/C j7864 k7865 x9306)))))
                                         g9305))))
                                    g9304))
                                 xj7860
                                 xk7861
                                 tetra-change-color))))
                            g9303)))
                         (x9293
                          (letrec*
                           ((x9294
                             (letrec*
                              ((x9297
                                (letrec*
                                 ((x9298
                                   (letrec*
                                    ((x9301 (input))
                                     (x9299
                                      (letrec*
                                       ((x9300 (input)))
                                       (begin
                                         (write '(funapp 3680 36))
                                         (display "\n")
                                         (cons
                                          x9300
                                          (begin
                                            (write '(funapp 3680 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3681 33))
                                      (display "\n")
                                      (cons x9301 x9299)))))
                                 (begin
                                   (write '(funapp 3682 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3682 35))
                                      (display "\n")
                                      'posn)
                                    x9298))))
                               (x9295
                                (letrec*
                                 ((x9296 (input)))
                                 (begin
                                   (write '(funapp 3684 56))
                                   (display "\n")
                                   (cons
                                    x9296
                                    (begin
                                      (write '(funapp 3684 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3685 27))
                                (display "\n")
                                (cons x9297 x9295)))))
                           (begin
                             (write '(funapp 3686 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3686 29))
                                (display "\n")
                                'tetra)
                              x9294))))
                         (x9292 (input)))
                        (begin
                          (write '(funapp 3688 21))
                          (display "\n")
                          (x9302 x9293 x9292)))
                       (letrec*
                        ((x9323
                          (letrec*
                           ((xj7867
                             (begin
                               (write '(funapp 3692 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3692 37))
                                  (display "\n")
                                  'module))))
                            (xk7868
                             (begin
                               (write '(funapp 3692 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3692 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9324
                              (begin
                                (write '(funapp 3695 27))
                                (display "\n")
                                ((lambda (j7871 k7872 f7873)
                                   (letrec*
                                    ((g9325
                                      (lambda (g7869 g7870)
                                        (letrec*
                                         ((g9326
                                           (letrec*
                                            ((x9327
                                              (letrec*
                                               ((x9329
                                                 (begin
                                                   (write '(funapp 3704 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7871
                                                    k7872
                                                    g7869)))
                                                (x9328
                                                 (begin
                                                   (write '(funapp 3706 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7871
                                                    k7872
                                                    g7870))))
                                               (begin
                                                 (write '(funapp 3707 42))
                                                 (display "\n")
                                                 (f7873 x9329 x9328)))))
                                            (begin
                                              (write '(funapp 3708 39))
                                              (display "\n")
                                              (WORLD/C j7871 k7872 x9327)))))
                                         g9326))))
                                    g9325))
                                 xj7867
                                 xk7868
                                 world-key-move))))
                            g9324)))
                         (x9310
                          (letrec*
                           ((x9311
                             (letrec*
                              ((x9314
                                (letrec*
                                 ((x9315
                                   (letrec*
                                    ((x9318
                                      (letrec*
                                       ((x9319
                                         (letrec*
                                          ((x9322 (input))
                                           (x9320
                                            (letrec*
                                             ((x9321 (input)))
                                             (begin
                                               (write '(funapp 3731 42))
                                               (display "\n")
                                               (cons
                                                x9321
                                                (begin
                                                  (write '(funapp 3731 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3732 39))
                                            (display "\n")
                                            (cons x9322 x9320)))))
                                       (begin
                                         (write '(funapp 3733 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3733 41))
                                            (display "\n")
                                            'posn)
                                          x9319))))
                                     (x9316
                                      (letrec*
                                       ((x9317 (input)))
                                       (begin
                                         (write '(funapp 3737 36))
                                         (display "\n")
                                         (cons
                                          x9317
                                          (begin
                                            (write '(funapp 3737 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3738 33))
                                      (display "\n")
                                      (cons x9318 x9316)))))
                                 (begin
                                   (write '(funapp 3739 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3739 35))
                                      (display "\n")
                                      'tetra)
                                    x9315))))
                               (x9312
                                (letrec*
                                 ((x9313 (input)))
                                 (begin
                                   (write '(funapp 3741 56))
                                   (display "\n")
                                   (cons
                                    x9313
                                    (begin
                                      (write '(funapp 3741 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3742 27))
                                (display "\n")
                                (cons x9314 x9312)))))
                           (begin
                             (write '(funapp 3743 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3743 29))
                                (display "\n")
                                'world)
                              x9311))))
                         (x9309 (input)))
                        (begin
                          (write '(funapp 3745 21))
                          (display "\n")
                          (x9323 x9310 x9309)))
                       (letrec*
                        ((x9344
                          (letrec*
                           ((xj7874
                             (begin
                               (write '(funapp 3749 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3749 37))
                                  (display "\n")
                                  'module))))
                            (xk7875
                             (begin
                               (write '(funapp 3749 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3749 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9345
                              (begin
                                (write '(funapp 3752 27))
                                (display "\n")
                                ((lambda (j7878 k7879 f7880)
                                   (letrec*
                                    ((g9346
                                      (lambda (g7876 g7877)
                                        (letrec*
                                         ((g9347
                                           (letrec*
                                            ((x9348
                                              (letrec*
                                               ((x9352
                                                 (begin
                                                   (write '(funapp 3761 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7878
                                                    k7879
                                                    g7876)))
                                                (x9349
                                                 (letrec*
                                                  ((x9350
                                                    (letrec*
                                                     ((x9351
                                                       (begin
                                                         (write
                                                          '(funapp 3766 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3767 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9351)))))
                                                  (begin
                                                    (write '(funapp 3768 45))
                                                    (display "\n")
                                                    (x9350
                                                     j7878
                                                     k7879
                                                     g7877)))))
                                               (begin
                                                 (write '(funapp 3769 42))
                                                 (display "\n")
                                                 (f7880 x9352 x9349)))))
                                            (begin
                                              (write '(funapp 3770 39))
                                              (display "\n")
                                              (WORLD/C j7878 k7879 x9348)))))
                                         g9347))))
                                    g9346))
                                 xj7874
                                 xk7875
                                 next-world))))
                            g9345)))
                         (x9331
                          (letrec*
                           ((x9332
                             (letrec*
                              ((x9335
                                (letrec*
                                 ((x9336
                                   (letrec*
                                    ((x9339
                                      (letrec*
                                       ((x9340
                                         (letrec*
                                          ((x9343 (input))
                                           (x9341
                                            (letrec*
                                             ((x9342 (input)))
                                             (begin
                                               (write '(funapp 3793 42))
                                               (display "\n")
                                               (cons
                                                x9342
                                                (begin
                                                  (write '(funapp 3793 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3794 39))
                                            (display "\n")
                                            (cons x9343 x9341)))))
                                       (begin
                                         (write '(funapp 3795 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3795 41))
                                            (display "\n")
                                            'posn)
                                          x9340))))
                                     (x9337
                                      (letrec*
                                       ((x9338 (input)))
                                       (begin
                                         (write '(funapp 3799 36))
                                         (display "\n")
                                         (cons
                                          x9338
                                          (begin
                                            (write '(funapp 3799 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3800 33))
                                      (display "\n")
                                      (cons x9339 x9337)))))
                                 (begin
                                   (write '(funapp 3801 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3801 35))
                                      (display "\n")
                                      'tetra)
                                    x9336))))
                               (x9333
                                (letrec*
                                 ((x9334 (input)))
                                 (begin
                                   (write '(funapp 3803 56))
                                   (display "\n")
                                   (cons
                                    x9334
                                    (begin
                                      (write '(funapp 3803 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3804 27))
                                (display "\n")
                                (cons x9335 x9333)))))
                           (begin
                             (write '(funapp 3805 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3805 29))
                                (display "\n")
                                'world)
                              x9332))))
                         (x9330 (input)))
                        (begin
                          (write '(funapp 3807 21))
                          (display "\n")
                          (x9344 x9331 x9330)))
                       (letrec*
                        ((x9366
                          (letrec*
                           ((xj7881
                             (begin
                               (write '(funapp 3811 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3811 37))
                                  (display "\n")
                                  'module))))
                            (xk7882
                             (begin
                               (write '(funapp 3811 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3811 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9367
                              (begin
                                (write '(funapp 3814 27))
                                (display "\n")
                                ((lambda (j7884 k7885 f7886)
                                   (letrec*
                                    ((g9368
                                      (lambda (g7883)
                                        (letrec*
                                         ((g9369
                                           (letrec*
                                            ((x9370
                                              (letrec*
                                               ((x9371
                                                 (begin
                                                   (write '(funapp 3823 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7884
                                                    k7885
                                                    g7883))))
                                               (begin
                                                 (write '(funapp 3824 42))
                                                 (display "\n")
                                                 (f7886 x9371)))))
                                            (begin
                                              (write '(funapp 3825 39))
                                              (display "\n")
                                              (BSET/C j7884 k7885 x9370)))))
                                         g9369))))
                                    g9368))
                                 xj7881
                                 xk7882
                                 ghost-blocks))))
                            g9367)))
                         (x9353
                          (letrec*
                           ((x9354
                             (letrec*
                              ((x9357
                                (letrec*
                                 ((x9358
                                   (letrec*
                                    ((x9361
                                      (letrec*
                                       ((x9362
                                         (letrec*
                                          ((x9365 (input))
                                           (x9363
                                            (letrec*
                                             ((x9364 (input)))
                                             (begin
                                               (write '(funapp 3848 42))
                                               (display "\n")
                                               (cons
                                                x9364
                                                (begin
                                                  (write '(funapp 3848 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3849 39))
                                            (display "\n")
                                            (cons x9365 x9363)))))
                                       (begin
                                         (write '(funapp 3850 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3850 41))
                                            (display "\n")
                                            'posn)
                                          x9362))))
                                     (x9359
                                      (letrec*
                                       ((x9360 (input)))
                                       (begin
                                         (write '(funapp 3854 36))
                                         (display "\n")
                                         (cons
                                          x9360
                                          (begin
                                            (write '(funapp 3854 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3855 33))
                                      (display "\n")
                                      (cons x9361 x9359)))))
                                 (begin
                                   (write '(funapp 3856 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3856 35))
                                      (display "\n")
                                      'tetra)
                                    x9358))))
                               (x9355
                                (letrec*
                                 ((x9356 (input)))
                                 (begin
                                   (write '(funapp 3858 56))
                                   (display "\n")
                                   (cons
                                    x9356
                                    (begin
                                      (write '(funapp 3858 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3859 27))
                                (display "\n")
                                (cons x9357 x9355)))))
                           (begin
                             (write '(funapp 3860 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3860 29))
                                (display "\n")
                                'world)
                              x9354)))))
                        (begin
                          (write '(funapp 3861 21))
                          (display "\n")
                          (x9366 x9353)))
                       (letrec*
                        ((x9373
                          (letrec*
                           ((xj7887
                             (begin
                               (write '(funapp 3865 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3865 37))
                                  (display "\n")
                                  'module))))
                            (xk7888
                             (begin
                               (write '(funapp 3865 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3865 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9374
                              (begin
                                (write '(funapp 3868 27))
                                (display "\n")
                                ((lambda (j7890 k7891 f7892)
                                   (letrec*
                                    ((g9375
                                      (lambda (g7889)
                                        (letrec*
                                         ((g9376
                                           (letrec*
                                            ((x9377
                                              (letrec*
                                               ((x9378
                                                 (begin
                                                   (write '(funapp 3877 50))
                                                   (display "\n")
                                                   (any/c j7890 k7891 g7889))))
                                               (begin
                                                 (write '(funapp 3878 42))
                                                 (display "\n")
                                                 (f7892 x9378)))))
                                            (begin
                                              (write '(funapp 3879 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7890
                                               k7891
                                               x9377)))))
                                         g9376))))
                                    g9375))
                                 xj7887
                                 xk7888
                                 image?))))
                            g9374)))
                         (x9372 (input)))
                        (begin
                          (write '(funapp 3887 21))
                          (display "\n")
                          (x9373 x9372)))
                       (letrec*
                        ((x9381
                          (letrec*
                           ((xj7893
                             (begin
                               (write '(funapp 3891 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3891 37))
                                  (display "\n")
                                  'module))))
                            (xk7894
                             (begin
                               (write '(funapp 3891 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3891 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9382
                              (begin
                                (write '(funapp 3894 27))
                                (display "\n")
                                ((lambda (j7897 k7898 f7899)
                                   (letrec*
                                    ((g9383
                                      (lambda (g7895 g7896)
                                        (letrec*
                                         ((g9384
                                           (letrec*
                                            ((x9385
                                              (letrec*
                                               ((x9387
                                                 (begin
                                                   (write '(funapp 3903 50))
                                                   (display "\n")
                                                   (image? j7897 k7898 g7895)))
                                                (x9386
                                                 (begin
                                                   (write '(funapp 3904 50))
                                                   (display "\n")
                                                   (image?
                                                    j7897
                                                    k7898
                                                    g7896))))
                                               (begin
                                                 (write '(funapp 3905 42))
                                                 (display "\n")
                                                 (f7899 x9387 x9386)))))
                                            (begin
                                              (write '(funapp 3906 39))
                                              (display "\n")
                                              (image? j7897 k7898 x9385)))))
                                         g9384))))
                                    g9383))
                                 xj7893
                                 xk7894
                                 overlay))))
                            g9382)))
                         (x9380 (input))
                         (x9379 (input)))
                        (begin
                          (write '(funapp 3915 21))
                          (display "\n")
                          (x9381 x9380 x9379)))
                       (letrec*
                        ((x9391
                          (letrec*
                           ((xj7900
                             (begin
                               (write '(funapp 3919 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3919 37))
                                  (display "\n")
                                  'module))))
                            (xk7901
                             (begin
                               (write '(funapp 3919 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3919 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9392
                              (begin
                                (write '(funapp 3922 27))
                                (display "\n")
                                ((lambda (j7905 k7906 f7907)
                                   (letrec*
                                    ((g9393
                                      (lambda (g7902 g7903 g7904)
                                        (letrec*
                                         ((g9394
                                           (letrec*
                                            ((x9395
                                              (letrec*
                                               ((x9398
                                                 (begin
                                                   (write '(funapp 3931 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7905
                                                    k7906
                                                    g7902)))
                                                (x9397
                                                 (begin
                                                   (write '(funapp 3932 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7905
                                                    k7906
                                                    g7903)))
                                                (x9396
                                                 (begin
                                                   (write '(funapp 3934 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7905
                                                    k7906
                                                    g7904))))
                                               (begin
                                                 (write '(funapp 3935 42))
                                                 (display "\n")
                                                 (f7907 x9398 x9397 x9396)))))
                                            (begin
                                              (write '(funapp 3936 39))
                                              (display "\n")
                                              (image? j7905 k7906 x9395)))))
                                         g9394))))
                                    g9393))
                                 xj7900
                                 xk7901
                                 circle))))
                            g9392)))
                         (x9390 (input))
                         (x9389 (input))
                         (x9388 (input)))
                        (begin
                          (write '(funapp 3946 21))
                          (display "\n")
                          (x9391 x9390 x9389 x9388)))
                       (letrec*
                        ((x9403
                          (letrec*
                           ((xj7908
                             (begin
                               (write '(funapp 3950 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3950 37))
                                  (display "\n")
                                  'module))))
                            (xk7909
                             (begin
                               (write '(funapp 3950 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3950 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9404
                              (begin
                                (write '(funapp 3953 27))
                                (display "\n")
                                ((lambda (j7914 k7915 f7916)
                                   (letrec*
                                    ((g9405
                                      (lambda (g7910 g7911 g7912 g7913)
                                        (letrec*
                                         ((g9406
                                           (letrec*
                                            ((x9407
                                              (letrec*
                                               ((x9411
                                                 (begin
                                                   (write '(funapp 3962 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7914
                                                    k7915
                                                    g7910)))
                                                (x9410
                                                 (begin
                                                   (write '(funapp 3963 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7914
                                                    k7915
                                                    g7911)))
                                                (x9409
                                                 (begin
                                                   (write '(funapp 3964 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7914
                                                    k7915
                                                    g7912)))
                                                (x9408
                                                 (begin
                                                   (write '(funapp 3965 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7914
                                                    k7915
                                                    g7913))))
                                               (begin
                                                 (write '(funapp 3966 42))
                                                 (display "\n")
                                                 (f7916
                                                  x9411
                                                  x9410
                                                  x9409
                                                  x9408)))))
                                            (begin
                                              (write '(funapp 3967 39))
                                              (display "\n")
                                              (image? j7914 k7915 x9407)))))
                                         g9406))))
                                    g9405))
                                 xj7908
                                 xk7909
                                 rectangle))))
                            g9404)))
                         (x9402 (input))
                         (x9401 (input))
                         (x9400 (input))
                         (x9399 (input)))
                        (begin
                          (write '(funapp 3978 21))
                          (display "\n")
                          (x9403 x9402 x9401 x9400 x9399)))
                       (letrec*
                        ((x9416
                          (letrec*
                           ((xj7917
                             (begin
                               (write '(funapp 3982 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3982 37))
                                  (display "\n")
                                  'module))))
                            (xk7918
                             (begin
                               (write '(funapp 3982 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3982 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9417
                              (begin
                                (write '(funapp 3985 27))
                                (display "\n")
                                ((lambda (j7923 k7924 f7925)
                                   (letrec*
                                    ((g9418
                                      (lambda (g7919 g7920 g7921 g7922)
                                        (letrec*
                                         ((g9419
                                           (letrec*
                                            ((x9420
                                              (letrec*
                                               ((x9424
                                                 (begin
                                                   (write '(funapp 3994 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7923
                                                    k7924
                                                    g7919)))
                                                (x9423
                                                 (begin
                                                   (write '(funapp 3995 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7923
                                                    k7924
                                                    g7920)))
                                                (x9422
                                                 (begin
                                                   (write '(funapp 3996 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7923
                                                    k7924
                                                    g7921)))
                                                (x9421
                                                 (begin
                                                   (write '(funapp 3997 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7923
                                                    k7924
                                                    g7922))))
                                               (begin
                                                 (write '(funapp 3998 42))
                                                 (display "\n")
                                                 (f7925
                                                  x9424
                                                  x9423
                                                  x9422
                                                  x9421)))))
                                            (begin
                                              (write '(funapp 3999 39))
                                              (display "\n")
                                              (image/c j7923 k7924 x9420)))))
                                         g9419))))
                                    g9418))
                                 xj7917
                                 xk7918
                                 place-image))))
                            g9417)))
                         (x9415 (input))
                         (x9414 (input))
                         (x9413 (input))
                         (x9412 (input)))
                        (begin
                          (write '(funapp 4010 21))
                          (display "\n")
                          (x9416 x9415 x9414 x9413 x9412)))
                       (letrec*
                        ((x9427
                          (letrec*
                           ((xj7926
                             (begin
                               (write '(funapp 4014 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4014 37))
                                  (display "\n")
                                  'module))))
                            (xk7927
                             (begin
                               (write '(funapp 4014 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4014 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9428
                              (begin
                                (write '(funapp 4017 27))
                                (display "\n")
                                ((lambda (j7930 k7931 f7932)
                                   (letrec*
                                    ((g9429
                                      (lambda (g7928 g7929)
                                        (letrec*
                                         ((g9430
                                           (letrec*
                                            ((x9431
                                              (letrec*
                                               ((x9433
                                                 (begin
                                                   (write '(funapp 4026 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7930
                                                    k7931
                                                    g7928)))
                                                (x9432
                                                 (begin
                                                   (write '(funapp 4027 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7930
                                                    k7931
                                                    g7929))))
                                               (begin
                                                 (write '(funapp 4028 42))
                                                 (display "\n")
                                                 (f7932 x9433 x9432)))))
                                            (begin
                                              (write '(funapp 4029 39))
                                              (display "\n")
                                              (image? j7930 k7931 x9431)))))
                                         g9430))))
                                    g9429))
                                 xj7926
                                 xk7927
                                 empty-scene))))
                            g9428)))
                         (x9426 (input))
                         (x9425 (input)))
                        (begin
                          (write '(funapp 4038 21))
                          (display "\n")
                          (x9427 x9426 x9425)))
                       (letrec*
                        ((x9435
                          (letrec*
                           ((xj7933
                             (begin
                               (write '(funapp 4042 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4042 37))
                                  (display "\n")
                                  'module))))
                            (xk7934
                             (begin
                               (write '(funapp 4042 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4042 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9436
                              (begin
                                (write '(funapp 4045 27))
                                (display "\n")
                                ((lambda (j7936 k7937 f7938)
                                   (letrec*
                                    ((g9437
                                      (lambda (g7935)
                                        (letrec*
                                         ((g9438
                                           (letrec*
                                            ((x9439
                                              (letrec*
                                               ((x9440
                                                 (letrec*
                                                  ((x9441
                                                    (letrec*
                                                     ((x9442
                                                       (begin
                                                         (write
                                                          '(funapp 4058 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4059 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9442)))))
                                                  (begin
                                                    (write '(funapp 4060 45))
                                                    (display "\n")
                                                    (x9441
                                                     j7936
                                                     k7937
                                                     g7935)))))
                                               (begin
                                                 (write '(funapp 4061 42))
                                                 (display "\n")
                                                 (f7938 x9440)))))
                                            (begin
                                              (write '(funapp 4062 39))
                                              (display "\n")
                                              (TETRA/C j7936 k7937 x9439)))))
                                         g9438))))
                                    g9437))
                                 xj7933
                                 xk7934
                                 list-pick-random))))
                            g9436)))
                         (x9434 (input)))
                        (begin
                          (write '(funapp 4070 21))
                          (display "\n")
                          (x9435 x9434)))
                       (letrec*
                        ((xj7939
                          (begin
                            (write '(funapp 4072 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4072 34))
                               (display "\n")
                               'module))))
                         (xk7940
                          (begin
                            (write '(funapp 4072 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4072 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9443
                           (begin
                             (write '(funapp 4073 38))
                             (display "\n")
                             (integer?/c xj7939 xk7940 neg-1))))
                         g9443))
                       (letrec*
                        ((x9457
                          (letrec*
                           ((xj7941
                             (begin
                               (write '(funapp 4077 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4077 37))
                                  (display "\n")
                                  'module))))
                            (xk7942
                             (begin
                               (write '(funapp 4077 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4077 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9458
                              (begin
                                (write '(funapp 4080 27))
                                (display "\n")
                                ((lambda (j7944 k7945 f7946)
                                   (letrec*
                                    ((g9459
                                      (lambda (g7943)
                                        (letrec*
                                         ((g9460
                                           (letrec*
                                            ((x9461
                                              (letrec*
                                               ((x9462
                                                 (begin
                                                   (write '(funapp 4089 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7944
                                                    k7945
                                                    g7943))))
                                               (begin
                                                 (write '(funapp 4090 42))
                                                 (display "\n")
                                                 (f7946 x9462)))))
                                            (begin
                                              (write '(funapp 4091 39))
                                              (display "\n")
                                              (image/c j7944 k7945 x9461)))))
                                         g9460))))
                                    g9459))
                                 xj7941
                                 xk7942
                                 world->image))))
                            g9458)))
                         (x9444
                          (letrec*
                           ((x9445
                             (letrec*
                              ((x9448
                                (letrec*
                                 ((x9449
                                   (letrec*
                                    ((x9452
                                      (letrec*
                                       ((x9453
                                         (letrec*
                                          ((x9456 (input))
                                           (x9454
                                            (letrec*
                                             ((x9455 (input)))
                                             (begin
                                               (write '(funapp 4114 42))
                                               (display "\n")
                                               (cons
                                                x9455
                                                (begin
                                                  (write '(funapp 4114 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4115 39))
                                            (display "\n")
                                            (cons x9456 x9454)))))
                                       (begin
                                         (write '(funapp 4116 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4116 41))
                                            (display "\n")
                                            'posn)
                                          x9453))))
                                     (x9450
                                      (letrec*
                                       ((x9451 (input)))
                                       (begin
                                         (write '(funapp 4120 36))
                                         (display "\n")
                                         (cons
                                          x9451
                                          (begin
                                            (write '(funapp 4120 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4121 33))
                                      (display "\n")
                                      (cons x9452 x9450)))))
                                 (begin
                                   (write '(funapp 4122 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4122 35))
                                      (display "\n")
                                      'tetra)
                                    x9449))))
                               (x9446
                                (letrec*
                                 ((x9447 (input)))
                                 (begin
                                   (write '(funapp 4124 56))
                                   (display "\n")
                                   (cons
                                    x9447
                                    (begin
                                      (write '(funapp 4124 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4125 27))
                                (display "\n")
                                (cons x9448 x9446)))))
                           (begin
                             (write '(funapp 4126 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4126 29))
                                (display "\n")
                                'world)
                              x9445)))))
                        (begin
                          (write '(funapp 4127 21))
                          (display "\n")
                          (x9457 x9444)))
                       (letrec*
                        ((x9464
                          (letrec*
                           ((xj7947
                             (begin
                               (write '(funapp 4131 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4131 37))
                                  (display "\n")
                                  'module))))
                            (xk7948
                             (begin
                               (write '(funapp 4131 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4131 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9465
                              (begin
                                (write '(funapp 4134 27))
                                (display "\n")
                                ((lambda (j7950 k7951 f7952)
                                   (letrec*
                                    ((g9466
                                      (lambda (g7949)
                                        (letrec*
                                         ((g9467
                                           (letrec*
                                            ((x9468
                                              (letrec*
                                               ((x9469
                                                 (begin
                                                   (write '(funapp 4143 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7950
                                                    k7951
                                                    g7949))))
                                               (begin
                                                 (write '(funapp 4144 42))
                                                 (display "\n")
                                                 (f7952 x9469)))))
                                            (begin
                                              (write '(funapp 4145 39))
                                              (display "\n")
                                              (image/c j7950 k7951 x9468)))))
                                         g9467))))
                                    g9466))
                                 xj7947
                                 xk7948
                                 blocks->image))))
                            g9465)))
                         (x9463 (input)))
                        (begin
                          (write '(funapp 4153 21))
                          (display "\n")
                          (x9464 x9463)))
                       (letrec*
                        ((x9477
                          (letrec*
                           ((xj7953
                             (begin
                               (write '(funapp 4157 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4157 37))
                                  (display "\n")
                                  'module))))
                            (xk7954
                             (begin
                               (write '(funapp 4157 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4157 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9478
                              (begin
                                (write '(funapp 4160 27))
                                (display "\n")
                                ((lambda (j7956 k7957 f7958)
                                   (letrec*
                                    ((g9479
                                      (lambda (g7955)
                                        (letrec*
                                         ((g9480
                                           (letrec*
                                            ((x9481
                                              (letrec*
                                               ((x9482
                                                 (begin
                                                   (write '(funapp 4169 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7956
                                                    k7957
                                                    g7955))))
                                               (begin
                                                 (write '(funapp 4170 42))
                                                 (display "\n")
                                                 (f7958 x9482)))))
                                            (begin
                                              (write '(funapp 4171 39))
                                              (display "\n")
                                              (image/c j7956 k7957 x9481)))))
                                         g9480))))
                                    g9479))
                                 xj7953
                                 xk7954
                                 block->image))))
                            g9478)))
                         (x9470
                          (letrec*
                           ((x9471
                             (letrec*
                              ((x9476 (input))
                               (x9472
                                (letrec*
                                 ((x9475 (input))
                                  (x9473
                                   (letrec*
                                    ((x9474 (input)))
                                    (begin
                                      (write '(funapp 4187 59))
                                      (display "\n")
                                      (cons
                                       x9474
                                       (begin
                                         (write '(funapp 4187 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4188 30))
                                   (display "\n")
                                   (cons x9475 x9473)))))
                              (begin
                                (write '(funapp 4189 27))
                                (display "\n")
                                (cons x9476 x9472)))))
                           (begin
                             (write '(funapp 4190 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4190 29))
                                (display "\n")
                                'block)
                              x9471)))))
                        (begin
                          (write '(funapp 4191 21))
                          (display "\n")
                          (x9477 x9470)))
                       (letrec*
                        ((x9491
                          (letrec*
                           ((xj7959
                             (begin
                               (write '(funapp 4195 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4195 37))
                                  (display "\n")
                                  'module))))
                            (xk7960
                             (begin
                               (write '(funapp 4195 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4195 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9492
                              (begin
                                (write '(funapp 4198 27))
                                (display "\n")
                                ((lambda (j7963 k7964 f7965)
                                   (letrec*
                                    ((g9493
                                      (lambda (g7961 g7962)
                                        (letrec*
                                         ((g9494
                                           (letrec*
                                            ((x9495
                                              (letrec*
                                               ((x9497
                                                 (begin
                                                   (write '(funapp 4207 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7963
                                                    k7964
                                                    g7961)))
                                                (x9496
                                                 (begin
                                                   (write '(funapp 4208 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7963
                                                    k7964
                                                    g7962))))
                                               (begin
                                                 (write '(funapp 4209 42))
                                                 (display "\n")
                                                 (f7965 x9497 x9496)))))
                                            (begin
                                              (write '(funapp 4210 39))
                                              (display "\n")
                                              (image/c j7963 k7964 x9495)))))
                                         g9494))))
                                    g9493))
                                 xj7959
                                 xk7960
                                 place-block))))
                            g9492)))
                         (x9484
                          (letrec*
                           ((x9485
                             (letrec*
                              ((x9490 (input))
                               (x9486
                                (letrec*
                                 ((x9489 (input))
                                  (x9487
                                   (letrec*
                                    ((x9488 (input)))
                                    (begin
                                      (write '(funapp 4226 59))
                                      (display "\n")
                                      (cons
                                       x9488
                                       (begin
                                         (write '(funapp 4226 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4227 30))
                                   (display "\n")
                                   (cons x9489 x9487)))))
                              (begin
                                (write '(funapp 4228 27))
                                (display "\n")
                                (cons x9490 x9486)))))
                           (begin
                             (write '(funapp 4229 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4229 29))
                                (display "\n")
                                'block)
                              x9485))))
                         (x9483 (input)))
                        (begin
                          (write '(funapp 4231 21))
                          (display "\n")
                          (x9491 x9484 x9483)))
                       (letrec*
                        ((x9499
                          (letrec*
                           ((xj7966
                             (begin
                               (write '(funapp 4235 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4235 37))
                                  (display "\n")
                                  'module))))
                            (xk7967
                             (begin
                               (write '(funapp 4235 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4235 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9500
                              (begin
                                (write '(funapp 4238 27))
                                (display "\n")
                                ((lambda (j7969 k7970 f7971)
                                   (letrec*
                                    ((g9501
                                      (lambda (g7968)
                                        (letrec*
                                         ((g9502
                                           (letrec*
                                            ((x9503
                                              (letrec*
                                               ((x9504
                                                 (letrec*
                                                  ((x9505
                                                    (letrec*
                                                     ((x9506
                                                       (begin
                                                         (write
                                                          '(funapp 4251 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4252 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9506)))))
                                                  (begin
                                                    (write '(funapp 4253 45))
                                                    (display "\n")
                                                    (x9505
                                                     j7969
                                                     k7970
                                                     g7968)))))
                                               (begin
                                                 (write '(funapp 4254 42))
                                                 (display "\n")
                                                 (f7971 x9504)))))
                                            (begin
                                              (write '(funapp 4255 39))
                                              (display "\n")
                                              (WORLD/C j7969 k7970 x9503)))))
                                         g9502))))
                                    g9501))
                                 xj7966
                                 xk7967
                                 world0))))
                            g9500)))
                         (x9498 (input)))
                        (begin
                          (write '(funapp 4263 21))
                          (display "\n")
                          (x9499 x9498)))))))))
               g8939))))
           g8008))))
       g8006)))
    g8005)))
