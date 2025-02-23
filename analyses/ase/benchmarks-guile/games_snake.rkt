(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7793 #t)) g7793)))
    (meta (lambda (v) (letrec* ((g7794 v)) g7794)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7795
          (letrec*
           ((g7796
             (letrec*
              ((x-e7797 lst))
              (letrec*
               ((v1804 x-e7797))
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
                   ((x-cnd7798
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7798
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
           g7796)))
        g7795)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7799 (lambda (v) (letrec* ((g7800 v)) g7800)))) g7799)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7801
          (letrec*
           ((x7802 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7802)))))
        g7801))))
   (letrec*
    ((g7803
      (letrec*
       ((g7804
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
           ((g7805 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7806
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7807
                     (lambda (k j lst)
                       (letrec*
                        ((g7808
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7809
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7809))
                             lst))))
                        g7808))))
                   g7807)))
               (real?/c
                (lambda (g7537 g7538 g7539)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7539))))
                      (if x-cnd7811
                        g7539
                        (begin
                          (write '(blame g7537 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7537)))))))
                   g7810)))
               (boolean?/c
                (lambda (g7540 g7541 g7542)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7542))))
                      (if x-cnd7813
                        g7542
                        (begin
                          (write '(blame g7540 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7540)))))))
                   g7812)))
               (number?/c
                (lambda (g7543 g7544 g7545)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7545))))
                      (if x-cnd7815
                        g7545
                        (begin
                          (write '(blame g7543 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7543)))))))
                   g7814)))
               (any/c
                (lambda (g7546 g7547 g7548)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7818 #t)) g7818)) g7548))))
                      (if x-cnd7817
                        g7548
                        (begin
                          (write '(blame g7546 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7546)))))))
                   g7816)))
               (any?/c
                (lambda (g7549 g7550 g7551)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7821 #t)) g7821)) g7551))))
                      (if x-cnd7820
                        g7551
                        (begin
                          (write '(blame g7549 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7549)))))))
                   g7819)))
               (cons?/c
                (lambda (g7552 g7553 g7554)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7554))))
                      (if x-cnd7823
                        g7554
                        (begin
                          (write '(blame g7552 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7552)))))))
                   g7822)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7555 g7556 g7557)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7557))))
                      (if x-cnd7825
                        g7557
                        (begin
                          (write '(blame g7555 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7555)))))))
                   g7824)))
               (integer?/c
                (lambda (g7558 g7559 g7560)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7560))))
                      (if x-cnd7827
                        g7560
                        (begin
                          (write '(blame g7558 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7558)))))))
                   g7826)))
               (symbol?/c
                (lambda (g7561 g7562 g7563)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7563))))
                      (if x-cnd7829
                        g7563
                        (begin
                          (write '(blame g7561 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7561)))))))
                   g7828)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7830
                     (lambda (k j v)
                       (letrec*
                        ((g7831
                          (letrec*
                           ((x-cnd7832
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7832
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7831))))
                   g7830)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7833
                     (lambda (k j v)
                       (letrec*
                        ((g7834
                          (letrec*
                           ((x-cnd7835
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7835
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7839
                                (letrec*
                                 ((x7840
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7840))))
                               (x7836
                                (letrec*
                                 ((x7838
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7837
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7838 k j x7837)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7839 x7836)))))))
                        g7834))))
                   g7833)))
               (any? (lambda (v) (letrec* ((g7841 #t)) g7841)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7843)))))
                   g7842)))
               (nonzero?/c
                (lambda (g7564 g7565 g7566)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7846
                                (letrec*
                                 ((x7847
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7847)))))
                              g7846))
                           g7566))))
                      (if x-cnd7845
                        g7566
                        (begin
                          (write '(blame g7564 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7564)))))))
                   g7844)))
               (meta (lambda (v) (letrec* ((g7848 v)) g7848)))
               (+
                (letrec*
                 ((xj7567
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7568
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7849
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7571 k7572 f7573)
                         (letrec*
                          ((g7851
                            (lambda (g7569 g7570)
                              (letrec*
                               ((g7852
                                 (letrec*
                                  ((x7853
                                    (letrec*
                                     ((x7855
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7571 k7572 g7569)))
                                      (x7854
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7571 k7572 g7570))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7573 x7855 x7854)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7571 k7572 x7853)))))
                               g7852))))
                          g7851))
                       xj7567
                       xk7568
                       (lambda (a b)
                         (letrec*
                          ((g7850
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7850))))))
                  g7849)))
               (-
                (letrec*
                 ((xj7574
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7575
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7856
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7578 k7579 f7580)
                         (letrec*
                          ((g7858
                            (lambda (g7576 g7577)
                              (letrec*
                               ((g7859
                                 (letrec*
                                  ((x7860
                                    (letrec*
                                     ((x7862
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7578 k7579 g7576)))
                                      (x7861
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7578 k7579 g7577))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7580 x7862 x7861)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7578 k7579 x7860)))))
                               g7859))))
                          g7858))
                       xj7574
                       xk7575
                       (lambda (a b)
                         (letrec*
                          ((g7857
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7857))))))
                  g7856)))
               (*
                (letrec*
                 ((xj7581
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7582
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7863
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7585 k7586 f7587)
                         (letrec*
                          ((g7865
                            (lambda (g7583 g7584)
                              (letrec*
                               ((g7866
                                 (letrec*
                                  ((x7867
                                    (letrec*
                                     ((x7869
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7585 k7586 g7583)))
                                      (x7868
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7585 k7586 g7584))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7587 x7869 x7868)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7585 k7586 x7867)))))
                               g7866))))
                          g7865))
                       xj7581
                       xk7582
                       (lambda (a b)
                         (letrec*
                          ((g7864
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7864))))))
                  g7863)))
               (/
                (letrec*
                 ((xj7588
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7589
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7870
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7592 k7593 f7594)
                         (letrec*
                          ((g7872
                            (lambda (g7590 g7591)
                              (letrec*
                               ((g7873
                                 (letrec*
                                  ((x7874
                                    (letrec*
                                     ((x7876
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7592 k7593 g7590)))
                                      (x7875
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7592 k7593 g7591))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7594 x7876 x7875)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7592 k7593 x7874)))))
                               g7873))))
                          g7872))
                       xj7588
                       xk7589
                       (lambda (a b)
                         (letrec*
                          ((g7871
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7871))))))
                  g7870)))
               (car
                (letrec*
                 ((xj7595
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7596
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7877
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7598 k7599 f7600)
                         (letrec*
                          ((g7879
                            (lambda (g7597)
                              (letrec*
                               ((g7880
                                 (letrec*
                                  ((x7881
                                    (letrec*
                                     ((x7882
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7598 k7599 g7597))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7600 x7882)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7598 k7599 x7881)))))
                               g7880))))
                          g7879))
                       xj7595
                       xk7596
                       (lambda (p)
                         (letrec*
                          ((g7878
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7878))))))
                  g7877)))
               (cdr
                (letrec*
                 ((xj7601
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7602
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7883
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7604 k7605 f7606)
                         (letrec*
                          ((g7885
                            (lambda (g7603)
                              (letrec*
                               ((g7886
                                 (letrec*
                                  ((x7887
                                    (letrec*
                                     ((x7888
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7604 k7605 g7603))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7606 x7888)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7604 k7605 x7887)))))
                               g7886))))
                          g7885))
                       xj7601
                       xk7602
                       (lambda (p)
                         (letrec*
                          ((g7884
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7884))))))
                  g7883)))
               (cons
                (letrec*
                 ((xj7607
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7608
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7889
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7611 k7612 f7613)
                         (letrec*
                          ((g7891
                            (lambda (g7609 g7610)
                              (letrec*
                               ((g7892
                                 (letrec*
                                  ((x7893
                                    (letrec*
                                     ((x7895
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7611 k7612 g7609)))
                                      (x7894
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7611 k7612 g7610))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7613 x7895 x7894)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7611 k7612 x7893)))))
                               g7892))))
                          g7891))
                       xj7607
                       xk7608
                       (lambda (a b)
                         (letrec*
                          ((g7890
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7890))))))
                  g7889)))
               (vector-ref
                (letrec*
                 ((xj7614
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7615
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7896
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7617 k7618 f7619)
                         (letrec*
                          ((g7898
                            (lambda (g7616)
                              (letrec*
                               ((g7899
                                 (letrec*
                                  ((x7900
                                    (letrec*
                                     ((x7901
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7617 k7618 g7616))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7619 x7901)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7617 k7618 x7900)))))
                               g7899))))
                          g7898))
                       xj7614
                       xk7615
                       (lambda (v i)
                         (letrec*
                          ((g7897
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7897))))))
                  g7896)))
               (vector-set!
                (letrec*
                 ((xj7620
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7621
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7902
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7624 k7625 f7626)
                         (letrec*
                          ((g7904
                            (lambda (g7622 g7623)
                              (letrec*
                               ((g7905
                                 (letrec*
                                  ((x7906
                                    (letrec*
                                     ((x7908
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7624 k7625 g7622)))
                                      (x7907
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7624 k7625 g7623))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7626 x7908 x7907)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7624 k7625 x7906)))))
                               g7905))))
                          g7904))
                       xj7620
                       xk7621
                       (lambda (vec i v)
                         (letrec*
                          ((g7903
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7903))))))
                  g7902)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7909
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7909)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (letrec*
                         ((x7912
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7911)))))
                   g7910)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7916))))
                    (g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x-cnd7918
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7918
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7922))))
                          (x7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7920)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7921 x7919)))))))
                   g7915)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7924)))))
                   g7923)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (letrec*
                         ((x7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7928)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7927)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7926)))))
                   g7925)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7932)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7931)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7930)))))
                   g7929)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7937))))
                    (g7935
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
                       ((g7938
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7939 res))
                       g7939))))
                   g7935)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7942)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7944
                        (letrec*
                         ((x7945
                           (letrec*
                            ((x7946
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7946)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7945)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7944)))))
                   g7943)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7949))))
                    (g7948
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7950
                        #f
                        (letrec*
                         ((x-cnd7951
                           (letrec*
                            ((x7952
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7952 k)))))
                         (if x-cnd7951
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7953)))))))))
                   g7948)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7955)))))
                   g7954)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7958))))
                    (g7957
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7959
                        ""
                        (letrec*
                         ((x7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7963))))
                          (x7960
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7961)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7962 x7960)))))))
                   g7957)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7969
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7969))))
                   g7966)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (letrec*
                            ((x7973
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7972)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7971)))))
                   g7970)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7979
                        x
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7980
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7981 x7980)))))))
                   g7976)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7982
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7982)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (letrec*
                         ((x7985 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7985)))))
                      (if x-cnd7984
                        (letrec*
                         ((x7986 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7986)))
                        #f))))
                   g7983)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7989))))
                    (g7988
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7990
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7991 (if val7517 val7517 #f)))
                             g7991)))))
                       g7990))))
                   g7988)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7993
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7993 9)))))
                      (letrec*
                       ((g7994
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7995
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7995 10)))))
                            (letrec*
                             ((g7996
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7997
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7997 32))))))
                             g7996)))))
                       g7994))))
                   g7992)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x8000)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7999)))))
                   g7998)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8003
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x8003))))
                    (g8002
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g8002)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8004 #f)) g8004)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x8006)))))
                   g8005)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8009
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x8009))))
                    (g8008
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8010
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g8008)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8012
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd8013
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8013
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8014
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd8015
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8015
                                       (letrec*
                                        ((x-cnd8016
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8016
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8017
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd8018
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8018
                                             (letrec*
                                              ((x-cnd8019
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8019
                                                (letrec*
                                                 ((x-cnd8020
                                                   (letrec*
                                                    ((x8022
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8021
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x8022 x8021)))))
                                                 (if x-cnd8020
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8023
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x8024 x8023)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8025
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd8026
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8026
                                                (letrec*
                                                 ((x-cnd8027
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8027
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8028
                                                       (letrec*
                                                        ((x-cnd8029
                                                          (letrec*
                                                           ((x8030
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
                                                             (= x8030 n)))))
                                                        (if x-cnd8029
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8031
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
                                                                    ((g8032
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd8033
                                                                           (letrec*
                                                                            ((x8035
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
                                                                             (x8034
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
                                                                               x8035
                                                                               x8034)))))
                                                                         (if x-cnd8033
                                                                           (letrec*
                                                                            ((x8036
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
                                                                               x8036)))
                                                                           #f)))))
                                                                    g8032))))
                                                                g8031))))
                                                           (letrec*
                                                            ((g8037
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8037))
                                                          #f))))
                                                     g8028))
                                                   #f))
                                                #f)))))
                                         g8025)))))
                                   g8017)))))
                             g8014)))))
                       g8012))))
                   g8011)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8039
                        (letrec*
                         ((x8040
                           (letrec*
                            ((x8041
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x8041)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x8040)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x8039)))))
                   g8038)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8042
                     (letrec*
                      ((x8043
                        (letrec*
                         ((x8044
                           (letrec*
                            ((x8045
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x8045)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x8044)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x8043)))))
                   g8042)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8046
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g8046)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x8049
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x8049))))
                    (g8048
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g8050
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g8051 (if val7526 val7526 #f)))
                             g8051)))))
                       g8050))))
                   g8048)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8052
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x8055))))
                    (g8053
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x8056))))
                    (g8054
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
                       ((g8057
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8058 res))
                       g8058))))
                   g8054)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8059
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g8059)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x8063))))
                    (g8061
                     (letrec*
                      ((x8064
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x8064))))
                    (g8062
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8065
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8065))))
                   g8062)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x8067
                        (letrec*
                         ((x8068
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x8068)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x8067)))))
                   g8066)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x8070
                        (letrec*
                         ((x8071
                           (letrec*
                            ((x8072
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x8072)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x8071)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x8070)))))
                   g8069)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8074
                        (letrec*
                         ((x8075
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x8075)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x8074)))))
                   g8073)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8076
                     (letrec*
                      ((x8077
                        (letrec*
                         ((x8078
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x8078)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x8077)))))
                   g8076)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8082
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x8082))))
                    (g8080
                     (letrec*
                      ((x8083
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x8083))))
                    (g8081
                     (letrec*
                      ((x8084
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x8084)))))
                   g8081)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8086
                        (letrec*
                         ((x8087
                           (letrec*
                            ((x8088
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x8088)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x8087)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x8086)))))
                   g8085)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x8091))))
                    (g8090
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g8090)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8092
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g8092)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8094
                        (letrec*
                         ((x8095
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x8095)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x8094)))))
                   g8093)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8096
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g8096)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x8099))))
                    (g8098
                     (letrec*
                      ((x-cnd8100
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8100
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x8103
                           (letrec*
                            ((x8104
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x8104))))
                          (x8101
                           (letrec*
                            ((x8102
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x8102)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x8103 x8101)))))))
                   g8098)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8106
                        (letrec*
                         ((x8107
                           (letrec*
                            ((x8108
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x8108)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x8107)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x8106)))))
                   g8105)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8110
                        (letrec*
                         ((x8111
                           (letrec*
                            ((x8112
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x8112)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x8111)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x8110)))))
                   g8109)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8115
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x8115))))
                    (g8114
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x8116)))))
                   g8114)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8118
                        (letrec*
                         ((x8119
                           (letrec*
                            ((x8120
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x8120)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x8119)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x8118)))))
                   g8117)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x8124))))
                    (g8122
                     (letrec*
                      ((x8125
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x8125))))
                    (g8123
                     (letrec*
                      ((x-cnd8126
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8126
                        (letrec*
                         ((g8127
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g8127)
                        (letrec*
                         ((x-cnd8128
                           (letrec*
                            ((x8129
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x8129)))))
                         (if x-cnd8128
                           (letrec*
                            ((g8130
                              (letrec*
                               ((x8131
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x8131)))))
                            g8130)
                           (letrec*
                            ((x-cnd8132
                              (letrec*
                               ((x8133
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x8133)))))
                            (if x-cnd8132
                              (letrec*
                               ((g8134
                                 (letrec*
                                  ((x8136
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x8135
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x8136 x8135)))))
                               g8134)
                              (letrec*
                               ((x-cnd8137
                                 (letrec*
                                  ((x8138
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x8138)))))
                               (if x-cnd8137
                                 (letrec*
                                  ((g8139
                                    (letrec*
                                     ((x8142
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x8141
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8140
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x8142 x8141 x8140)))))
                                  g8139)
                                 (letrec*
                                  ((x-cnd8143
                                    (letrec*
                                     ((x8144
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x8144)))))
                                  (if x-cnd8143
                                    (letrec*
                                     ((g8145
                                       (letrec*
                                        ((x8149
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x8148
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8147
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8146
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x8149 x8148 x8147 x8146)))))
                                     g8145)
                                    (letrec*
                                     ((x-cnd8150
                                       (letrec*
                                        ((x8151
                                          (letrec*
                                           ((x8152
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x8152)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x8151)))))
                                     (if x-cnd8150
                                       (letrec*
                                        ((g8153
                                          (letrec*
                                           ((x8159
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8158
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8157
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8156
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8154
                                             (letrec*
                                              ((x8155
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8155)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8159
                                              x8158
                                              x8157
                                              x8156
                                              x8154)))))
                                        g8153)
                                       (letrec*
                                        ((x-cnd8160
                                          (letrec*
                                           ((x8161
                                             (letrec*
                                              ((x8162
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8162)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8161)))))
                                        (if x-cnd8160
                                          (letrec*
                                           ((g8163
                                             (letrec*
                                              ((x8171
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8170
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8169
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8168
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8166
                                                (letrec*
                                                 ((x8167
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8167))))
                                               (x8164
                                                (letrec*
                                                 ((x8165
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8165)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8171
                                                 x8170
                                                 x8169
                                                 x8168
                                                 x8166
                                                 x8164)))))
                                           g8163)
                                          (letrec*
                                           ((x-cnd8172
                                             (letrec*
                                              ((x8173
                                                (letrec*
                                                 ((x8174
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8174)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8173)))))
                                           (if x-cnd8172
                                             (letrec*
                                              ((g8175
                                                (letrec*
                                                 ((x8185
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8184
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8183
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8182
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8180
                                                   (letrec*
                                                    ((x8181
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8181))))
                                                  (x8178
                                                   (letrec*
                                                    ((x8179
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8179))))
                                                  (x8176
                                                   (letrec*
                                                    ((x8177
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8177)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8185
                                                    x8184
                                                    x8183
                                                    x8182
                                                    x8180
                                                    x8178
                                                    x8176)))))
                                              g8175)
                                             (letrec*
                                              ((g8186
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8186)))))))))))))))))))
                   g8123)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8187
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8189))))
                    (g8188
                     (letrec*
                      ((x-cnd8190
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8190
                        #f
                        (letrec*
                         ((x-cnd8191
                           (letrec*
                            ((x8192
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8192 e)))))
                         (if x-cnd8191
                           l
                           (letrec*
                            ((x8193
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8193)))))))))
                   g8188)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((x8195
                        (letrec*
                         ((x8196
                           (letrec*
                            ((x8197
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8197)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8196)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8195)))))
                   g8194)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x8199
                        (letrec*
                         ((x8200
                           (letrec*
                            ((x8201
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8201)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8200)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8199)))))
                   g8198)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8202
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8202)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8203
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8205))))
                    (g8204
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8204)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8206
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8207
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8207))))
                   g8206)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8208
                     (letrec*
                      ((x8209
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8209)))))
                   g8208)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8210
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8211
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8211
                           (letrec*
                            ((x8212
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8212)))
                           #f))))
                      (letrec*
                       ((g8213
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8213))))
                   g8210)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8214
                     (letrec*
                      ((x8215
                        (letrec*
                         ((x8216
                           (letrec*
                            ((x8217
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8217)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8216)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8215)))))
                   g8214)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8218
                     (letrec*
                      ((x-cnd8219
                        (letrec*
                         ((x8220 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8220 c)))))
                      (if x-cnd8219
                        (letrec*
                         ((x8221 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8221)))
                        #f))))
                   g8218)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8222
                     (letrec*
                      ((x8224
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8224))))
                    (g8223
                     (letrec*
                      ((x-cnd8225
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8225
                        #f
                        (letrec*
                         ((x-cnd8226
                           (letrec*
                            ((x8227
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8227 k)))))
                         (if x-cnd8226
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8228
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8228)))))))))
                   g8223)))
               (not (lambda (x) (letrec* ((g8229 (if x #f #t))) g8229)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8230
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8230)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8231
                     (letrec*
                      ((x8233
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8233))))
                    (g8232
                     (letrec*
                      ((x-cnd8234
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8234
                        #f
                        (letrec*
                         ((x-cnd8235
                           (letrec*
                            ((x8236
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8236 e)))))
                         (if x-cnd8235
                           l
                           (letrec*
                            ((x8237
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8237)))))))))
                   g8232)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((x8239
                        (letrec*
                         ((x8240
                           (letrec*
                            ((x8241
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8241)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8240)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8239)))))
                   g8238)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8242
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8244))))
                    (g8243
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8245
                             (letrec*
                              ((x-cnd8246
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8246
                                0
                                (letrec*
                                 ((x8247
                                   (letrec*
                                    ((x8248
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8248)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8247)))))))
                           g8245))))
                      (letrec*
                       ((g8249
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8249))))
                   g8243)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8250
                     (letrec*
                      ((x8253
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8253))))
                    (g8251
                     (letrec*
                      ((x8254
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8254))))
                    (g8252
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8255
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8255))))
                   g8252)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8256
                     (letrec*
                      ((x8257
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8257)))))
                   g8256)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8258
                     (letrec*
                      ((x8259
                        (letrec*
                         ((x8260
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8260)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8259)))))
                   g8258)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x8263
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8263))))
                    (g8262
                     (letrec*
                      ((x-cnd8264
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8264
                        #f
                        (letrec*
                         ((x-cnd8265
                           (letrec*
                            ((x8266
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8266 k)))))
                         (if x-cnd8265
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8267
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8267)))))))))
                   g8262)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8268
                     (letrec*
                      ((x8269
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8269)))))
                   g8268)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8270
                     (letrec*
                      ((x8273
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8273))))
                    (g8271
                     (letrec*
                      ((x8274
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8274))))
                    (g8272
                     (letrec*
                      ((x8275
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8275)))))
                   g8272)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8277
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8277))))
                   g8276)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8278
                     (letrec*
                      ((x8281
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8281))))
                    (g8279
                     (letrec*
                      ((x8282
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8282))))
                    (g8280
                     (letrec*
                      ((x-cnd8283
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8283
                        #t
                        (letrec*
                         ((x-cnd8284
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8284
                           (letrec*
                            ((g8285
                              (letrec*
                               ((x8287
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8287))))
                             (g8286
                              (letrec*
                               ((x8288
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8288)))))
                            g8286)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8280)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8289
                     (letrec*
                      ((x8291
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8291))))
                    (g8290
                     (letrec*
                      ((x-cnd8292
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8292
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8290)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8293
                     (letrec*
                      ((x8296
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8296))))
                    (g8294
                     (letrec*
                      ((x8297
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8297))))
                    (g8295
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8298
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8298))))
                   g8295)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8299
                     (letrec*
                      ((x8300
                        (letrec*
                         ((x8301
                           (letrec*
                            ((x8302
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8302)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8301)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8300)))))
                   g8299)))
               (newline (lambda () (letrec* ((g8303 #f)) g8303)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8304
                     (letrec*
                      ((x8306
                        (letrec*
                         ((x8307
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8307))))
                       (x8305
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8306 x8305)))))
                   g8304)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8308
                     (letrec*
                      ((x8310
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8310))))
                    (g8309
                     (letrec*
                      ((x8311
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8311)))))
                   g8309)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8312
                     (letrec*
                      ((x8316
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8316))))
                    (g8313
                     (letrec*
                      ((x8317
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8317))))
                    (g8314
                     (letrec*
                      ((x8318
                        (letrec*
                         ((x8319
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8319)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8318))))
                    (g8315
                     (letrec*
                      ((x-cnd8320
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8320
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8322
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8321
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8322 x8321)))))))
                   g8315)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8323
                     (letrec*
                      ((x-cnd8324
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8324
                        a
                        (letrec*
                         ((x8325
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8325)))))))
                   g8323)))
               (image
                (lambda ()
                  (letrec*
                   ((g8326
                     (begin
                       (write '(funapp 1472 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1472 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1472 62))
                          (display "\n")
                          '())))))
                   g8326)))
               (image?
                (lambda (image7777)
                  (letrec*
                   ((g8327
                     (letrec*
                      ((x8328
                        (begin
                          (write '(funapp 1477 39))
                          (display "\n")
                          (car image7777))))
                      (begin
                        (write '(funapp 1477 57))
                        (display "\n")
                        (eq?
                         x8328
                         (begin
                           (write '(funapp 1477 67))
                           (display "\n")
                           'image))))))
                   g8327)))
               (image/c
                (lambda (j7628 k7629 v7627)
                  (letrec*
                   ((g8329
                     (begin
                       (write '(funapp 1481 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1481 47))
                          (display "\n")
                          '())))))
                   g8329)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8330
                     (begin (write '(funapp 1482 57)) (display "\n") (image))))
                   g8330)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8331
                     (begin (write '(funapp 1483 60)) (display "\n") (image))))
                   g8331)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8332
                     (begin (write '(funapp 1485 54)) (display "\n") (image))))
                   g8332)))
               (posn
                (lambda (x7779 y7780)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8334
                        (letrec*
                         ((x8335
                           (begin
                             (write '(funapp 1493 34))
                             (display "\n")
                             (orig-cons
                              y7780
                              (begin
                                (write '(funapp 1493 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1494 26))
                           (display "\n")
                           (orig-cons x7779 x8335)))))
                      (begin
                        (write '(funapp 1495 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1495 33)) (display "\n") 'posn)
                         x8334)))))
                   g8333)))
               (posn?
                (lambda (posn7778)
                  (letrec*
                   ((g8336
                     (letrec*
                      ((x8337
                        (begin
                          (write '(funapp 1501 39))
                          (display "\n")
                          (car posn7778))))
                      (begin
                        (write '(funapp 1501 56))
                        (display "\n")
                        (eq?
                         x8337
                         (begin
                           (write '(funapp 1501 66))
                           (display "\n")
                           'posn))))))
                   g8336)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8338
                     (letrec*
                      ((x8339
                        (begin
                          (write '(funapp 1507 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1507 57))
                        (display "\n")
                        (orig-car x8339)))))
                   g8338)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8340
                     (letrec*
                      ((x8341
                        (letrec*
                         ((x8342
                           (begin
                             (write '(funapp 1515 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1515 60))
                           (display "\n")
                           (orig-cdr x8342)))))
                      (begin
                        (write '(funapp 1516 23))
                        (display "\n")
                        (orig-car x8341)))))
                   g8340)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8343
                     (letrec*
                      ((x-cnd8344
                        (letrec*
                         ((x8346
                           (begin
                             (write '(funapp 1525 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8345
                           (begin
                             (write '(funapp 1525 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1526 26))
                           (display "\n")
                           (= x8346 x8345)))))
                      (if x-cnd8344
                        (letrec*
                         ((x8348
                           (begin
                             (write '(funapp 1529 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8347
                           (begin
                             (write '(funapp 1529 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1530 26))
                           (display "\n")
                           (= x8348 x8347)))
                        #f))))
                   g8343)))
               (snake
                (lambda (dir7784 segs7785)
                  (letrec*
                   ((g8349
                     (letrec*
                      ((x8350
                        (letrec*
                         ((x8351
                           (begin
                             (write '(funapp 1540 34))
                             (display "\n")
                             (orig-cons
                              segs7785
                              (begin
                                (write '(funapp 1540 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1541 26))
                           (display "\n")
                           (orig-cons dir7784 x8351)))))
                      (begin
                        (write '(funapp 1542 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1542 33))
                           (display "\n")
                           'snake)
                         x8350)))))
                   g8349)))
               (snake?
                (lambda (snake7783)
                  (letrec*
                   ((g8352
                     (letrec*
                      ((x8353
                        (begin
                          (write '(funapp 1548 39))
                          (display "\n")
                          (car snake7783))))
                      (begin
                        (write '(funapp 1548 57))
                        (display "\n")
                        (eq?
                         x8353
                         (begin
                           (write '(funapp 1548 67))
                           (display "\n")
                           'snake))))))
                   g8352)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8354
                     (letrec*
                      ((x8355
                        (begin
                          (write '(funapp 1554 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1554 58))
                        (display "\n")
                        (orig-car x8355)))))
                   g8354)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8356
                     (letrec*
                      ((x8357
                        (letrec*
                         ((x8358
                           (begin
                             (write '(funapp 1562 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1562 61))
                           (display "\n")
                           (orig-cdr x8358)))))
                      (begin
                        (write '(funapp 1563 23))
                        (display "\n")
                        (orig-car x8357)))))
                   g8356)))
               (world
                (lambda (snake7789 food7790)
                  (letrec*
                   ((g8359
                     (letrec*
                      ((x8360
                        (letrec*
                         ((x8361
                           (begin
                             (write '(funapp 1572 34))
                             (display "\n")
                             (orig-cons
                              food7790
                              (begin
                                (write '(funapp 1572 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1573 26))
                           (display "\n")
                           (orig-cons snake7789 x8361)))))
                      (begin
                        (write '(funapp 1574 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1574 33))
                           (display "\n")
                           'world)
                         x8360)))))
                   g8359)))
               (world?
                (lambda (world7788)
                  (letrec*
                   ((g8362
                     (letrec*
                      ((x8363
                        (begin
                          (write '(funapp 1580 39))
                          (display "\n")
                          (car world7788))))
                      (begin
                        (write '(funapp 1580 57))
                        (display "\n")
                        (eq?
                         x8363
                         (begin
                           (write '(funapp 1580 67))
                           (display "\n")
                           'world))))))
                   g8362)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8364
                     (letrec*
                      ((x8365
                        (begin
                          (write '(funapp 1586 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1586 58))
                        (display "\n")
                        (orig-car x8365)))))
                   g8364)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8366
                     (letrec*
                      ((x8367
                        (letrec*
                         ((x8368
                           (begin
                             (write '(funapp 1594 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1594 61))
                           (display "\n")
                           (orig-cdr x8368)))))
                      (begin
                        (write '(funapp 1595 23))
                        (display "\n")
                        (orig-car x8367)))))
                   g8366)))
               (DIR/C
                (lambda (g7634 g7635 g7636)
                  (letrec*
                   ((g8369
                     (letrec*
                      ((x-cnd8370
                        (begin
                          (write '(funapp 1603 25))
                          (display "\n")
                          ((lambda (v7633)
                             (letrec*
                              ((g8371
                                (letrec*
                                 ((x-cnd8372
                                   (begin
                                     (write '(funapp 1607 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1607 48))
                                        (display "\n")
                                        'up)
                                      v7633))))
                                 (if x-cnd8372
                                   #t
                                   (letrec*
                                    ((x-cnd8373
                                      (begin
                                        (write '(funapp 1611 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1611 51))
                                           (display "\n")
                                           'down)
                                         v7633))))
                                    (if x-cnd8373
                                      #t
                                      (letrec*
                                       ((x-cnd8374
                                         (begin
                                           (write '(funapp 1615 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1615 54))
                                              (display "\n")
                                              'left)
                                            v7633))))
                                       (if x-cnd8374
                                         #t
                                         (begin
                                           (write '(funapp 1618 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1618 44))
                                              (display "\n")
                                              'right)
                                            v7633))))))))))
                              g8371))
                           g7636))))
                      (if x-cnd8370
                        g7636
                        (begin
                          (write '(blame g7634 1623 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7634)))))))
                   g8369)))
               (POSN/C
                (lambda (j7638 k7639 v7637)
                  (letrec*
                   ((g8375
                     (letrec*
                      ((checked7640
                        (letrec*
                         ((x8376
                           (letrec*
                            ((x8377
                              (begin
                                (write '(funapp 1643 37))
                                (display "\n")
                                (orig-cdr v7637))))
                            (begin
                              (write '(funapp 1644 29))
                              (display "\n")
                              (orig-car x8377)))))
                         (begin
                           (write '(funapp 1645 26))
                           (display "\n")
                           (real?/c j7638 k7639 x8376)))))
                      (letrec*
                       ((g8378
                         (letrec*
                          ((checked7641
                            (letrec*
                             ((x8379
                               (letrec*
                                ((x8380
                                  (letrec*
                                   ((x8381
                                     (begin
                                       (write '(funapp 1655 44))
                                       (display "\n")
                                       (orig-cdr v7637))))
                                   (begin
                                     (write '(funapp 1656 36))
                                     (display "\n")
                                     (orig-cdr x8381)))))
                                (begin
                                  (write '(funapp 1657 33))
                                  (display "\n")
                                  (orig-car x8380)))))
                             (begin
                               (write '(funapp 1658 30))
                               (display "\n")
                               (real?/c j7638 k7639 x8379)))))
                          (letrec*
                           ((g8382
                             (letrec*
                              ((x8383
                                (letrec*
                                 ((x8384
                                   (begin
                                     (write '(funapp 1664 42))
                                     (display "\n")
                                     (cons
                                      checked7641
                                      (begin
                                        (write '(funapp 1664 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1665 34))
                                   (display "\n")
                                   (cons checked7640 x8384)))))
                              (begin
                                (write '(funapp 1666 31))
                                (display "\n")
                                (cons posn x8383)))))
                           g8382))))
                       g8378))))
                   g8375)))
               (SNAKE/C
                (lambda (j7644 k7645 v7643)
                  (letrec*
                   ((g8385
                     (letrec*
                      ((checked7646
                        (letrec*
                         ((x8386
                           (letrec*
                            ((x8387
                              (begin
                                (write '(funapp 1679 37))
                                (display "\n")
                                (orig-cdr v7643))))
                            (begin
                              (write '(funapp 1680 29))
                              (display "\n")
                              (orig-car x8387)))))
                         (begin
                           (write '(funapp 1681 26))
                           (display "\n")
                           (DIR/C j7644 k7645 x8386)))))
                      (letrec*
                       ((g8388
                         (letrec*
                          ((checked7647
                            (letrec*
                             ((x8392
                               (letrec*
                                ((x8393
                                  (begin
                                    (write '(funapp 1689 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1690 33))
                                  (display "\n")
                                  (and/c cons?/c x8393))))
                              (x8389
                               (letrec*
                                ((x8390
                                  (letrec*
                                   ((x8391
                                     (begin
                                       (write '(funapp 1695 44))
                                       (display "\n")
                                       (orig-cdr v7643))))
                                   (begin
                                     (write '(funapp 1696 36))
                                     (display "\n")
                                     (orig-cdr x8391)))))
                                (begin
                                  (write '(funapp 1697 33))
                                  (display "\n")
                                  (orig-car x8390)))))
                             (begin
                               (write '(funapp 1698 30))
                               (display "\n")
                               (x8392 j7644 k7645 x8389)))))
                          (letrec*
                           ((g8394
                             (letrec*
                              ((x8395
                                (letrec*
                                 ((x8396
                                   (begin
                                     (write '(funapp 1704 42))
                                     (display "\n")
                                     (cons
                                      checked7647
                                      (begin
                                        (write '(funapp 1704 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1705 34))
                                   (display "\n")
                                   (cons checked7646 x8396)))))
                              (begin
                                (write '(funapp 1706 31))
                                (display "\n")
                                (cons snake x8395)))))
                           g8394))))
                       g8388))))
                   g8385)))
               (WORLD/C
                (lambda (j7650 k7651 v7649)
                  (letrec*
                   ((g8397
                     (letrec*
                      ((checked7652
                        (letrec*
                         ((x8398
                           (letrec*
                            ((x8399
                              (begin
                                (write '(funapp 1719 37))
                                (display "\n")
                                (orig-cdr v7649))))
                            (begin
                              (write '(funapp 1720 29))
                              (display "\n")
                              (orig-car x8399)))))
                         (begin
                           (write '(funapp 1721 26))
                           (display "\n")
                           (SNAKE/C j7650 k7651 x8398)))))
                      (letrec*
                       ((g8400
                         (letrec*
                          ((checked7653
                            (letrec*
                             ((x8401
                               (letrec*
                                ((x8402
                                  (letrec*
                                   ((x8403
                                     (begin
                                       (write '(funapp 1731 44))
                                       (display "\n")
                                       (orig-cdr v7649))))
                                   (begin
                                     (write '(funapp 1732 36))
                                     (display "\n")
                                     (orig-cdr x8403)))))
                                (begin
                                  (write '(funapp 1733 33))
                                  (display "\n")
                                  (orig-car x8402)))))
                             (begin
                               (write '(funapp 1734 30))
                               (display "\n")
                               (POSN/C j7650 k7651 x8401)))))
                          (letrec*
                           ((g8404
                             (letrec*
                              ((x8405
                                (letrec*
                                 ((x8406
                                   (begin
                                     (write '(funapp 1740 42))
                                     (display "\n")
                                     (cons
                                      checked7653
                                      (begin
                                        (write '(funapp 1740 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1741 34))
                                   (display "\n")
                                   (cons checked7652 x8406)))))
                              (begin
                                (write '(funapp 1742 31))
                                (display "\n")
                                (cons world x8405)))))
                           g8404))))
                       g8400))))
                   g8397)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1749 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1750 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1752 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1753 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1754 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1756 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8408
                   (letrec*
                    ((x8409
                      (letrec*
                       ((x8410
                         (begin
                           (write '(funapp 1761 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1761 59))
                         (display "\n")
                         (cons x8410 empty)))))
                    (begin
                      (write '(funapp 1762 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1762 27)) (display "\n") 'right)
                       x8409))))
                  (x8407
                   (begin
                     (write '(funapp 1763 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1764 18))
                   (display "\n")
                   (world x8408 x8407))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8411
                     (letrec*
                      ((x8412
                        (letrec*
                         ((x8413
                           (begin
                             (write '(funapp 1771 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1771 61))
                           (display "\n")
                           (car x8413)))))
                      (begin
                        (write '(funapp 1772 23))
                        (display "\n")
                        (head-collide? x8412)))))
                   g8411)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8414
                     (letrec*
                      ((val7533
                        (letrec*
                         ((x8415
                           (begin
                             (write '(funapp 1779 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1779 63))
                           (display "\n")
                           (<= x8415 0)))))
                      (letrec*
                       ((g8416
                         (if val7533
                           val7533
                           (letrec*
                            ((val7534
                              (letrec*
                               ((x8417
                                 (begin
                                   (write '(funapp 1787 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1788 32))
                                 (display "\n")
                                 (>= x8417 BOARD-WIDTH)))))
                            (letrec*
                             ((g8418
                               (if val7534
                                 val7534
                                 (letrec*
                                  ((val7535
                                    (letrec*
                                     ((x8419
                                       (begin
                                         (write '(funapp 1796 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1797 38))
                                       (display "\n")
                                       (<= x8419 0)))))
                                  (letrec*
                                   ((g8420
                                     (if val7535
                                       val7535
                                       (letrec*
                                        ((x8421
                                          (begin
                                            (write '(funapp 1803 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1804 41))
                                          (display "\n")
                                          (>= x8421 BOARD-HEIGHT))))))
                                   g8420)))))
                             g8418)))))
                       g8416))))
                   g8414)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((x8425
                        (letrec*
                         ((x8426
                           (begin
                             (write '(funapp 1814 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1814 67))
                           (display "\n")
                           (car x8426))))
                       (x8423
                        (letrec*
                         ((x8424
                           (begin
                             (write '(funapp 1816 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1816 61))
                           (display "\n")
                           (cdr x8424)))))
                      (begin
                        (write '(funapp 1817 23))
                        (display "\n")
                        (segs-self-collide? x8425 x8423)))))
                   g8422)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8427
                     (letrec*
                      ((x-cnd8428
                        (begin
                          (write '(funapp 1824 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8428
                        (letrec* ((g8429 #f)) g8429)
                        (letrec*
                         ((g8430
                           (letrec*
                            ((x8433
                              (letrec*
                               ((x8434
                                 (begin
                                   (write '(funapp 1831 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 1831 61))
                                 (display "\n")
                                 (posn=? x8434 h))))
                             (x8431
                              (letrec*
                               ((x8432
                                 (begin
                                   (write '(funapp 1834 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 1835 32))
                                 (display "\n")
                                 (segs-self-collide? h x8432)))))
                            (begin
                              (write '(funapp 1836 29))
                              (display "\n")
                              (or x8433 x8431)))))
                         g8430)))))
                   g8427)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8435
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 1844 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8436
                         (letrec*
                          ((x-cnd8437
                            (begin
                              (write '(funapp 1848 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8437
                            (letrec* ((g8438 empty)) g8438)
                            (letrec*
                             ((g8439
                               (letrec*
                                ((x8441
                                  (begin
                                    (write '(funapp 1854 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8440
                                  (begin
                                    (write '(funapp 1854 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 1855 33))
                                  (display "\n")
                                  (cons x8441 x8440)))))
                             g8439)))))
                       g8436))))
                   g8435)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8442
                     (letrec*
                      ((x-cnd8443
                        (begin
                          (write '(funapp 1864 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1864 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8443
                        (letrec*
                         ((g8444
                           (letrec*
                            ((x8446
                              (letrec*
                               ((x8447
                                 (begin
                                   (write '(funapp 1870 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 1870 63))
                                 (display "\n")
                                 (add1 x8447))))
                             (x8445
                              (begin
                                (write '(funapp 1871 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 1872 29))
                              (display "\n")
                              (posn x8446 x8445)))))
                         g8444)
                        (letrec*
                         ((x-cnd8448
                           (begin
                             (write '(funapp 1875 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1875 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8448
                           (letrec*
                            ((g8449
                              (letrec*
                               ((x8451
                                 (letrec*
                                  ((x8452
                                    (begin
                                      (write '(funapp 1881 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1881 66))
                                    (display "\n")
                                    (sub1 x8452))))
                                (x8450
                                 (begin
                                   (write '(funapp 1882 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1883 32))
                                 (display "\n")
                                 (posn x8451 x8450)))))
                            g8449)
                           (letrec*
                            ((x-cnd8453
                              (begin
                                (write '(funapp 1886 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 1886 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8453
                              (letrec*
                               ((g8454
                                 (letrec*
                                  ((x8457
                                    (begin
                                      (write '(funapp 1891 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8455
                                    (letrec*
                                     ((x8456
                                       (begin
                                         (write '(funapp 1894 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1895 38))
                                       (display "\n")
                                       (sub1 x8456)))))
                                  (begin
                                    (write '(funapp 1896 35))
                                    (display "\n")
                                    (posn x8457 x8455)))))
                               g8454)
                              (letrec*
                               ((g8458
                                 (letrec*
                                  ((x8461
                                    (begin
                                      (write '(funapp 1901 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8459
                                    (letrec*
                                     ((x8460
                                       (begin
                                         (write '(funapp 1904 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1905 38))
                                       (display "\n")
                                       (add1 x8460)))))
                                  (begin
                                    (write '(funapp 1906 35))
                                    (display "\n")
                                    (posn x8461 x8459)))))
                               g8458)))))))))
                   g8442)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8462
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1914 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8463
                         (letrec*
                          ((x8464
                            (letrec*
                             ((x8467
                               (letrec*
                                ((x8468
                                  (letrec*
                                   ((x8469
                                     (begin
                                       (write '(funapp 1924 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1925 36))
                                     (display "\n")
                                     (car x8469)))))
                                (begin
                                  (write '(funapp 1926 33))
                                  (display "\n")
                                  (next-head x8468 d))))
                              (x8465
                               (letrec*
                                ((x8466
                                  (begin
                                    (write '(funapp 1929 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 1930 33))
                                  (display "\n")
                                  (cut-tail x8466)))))
                             (begin
                               (write '(funapp 1931 30))
                               (display "\n")
                               (cons x8467 x8465)))))
                          (begin
                            (write '(funapp 1932 27))
                            (display "\n")
                            (snake d x8464)))))
                       g8463))))
                   g8462)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8470
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1940 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8471
                         (letrec*
                          ((x8472
                            (letrec*
                             ((x8474
                               (letrec*
                                ((x8475
                                  (letrec*
                                   ((x8476
                                     (begin
                                       (write '(funapp 1950 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1951 36))
                                     (display "\n")
                                     (car x8476)))))
                                (begin
                                  (write '(funapp 1952 33))
                                  (display "\n")
                                  (next-head x8475 d))))
                              (x8473
                               (begin
                                 (write '(funapp 1953 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 1954 30))
                               (display "\n")
                               (cons x8474 x8473)))))
                          (begin
                            (write '(funapp 1955 27))
                            (display "\n")
                            (snake d x8472)))))
                       g8471))))
                   g8470)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8477
                     (letrec*
                      ((x-cnd8478
                        (begin
                          (write '(funapp 1963 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8478
                        (letrec*
                         ((g8479
                           (begin
                             (write '(funapp 1965 42))
                             (display "\n")
                             (snake-eat w))))
                         g8479)
                        (letrec*
                         ((g8480
                           (letrec*
                            ((x8482
                              (letrec*
                               ((x8483
                                 (begin
                                   (write '(funapp 1971 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 1972 32))
                                 (display "\n")
                                 (snake-slither x8483))))
                             (x8481
                              (begin
                                (write '(funapp 1973 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 1974 29))
                              (display "\n")
                              (world x8482 x8481)))))
                         g8480)))))
                   g8477)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8484
                     (letrec*
                      ((x8488
                        (begin
                          (write '(funapp 1982 31))
                          (display "\n")
                          (world-food w)))
                       (x8485
                        (letrec*
                         ((x8486
                           (letrec*
                            ((x8487
                              (begin
                                (write '(funapp 1987 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1988 29))
                              (display "\n")
                              (snake-segs x8487)))))
                         (begin
                           (write '(funapp 1989 26))
                           (display "\n")
                           (car x8486)))))
                      (begin
                        (write '(funapp 1990 23))
                        (display "\n")
                        (posn=? x8488 x8485)))))
                   g8484)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8489
                     (letrec*
                      ((x8490
                        (begin
                          (write '(funapp 1996 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 1996 58))
                        (display "\n")
                        (snake dir x8490)))))
                   g8489)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8491
                     (letrec*
                      ((x8493
                        (letrec*
                         ((x8494
                           (begin
                             (write '(funapp 2005 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2006 26))
                           (display "\n")
                           (snake-change-direction x8494 dir))))
                       (x8492
                        (begin
                          (write '(funapp 2007 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2008 23))
                        (display "\n")
                        (world x8493 x8492)))))
                   g8491)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8495
                     (letrec*
                      ((x8499
                        (letrec*
                         ((x8500
                           (begin
                             (write '(funapp 2016 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2016 60))
                           (display "\n")
                           (snake-grow x8500))))
                       (x8496
                        (letrec*
                         ((x8498
                           (begin
                             (write '(funapp 2019 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8497
                           (begin
                             (write '(funapp 2019 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2020 26))
                           (display "\n")
                           (posn x8498 x8497)))))
                      (begin
                        (write '(funapp 2021 23))
                        (display "\n")
                        (world x8499 x8496)))))
                   g8495)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8501
                     (letrec*
                      ((x-cnd8502
                        (begin
                          (write '(funapp 2028 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8502
                        (letrec*
                         ((g8503
                           (begin
                             (write '(funapp 2030 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2030 61))
                                (display "\n")
                                'up)))))
                         g8503)
                        (letrec*
                         ((x-cnd8504
                           (begin
                             (write '(funapp 2032 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8504
                           (letrec*
                            ((g8505
                              (begin
                                (write '(funapp 2034 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2034 64))
                                   (display "\n")
                                   'down)))))
                            g8505)
                           (letrec*
                            ((x-cnd8506
                              (begin
                                (write '(funapp 2036 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8506
                              (letrec*
                               ((g8507
                                 (begin
                                   (write '(funapp 2039 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2039 59))
                                      (display "\n")
                                      'left)))))
                               g8507)
                              (letrec*
                               ((x-cnd8508
                                 (begin
                                   (write '(funapp 2042 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8508
                                 (letrec*
                                  ((g8509
                                    (begin
                                      (write '(funapp 2045 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2045 62))
                                         (display "\n")
                                         'right)))))
                                  g8509)
                                 (letrec* ((g8510 w)) g8510)))))))))))
                   g8501)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8511
                     (letrec*
                      ((val7536
                        (letrec*
                         ((x8512
                           (begin
                             (write '(funapp 2056 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2057 26))
                           (display "\n")
                           (snake-wall-collide? x8512)))))
                      (letrec*
                       ((g8513
                         (if val7536
                           val7536
                           (letrec*
                            ((x8514
                              (begin
                                (write '(funapp 2063 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2064 29))
                              (display "\n")
                              (snake-self-collide? x8514))))))
                       g8513))))
                   g8511)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8515
                     (letrec*
                      ((x8518
                        (begin
                          (write '(funapp 2072 31))
                          (display "\n")
                          (world-snake w)))
                       (x8516
                        (letrec*
                         ((x8517
                           (begin
                             (write '(funapp 2075 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2076 26))
                           (display "\n")
                           (food+scene x8517 BACKGROUND)))))
                      (begin
                        (write '(funapp 2077 23))
                        (display "\n")
                        (snake+scene x8518 x8516)))))
                   g8515)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8519
                     (letrec*
                      ((x8521
                        (begin
                          (write '(funapp 2084 31))
                          (display "\n")
                          (posn-x f)))
                       (x8520
                        (begin
                          (write '(funapp 2084 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2085 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8521 x8520 scn)))))
                   g8519)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8522
                     (letrec*
                      ((x8525
                        (begin
                          (write '(funapp 2092 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8523
                        (letrec*
                         ((x8524
                           (begin
                             (write '(funapp 2095 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2096 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8524)))))
                      (begin
                        (write '(funapp 2097 23))
                        (display "\n")
                        (place-image img x8525 x8523 scn)))))
                   g8522)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8526
                     (letrec*
                      ((x8527
                        (begin
                          (write '(funapp 2104 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2105 23))
                        (display "\n")
                        (segments+scene x8527 scn)))))
                   g8526)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8528
                     (letrec*
                      ((x-cnd8529
                        (begin
                          (write '(funapp 2112 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8529
                        (letrec* ((g8530 scn)) g8530)
                        (letrec*
                         ((g8531
                           (letrec*
                            ((x8534
                              (begin
                                (write '(funapp 2118 37))
                                (display "\n")
                                (cdr segs)))
                             (x8532
                              (letrec*
                               ((x8533
                                 (begin
                                   (write '(funapp 2121 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2122 32))
                                 (display "\n")
                                 (segment+scene x8533 scn)))))
                            (begin
                              (write '(funapp 2123 29))
                              (display "\n")
                              (segments+scene x8534 x8532)))))
                         g8531)))))
                   g8528)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8535
                     (letrec*
                      ((x8537
                        (begin
                          (write '(funapp 2131 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8536
                        (begin
                          (write '(funapp 2131 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2132 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8537 x8536 scn)))))
                   g8535))))
              (letrec*
               ((g8538
                 (begin
                   (write '(funapp 2136 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2137 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8549
                          (letrec*
                           ((xj7655
                             (begin
                               (write '(funapp 2141 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2141 37))
                                  (display "\n")
                                  'module))))
                            (xk7656
                             (begin
                               (write '(funapp 2141 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2141 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8550
                              (begin
                                (write '(funapp 2144 27))
                                (display "\n")
                                ((lambda (j7659 k7660 f7661)
                                   (letrec*
                                    ((g8551
                                      (lambda (g7657 g7658)
                                        (letrec*
                                         ((g8552
                                           (letrec*
                                            ((x8553
                                              (letrec*
                                               ((x8555
                                                 (begin
                                                   (write '(funapp 2153 50))
                                                   (display "\n")
                                                   (POSN/C j7659 k7660 g7657)))
                                                (x8554
                                                 (begin
                                                   (write '(funapp 2154 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7659
                                                    k7660
                                                    g7658))))
                                               (begin
                                                 (write '(funapp 2155 42))
                                                 (display "\n")
                                                 (f7661 x8555 x8554)))))
                                            (begin
                                              (write '(funapp 2156 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7659
                                               k7660
                                               x8553)))))
                                         g8552))))
                                    g8551))
                                 xj7655
                                 xk7656
                                 posn=?))))
                            g8550)))
                         (x8544
                          (letrec*
                           ((x8545
                             (letrec*
                              ((x8548 (input))
                               (x8546
                                (letrec*
                                 ((x8547 (input)))
                                 (begin
                                   (write '(funapp 2169 56))
                                   (display "\n")
                                   (cons
                                    x8547
                                    (begin
                                      (write '(funapp 2169 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2170 27))
                                (display "\n")
                                (cons x8548 x8546)))))
                           (begin
                             (write '(funapp 2171 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2171 29))
                                (display "\n")
                                'posn)
                              x8545))))
                         (x8539
                          (letrec*
                           ((x8540
                             (letrec*
                              ((x8543 (input))
                               (x8541
                                (letrec*
                                 ((x8542 (input)))
                                 (begin
                                   (write '(funapp 2178 56))
                                   (display "\n")
                                   (cons
                                    x8542
                                    (begin
                                      (write '(funapp 2178 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2179 27))
                                (display "\n")
                                (cons x8543 x8541)))))
                           (begin
                             (write '(funapp 2180 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2180 29))
                                (display "\n")
                                'posn)
                              x8540)))))
                        (begin
                          (write '(funapp 2181 21))
                          (display "\n")
                          (x8549 x8544 x8539)))
                       (letrec*
                        ((xj7662
                          (begin
                            (write '(funapp 2183 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2183 34))
                               (display "\n")
                               'module))))
                         (xk7663
                          (begin
                            (write '(funapp 2183 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2183 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8556
                           (begin
                             (write '(funapp 2184 38))
                             (display "\n")
                             (WORLD/C xj7662 xk7663 WORLD))))
                         g8556))
                       (letrec*
                        ((xj7664
                          (begin
                            (write '(funapp 2186 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2186 34))
                               (display "\n")
                               'module))))
                         (xk7665
                          (begin
                            (write '(funapp 2186 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2186 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8557
                           (begin
                             (write '(funapp 2188 30))
                             (display "\n")
                             (image/c xj7664 xk7665 BACKGROUND))))
                         g8557))
                       (letrec*
                        ((xj7666
                          (begin
                            (write '(funapp 2191 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2191 34))
                               (display "\n")
                               'module))))
                         (xk7667
                          (begin
                            (write '(funapp 2191 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2191 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8558
                           (begin
                             (write '(funapp 2193 30))
                             (display "\n")
                             (image/c xj7666 xk7667 FOOD-IMAGE))))
                         g8558))
                       (letrec*
                        ((xj7668
                          (begin
                            (write '(funapp 2196 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2196 34))
                               (display "\n")
                               'module))))
                         (xk7669
                          (begin
                            (write '(funapp 2196 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2196 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8559
                           (begin
                             (write '(funapp 2198 30))
                             (display "\n")
                             (image/c xj7668 xk7669 SEGMENT-IMAGE))))
                         g8559))
                       (letrec*
                        ((xj7670
                          (begin
                            (write '(funapp 2201 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2201 34))
                               (display "\n")
                               'module))))
                         (xk7671
                          (begin
                            (write '(funapp 2201 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2201 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8560
                           (begin
                             (write '(funapp 2203 30))
                             (display "\n")
                             (real?/c xj7670 xk7671 GRID-SIZE))))
                         g8560))
                       (letrec*
                        ((xj7672
                          (begin
                            (write '(funapp 2206 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2206 34))
                               (display "\n")
                               'module))))
                         (xk7673
                          (begin
                            (write '(funapp 2206 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2206 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8561
                           (begin
                             (write '(funapp 2208 30))
                             (display "\n")
                             (real?/c xj7672 xk7673 BOARD-HEIGHT-PIXELS))))
                         g8561))
                       (letrec*
                        ((xj7674
                          (begin
                            (write '(funapp 2211 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2211 34))
                               (display "\n")
                               'module))))
                         (xk7675
                          (begin
                            (write '(funapp 2211 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2211 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8562
                           (begin
                             (write '(funapp 2213 30))
                             (display "\n")
                             (real?/c xj7674 xk7675 BOARD-WIDTH))))
                         g8562))
                       (letrec*
                        ((xj7676
                          (begin
                            (write '(funapp 2216 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2216 34))
                               (display "\n")
                               'module))))
                         (xk7677
                          (begin
                            (write '(funapp 2216 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2216 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8563
                           (begin
                             (write '(funapp 2218 30))
                             (display "\n")
                             (real?/c xj7676 xk7677 BOARD-HEIGHT))))
                         g8563))
                       (letrec*
                        ((x8569
                          (letrec*
                           ((xj7678
                             (begin
                               (write '(funapp 2223 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2223 37))
                                  (display "\n")
                                  'module))))
                            (xk7679
                             (begin
                               (write '(funapp 2223 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2223 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8570
                              (begin
                                (write '(funapp 2226 27))
                                (display "\n")
                                ((lambda (j7681 k7682 f7683)
                                   (letrec*
                                    ((g8571
                                      (lambda (g7680)
                                        (letrec*
                                         ((g8572
                                           (letrec*
                                            ((x8573
                                              (letrec*
                                               ((x8574
                                                 (begin
                                                   (write '(funapp 2235 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7681
                                                    k7682
                                                    g7680))))
                                               (begin
                                                 (write '(funapp 2236 42))
                                                 (display "\n")
                                                 (f7683 x8574)))))
                                            (begin
                                              (write '(funapp 2237 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7681
                                               k7682
                                               x8573)))))
                                         g8572))))
                                    g8571))
                                 xj7678
                                 xk7679
                                 snake-wall-collide?))))
                            g8570)))
                         (x8564
                          (letrec*
                           ((x8565
                             (letrec*
                              ((x8568 (input))
                               (x8566
                                (letrec*
                                 ((x8567 (input)))
                                 (begin
                                   (write '(funapp 2250 56))
                                   (display "\n")
                                   (cons
                                    x8567
                                    (begin
                                      (write '(funapp 2250 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2251 27))
                                (display "\n")
                                (cons x8568 x8566)))))
                           (begin
                             (write '(funapp 2252 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2252 29))
                                (display "\n")
                                'snake)
                              x8565)))))
                        (begin
                          (write '(funapp 2253 21))
                          (display "\n")
                          (x8569 x8564)))
                       (letrec*
                        ((x8580
                          (letrec*
                           ((xj7684
                             (begin
                               (write '(funapp 2257 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2257 37))
                                  (display "\n")
                                  'module))))
                            (xk7685
                             (begin
                               (write '(funapp 2257 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2257 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8581
                              (begin
                                (write '(funapp 2260 27))
                                (display "\n")
                                ((lambda (j7687 k7688 f7689)
                                   (letrec*
                                    ((g8582
                                      (lambda (g7686)
                                        (letrec*
                                         ((g8583
                                           (letrec*
                                            ((x8584
                                              (letrec*
                                               ((x8585
                                                 (begin
                                                   (write '(funapp 2269 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7687
                                                    k7688
                                                    g7686))))
                                               (begin
                                                 (write '(funapp 2270 42))
                                                 (display "\n")
                                                 (f7689 x8585)))))
                                            (begin
                                              (write '(funapp 2271 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7687
                                               k7688
                                               x8584)))))
                                         g8583))))
                                    g8582))
                                 xj7684
                                 xk7685
                                 snake-self-collide?))))
                            g8581)))
                         (x8575
                          (letrec*
                           ((x8576
                             (letrec*
                              ((x8579 (input))
                               (x8577
                                (letrec*
                                 ((x8578 (input)))
                                 (begin
                                   (write '(funapp 2284 56))
                                   (display "\n")
                                   (cons
                                    x8578
                                    (begin
                                      (write '(funapp 2284 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2285 27))
                                (display "\n")
                                (cons x8579 x8577)))))
                           (begin
                             (write '(funapp 2286 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2286 29))
                                (display "\n")
                                'snake)
                              x8576)))))
                        (begin
                          (write '(funapp 2287 21))
                          (display "\n")
                          (x8580 x8575)))
                       (letrec*
                        ((x8587
                          (letrec*
                           ((xj7690
                             (begin
                               (write '(funapp 2291 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2291 37))
                                  (display "\n")
                                  'module))))
                            (xk7691
                             (begin
                               (write '(funapp 2291 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2291 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8588
                              (begin
                                (write '(funapp 2294 27))
                                (display "\n")
                                ((lambda (j7693 k7694 f7695)
                                   (letrec*
                                    ((g8589
                                      (lambda (g7692)
                                        (letrec*
                                         ((g8590
                                           (letrec*
                                            ((x8595
                                              (begin
                                                (write '(funapp 2301 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8591
                                              (letrec*
                                               ((x8592
                                                 (letrec*
                                                  ((x8593
                                                    (letrec*
                                                     ((x8594
                                                       (begin
                                                         (write
                                                          '(funapp 2308 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2309 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8594)))))
                                                  (begin
                                                    (write '(funapp 2310 45))
                                                    (display "\n")
                                                    (x8593
                                                     j7693
                                                     k7694
                                                     g7692)))))
                                               (begin
                                                 (write '(funapp 2311 42))
                                                 (display "\n")
                                                 (f7695 x8592)))))
                                            (begin
                                              (write '(funapp 2312 39))
                                              (display "\n")
                                              (x8595 j7693 k7694 x8591)))))
                                         g8590))))
                                    g8589))
                                 xj7690
                                 xk7691
                                 cut-tail))))
                            g8588)))
                         (x8586 (input)))
                        (begin
                          (write '(funapp 2320 21))
                          (display "\n")
                          (x8587 x8586)))
                       (letrec*
                        ((x8601
                          (letrec*
                           ((xj7696
                             (begin
                               (write '(funapp 2324 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2324 37))
                                  (display "\n")
                                  'module))))
                            (xk7697
                             (begin
                               (write '(funapp 2324 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2324 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8602
                              (begin
                                (write '(funapp 2327 27))
                                (display "\n")
                                ((lambda (j7699 k7700 f7701)
                                   (letrec*
                                    ((g8603
                                      (lambda (g7698)
                                        (letrec*
                                         ((g8604
                                           (letrec*
                                            ((x8605
                                              (letrec*
                                               ((x8606
                                                 (begin
                                                   (write '(funapp 2336 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7699
                                                    k7700
                                                    g7698))))
                                               (begin
                                                 (write '(funapp 2337 42))
                                                 (display "\n")
                                                 (f7701 x8606)))))
                                            (begin
                                              (write '(funapp 2338 39))
                                              (display "\n")
                                              (SNAKE/C j7699 k7700 x8605)))))
                                         g8604))))
                                    g8603))
                                 xj7696
                                 xk7697
                                 snake-slither))))
                            g8602)))
                         (x8596
                          (letrec*
                           ((x8597
                             (letrec*
                              ((x8600 (input))
                               (x8598
                                (letrec*
                                 ((x8599 (input)))
                                 (begin
                                   (write '(funapp 2351 56))
                                   (display "\n")
                                   (cons
                                    x8599
                                    (begin
                                      (write '(funapp 2351 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2352 27))
                                (display "\n")
                                (cons x8600 x8598)))))
                           (begin
                             (write '(funapp 2353 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2353 29))
                                (display "\n")
                                'snake)
                              x8597)))))
                        (begin
                          (write '(funapp 2354 21))
                          (display "\n")
                          (x8601 x8596)))
                       (letrec*
                        ((x8612
                          (letrec*
                           ((xj7702
                             (begin
                               (write '(funapp 2358 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2358 37))
                                  (display "\n")
                                  'module))))
                            (xk7703
                             (begin
                               (write '(funapp 2358 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2358 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8613
                              (begin
                                (write '(funapp 2361 27))
                                (display "\n")
                                ((lambda (j7705 k7706 f7707)
                                   (letrec*
                                    ((g8614
                                      (lambda (g7704)
                                        (letrec*
                                         ((g8615
                                           (letrec*
                                            ((x8616
                                              (letrec*
                                               ((x8617
                                                 (begin
                                                   (write '(funapp 2370 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7705
                                                    k7706
                                                    g7704))))
                                               (begin
                                                 (write '(funapp 2371 42))
                                                 (display "\n")
                                                 (f7707 x8617)))))
                                            (begin
                                              (write '(funapp 2372 39))
                                              (display "\n")
                                              (SNAKE/C j7705 k7706 x8616)))))
                                         g8615))))
                                    g8614))
                                 xj7702
                                 xk7703
                                 snake-grow))))
                            g8613)))
                         (x8607
                          (letrec*
                           ((x8608
                             (letrec*
                              ((x8611 (input))
                               (x8609
                                (letrec*
                                 ((x8610 (input)))
                                 (begin
                                   (write '(funapp 2385 56))
                                   (display "\n")
                                   (cons
                                    x8610
                                    (begin
                                      (write '(funapp 2385 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2386 27))
                                (display "\n")
                                (cons x8611 x8609)))))
                           (begin
                             (write '(funapp 2387 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2387 29))
                                (display "\n")
                                'snake)
                              x8608)))))
                        (begin
                          (write '(funapp 2388 21))
                          (display "\n")
                          (x8612 x8607)))
                       (letrec*
                        ((x8632
                          (letrec*
                           ((xj7708
                             (begin
                               (write '(funapp 2392 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2392 37))
                                  (display "\n")
                                  'module))))
                            (xk7709
                             (begin
                               (write '(funapp 2392 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2392 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8633
                              (begin
                                (write '(funapp 2395 27))
                                (display "\n")
                                ((lambda (j7712 k7713 f7714)
                                   (letrec*
                                    ((g8634
                                      (lambda (g7710 g7711)
                                        (letrec*
                                         ((g8635
                                           (letrec*
                                            ((x8636
                                              (letrec*
                                               ((x8638
                                                 (begin
                                                   (write '(funapp 2404 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7712
                                                    k7713
                                                    g7710)))
                                                (x8637
                                                 (begin
                                                   (write '(funapp 2405 50))
                                                   (display "\n")
                                                   (DIR/C j7712 k7713 g7711))))
                                               (begin
                                                 (write '(funapp 2406 42))
                                                 (display "\n")
                                                 (f7714 x8638 x8637)))))
                                            (begin
                                              (write '(funapp 2407 39))
                                              (display "\n")
                                              (WORLD/C j7712 k7713 x8636)))))
                                         g8635))))
                                    g8634))
                                 xj7708
                                 xk7709
                                 world-change-dir))))
                            g8633)))
                         (x8619
                          (letrec*
                           ((x8620
                             (letrec*
                              ((x8627
                                (letrec*
                                 ((x8628
                                   (letrec*
                                    ((x8631 (input))
                                     (x8629
                                      (letrec*
                                       ((x8630 (input)))
                                       (begin
                                         (write '(funapp 2426 36))
                                         (display "\n")
                                         (cons
                                          x8630
                                          (begin
                                            (write '(funapp 2426 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2427 33))
                                      (display "\n")
                                      (cons x8631 x8629)))))
                                 (begin
                                   (write '(funapp 2428 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2428 35))
                                      (display "\n")
                                      'snake)
                                    x8628))))
                               (x8621
                                (letrec*
                                 ((x8622
                                   (letrec*
                                    ((x8623
                                      (letrec*
                                       ((x8626 (input))
                                        (x8624
                                         (letrec*
                                          ((x8625 (input)))
                                          (begin
                                            (write '(funapp 2439 39))
                                            (display "\n")
                                            (cons
                                             x8625
                                             (begin
                                               (write '(funapp 2439 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2440 36))
                                         (display "\n")
                                         (cons x8626 x8624)))))
                                    (begin
                                      (write '(funapp 2441 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2441 38))
                                         (display "\n")
                                         'posn)
                                       x8623)))))
                                 (begin
                                   (write '(funapp 2442 30))
                                   (display "\n")
                                   (cons
                                    x8622
                                    (begin
                                      (write '(funapp 2442 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2443 27))
                                (display "\n")
                                (cons x8627 x8621)))))
                           (begin
                             (write '(funapp 2444 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2444 29))
                                (display "\n")
                                'world)
                              x8620))))
                         (x8618 (input)))
                        (begin
                          (write '(funapp 2446 21))
                          (display "\n")
                          (x8632 x8619 x8618)))
                       (letrec*
                        ((x8652
                          (letrec*
                           ((xj7715
                             (begin
                               (write '(funapp 2450 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2450 37))
                                  (display "\n")
                                  'module))))
                            (xk7716
                             (begin
                               (write '(funapp 2450 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2450 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8653
                              (begin
                                (write '(funapp 2453 27))
                                (display "\n")
                                ((lambda (j7718 k7719 f7720)
                                   (letrec*
                                    ((g8654
                                      (lambda (g7717)
                                        (letrec*
                                         ((g8655
                                           (letrec*
                                            ((x8656
                                              (letrec*
                                               ((x8657
                                                 (begin
                                                   (write '(funapp 2462 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7718
                                                    k7719
                                                    g7717))))
                                               (begin
                                                 (write '(funapp 2463 42))
                                                 (display "\n")
                                                 (f7720 x8657)))))
                                            (begin
                                              (write '(funapp 2464 39))
                                              (display "\n")
                                              (WORLD/C j7718 k7719 x8656)))))
                                         g8655))))
                                    g8654))
                                 xj7715
                                 xk7716
                                 world->world))))
                            g8653)))
                         (x8639
                          (letrec*
                           ((x8640
                             (letrec*
                              ((x8647
                                (letrec*
                                 ((x8648
                                   (letrec*
                                    ((x8651 (input))
                                     (x8649
                                      (letrec*
                                       ((x8650 (input)))
                                       (begin
                                         (write '(funapp 2483 36))
                                         (display "\n")
                                         (cons
                                          x8650
                                          (begin
                                            (write '(funapp 2483 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2484 33))
                                      (display "\n")
                                      (cons x8651 x8649)))))
                                 (begin
                                   (write '(funapp 2485 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2485 35))
                                      (display "\n")
                                      'snake)
                                    x8648))))
                               (x8641
                                (letrec*
                                 ((x8642
                                   (letrec*
                                    ((x8643
                                      (letrec*
                                       ((x8646 (input))
                                        (x8644
                                         (letrec*
                                          ((x8645 (input)))
                                          (begin
                                            (write '(funapp 2496 39))
                                            (display "\n")
                                            (cons
                                             x8645
                                             (begin
                                               (write '(funapp 2496 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2497 36))
                                         (display "\n")
                                         (cons x8646 x8644)))))
                                    (begin
                                      (write '(funapp 2498 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2498 38))
                                         (display "\n")
                                         'posn)
                                       x8643)))))
                                 (begin
                                   (write '(funapp 2499 30))
                                   (display "\n")
                                   (cons
                                    x8642
                                    (begin
                                      (write '(funapp 2499 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2500 27))
                                (display "\n")
                                (cons x8647 x8641)))))
                           (begin
                             (write '(funapp 2501 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2501 29))
                                (display "\n")
                                'world)
                              x8640)))))
                        (begin
                          (write '(funapp 2502 21))
                          (display "\n")
                          (x8652 x8639)))
                       (letrec*
                        ((x8672
                          (letrec*
                           ((xj7721
                             (begin
                               (write '(funapp 2506 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2506 37))
                                  (display "\n")
                                  'module))))
                            (xk7722
                             (begin
                               (write '(funapp 2506 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2506 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8673
                              (begin
                                (write '(funapp 2509 27))
                                (display "\n")
                                ((lambda (j7725 k7726 f7727)
                                   (letrec*
                                    ((g8674
                                      (lambda (g7723 g7724)
                                        (letrec*
                                         ((g8675
                                           (letrec*
                                            ((x8676
                                              (letrec*
                                               ((x8678
                                                 (begin
                                                   (write '(funapp 2518 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7725
                                                    k7726
                                                    g7723)))
                                                (x8677
                                                 (begin
                                                   (write '(funapp 2520 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7725
                                                    k7726
                                                    g7724))))
                                               (begin
                                                 (write '(funapp 2521 42))
                                                 (display "\n")
                                                 (f7727 x8678 x8677)))))
                                            (begin
                                              (write '(funapp 2522 39))
                                              (display "\n")
                                              (WORLD/C j7725 k7726 x8676)))))
                                         g8675))))
                                    g8674))
                                 xj7721
                                 xk7722
                                 handle-key))))
                            g8673)))
                         (x8659
                          (letrec*
                           ((x8660
                             (letrec*
                              ((x8667
                                (letrec*
                                 ((x8668
                                   (letrec*
                                    ((x8671 (input))
                                     (x8669
                                      (letrec*
                                       ((x8670 (input)))
                                       (begin
                                         (write '(funapp 2541 36))
                                         (display "\n")
                                         (cons
                                          x8670
                                          (begin
                                            (write '(funapp 2541 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2542 33))
                                      (display "\n")
                                      (cons x8671 x8669)))))
                                 (begin
                                   (write '(funapp 2543 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2543 35))
                                      (display "\n")
                                      'snake)
                                    x8668))))
                               (x8661
                                (letrec*
                                 ((x8662
                                   (letrec*
                                    ((x8663
                                      (letrec*
                                       ((x8666 (input))
                                        (x8664
                                         (letrec*
                                          ((x8665 (input)))
                                          (begin
                                            (write '(funapp 2554 39))
                                            (display "\n")
                                            (cons
                                             x8665
                                             (begin
                                               (write '(funapp 2554 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2555 36))
                                         (display "\n")
                                         (cons x8666 x8664)))))
                                    (begin
                                      (write '(funapp 2556 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2556 38))
                                         (display "\n")
                                         'posn)
                                       x8663)))))
                                 (begin
                                   (write '(funapp 2557 30))
                                   (display "\n")
                                   (cons
                                    x8662
                                    (begin
                                      (write '(funapp 2557 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2558 27))
                                (display "\n")
                                (cons x8667 x8661)))))
                           (begin
                             (write '(funapp 2559 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2559 29))
                                (display "\n")
                                'world)
                              x8660))))
                         (x8658 (input)))
                        (begin
                          (write '(funapp 2561 21))
                          (display "\n")
                          (x8672 x8659 x8658)))
                       (letrec*
                        ((x8692
                          (letrec*
                           ((xj7728
                             (begin
                               (write '(funapp 2565 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2565 37))
                                  (display "\n")
                                  'module))))
                            (xk7729
                             (begin
                               (write '(funapp 2565 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2565 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8693
                              (begin
                                (write '(funapp 2568 27))
                                (display "\n")
                                ((lambda (j7731 k7732 f7733)
                                   (letrec*
                                    ((g8694
                                      (lambda (g7730)
                                        (letrec*
                                         ((g8695
                                           (letrec*
                                            ((x8696
                                              (letrec*
                                               ((x8697
                                                 (begin
                                                   (write '(funapp 2577 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7731
                                                    k7732
                                                    g7730))))
                                               (begin
                                                 (write '(funapp 2578 42))
                                                 (display "\n")
                                                 (f7733 x8697)))))
                                            (begin
                                              (write '(funapp 2579 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7731
                                               k7732
                                               x8696)))))
                                         g8695))))
                                    g8694))
                                 xj7728
                                 xk7729
                                 game-over?))))
                            g8693)))
                         (x8679
                          (letrec*
                           ((x8680
                             (letrec*
                              ((x8687
                                (letrec*
                                 ((x8688
                                   (letrec*
                                    ((x8691 (input))
                                     (x8689
                                      (letrec*
                                       ((x8690 (input)))
                                       (begin
                                         (write '(funapp 2598 36))
                                         (display "\n")
                                         (cons
                                          x8690
                                          (begin
                                            (write '(funapp 2598 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2599 33))
                                      (display "\n")
                                      (cons x8691 x8689)))))
                                 (begin
                                   (write '(funapp 2600 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2600 35))
                                      (display "\n")
                                      'snake)
                                    x8688))))
                               (x8681
                                (letrec*
                                 ((x8682
                                   (letrec*
                                    ((x8683
                                      (letrec*
                                       ((x8686 (input))
                                        (x8684
                                         (letrec*
                                          ((x8685 (input)))
                                          (begin
                                            (write '(funapp 2611 39))
                                            (display "\n")
                                            (cons
                                             x8685
                                             (begin
                                               (write '(funapp 2611 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2612 36))
                                         (display "\n")
                                         (cons x8686 x8684)))))
                                    (begin
                                      (write '(funapp 2613 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2613 38))
                                         (display "\n")
                                         'posn)
                                       x8683)))))
                                 (begin
                                   (write '(funapp 2614 30))
                                   (display "\n")
                                   (cons
                                    x8682
                                    (begin
                                      (write '(funapp 2614 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2615 27))
                                (display "\n")
                                (cons x8687 x8681)))))
                           (begin
                             (write '(funapp 2616 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2616 29))
                                (display "\n")
                                'world)
                              x8680)))))
                        (begin
                          (write '(funapp 2617 21))
                          (display "\n")
                          (x8692 x8679)))
                       (letrec*
                        ((x8711
                          (letrec*
                           ((xj7734
                             (begin
                               (write '(funapp 2621 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2621 37))
                                  (display "\n")
                                  'module))))
                            (xk7735
                             (begin
                               (write '(funapp 2621 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2621 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8712
                              (begin
                                (write '(funapp 2624 27))
                                (display "\n")
                                ((lambda (j7737 k7738 f7739)
                                   (letrec*
                                    ((g8713
                                      (lambda (g7736)
                                        (letrec*
                                         ((g8714
                                           (letrec*
                                            ((x8715
                                              (letrec*
                                               ((x8716
                                                 (begin
                                                   (write '(funapp 2633 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7737
                                                    k7738
                                                    g7736))))
                                               (begin
                                                 (write '(funapp 2634 42))
                                                 (display "\n")
                                                 (f7739 x8716)))))
                                            (begin
                                              (write '(funapp 2635 39))
                                              (display "\n")
                                              (image/c j7737 k7738 x8715)))))
                                         g8714))))
                                    g8713))
                                 xj7734
                                 xk7735
                                 world->scene))))
                            g8712)))
                         (x8698
                          (letrec*
                           ((x8699
                             (letrec*
                              ((x8706
                                (letrec*
                                 ((x8707
                                   (letrec*
                                    ((x8710 (input))
                                     (x8708
                                      (letrec*
                                       ((x8709 (input)))
                                       (begin
                                         (write '(funapp 2654 36))
                                         (display "\n")
                                         (cons
                                          x8709
                                          (begin
                                            (write '(funapp 2654 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2655 33))
                                      (display "\n")
                                      (cons x8710 x8708)))))
                                 (begin
                                   (write '(funapp 2656 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2656 35))
                                      (display "\n")
                                      'snake)
                                    x8707))))
                               (x8700
                                (letrec*
                                 ((x8701
                                   (letrec*
                                    ((x8702
                                      (letrec*
                                       ((x8705 (input))
                                        (x8703
                                         (letrec*
                                          ((x8704 (input)))
                                          (begin
                                            (write '(funapp 2667 39))
                                            (display "\n")
                                            (cons
                                             x8704
                                             (begin
                                               (write '(funapp 2667 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2668 36))
                                         (display "\n")
                                         (cons x8705 x8703)))))
                                    (begin
                                      (write '(funapp 2669 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2669 38))
                                         (display "\n")
                                         'posn)
                                       x8702)))))
                                 (begin
                                   (write '(funapp 2670 30))
                                   (display "\n")
                                   (cons
                                    x8701
                                    (begin
                                      (write '(funapp 2670 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2671 27))
                                (display "\n")
                                (cons x8706 x8700)))))
                           (begin
                             (write '(funapp 2672 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2672 29))
                                (display "\n")
                                'world)
                              x8699)))))
                        (begin
                          (write '(funapp 2673 21))
                          (display "\n")
                          (x8711 x8698)))
                       (letrec*
                        ((x8723
                          (letrec*
                           ((xj7740
                             (begin
                               (write '(funapp 2677 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2677 37))
                                  (display "\n")
                                  'module))))
                            (xk7741
                             (begin
                               (write '(funapp 2677 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2677 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8724
                              (begin
                                (write '(funapp 2680 27))
                                (display "\n")
                                ((lambda (j7744 k7745 f7746)
                                   (letrec*
                                    ((g8725
                                      (lambda (g7742 g7743)
                                        (letrec*
                                         ((g8726
                                           (letrec*
                                            ((x8727
                                              (letrec*
                                               ((x8729
                                                 (begin
                                                   (write '(funapp 2689 50))
                                                   (display "\n")
                                                   (POSN/C j7744 k7745 g7742)))
                                                (x8728
                                                 (begin
                                                   (write '(funapp 2690 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7744
                                                    k7745
                                                    g7743))))
                                               (begin
                                                 (write '(funapp 2691 42))
                                                 (display "\n")
                                                 (f7746 x8729 x8728)))))
                                            (begin
                                              (write '(funapp 2692 39))
                                              (display "\n")
                                              (image/c j7744 k7745 x8727)))))
                                         g8726))))
                                    g8725))
                                 xj7740
                                 xk7741
                                 food+scene))))
                            g8724)))
                         (x8718
                          (letrec*
                           ((x8719
                             (letrec*
                              ((x8722 (input))
                               (x8720
                                (letrec*
                                 ((x8721 (input)))
                                 (begin
                                   (write '(funapp 2705 56))
                                   (display "\n")
                                   (cons
                                    x8721
                                    (begin
                                      (write '(funapp 2705 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2706 27))
                                (display "\n")
                                (cons x8722 x8720)))))
                           (begin
                             (write '(funapp 2707 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2707 29))
                                (display "\n")
                                'posn)
                              x8719))))
                         (x8717
                          (begin
                            (write '(funapp 2708 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2708 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2708 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2709 21))
                          (display "\n")
                          (x8723 x8718 x8717)))
                       (letrec*
                        ((x8734
                          (letrec*
                           ((xj7747
                             (begin
                               (write '(funapp 2713 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2713 37))
                                  (display "\n")
                                  'module))))
                            (xk7748
                             (begin
                               (write '(funapp 2713 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2713 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8735
                              (begin
                                (write '(funapp 2716 27))
                                (display "\n")
                                ((lambda (j7753 k7754 f7755)
                                   (letrec*
                                    ((g8736
                                      (lambda (g7749 g7750 g7751 g7752)
                                        (letrec*
                                         ((g8737
                                           (letrec*
                                            ((x8738
                                              (letrec*
                                               ((x8742
                                                 (begin
                                                   (write '(funapp 2725 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7753
                                                    k7754
                                                    g7749)))
                                                (x8741
                                                 (begin
                                                   (write '(funapp 2726 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7753
                                                    k7754
                                                    g7750)))
                                                (x8740
                                                 (begin
                                                   (write '(funapp 2727 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7753
                                                    k7754
                                                    g7751)))
                                                (x8739
                                                 (begin
                                                   (write '(funapp 2728 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7753
                                                    k7754
                                                    g7752))))
                                               (begin
                                                 (write '(funapp 2729 42))
                                                 (display "\n")
                                                 (f7755
                                                  x8742
                                                  x8741
                                                  x8740
                                                  x8739)))))
                                            (begin
                                              (write '(funapp 2730 39))
                                              (display "\n")
                                              (image/c j7753 k7754 x8738)))))
                                         g8737))))
                                    g8736))
                                 xj7747
                                 xk7748
                                 place-image-on-grid))))
                            g8735)))
                         (x8733
                          (begin
                            (write '(funapp 2737 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2737 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2737 41))
                               (display "\n")
                               '()))))
                         (x8732 (input))
                         (x8731 (input))
                         (x8730
                          (begin
                            (write '(funapp 2740 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2740 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2740 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2741 21))
                          (display "\n")
                          (x8734 x8733 x8732 x8731 x8730)))
                       (letrec*
                        ((x8749
                          (letrec*
                           ((xj7756
                             (begin
                               (write '(funapp 2745 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2745 37))
                                  (display "\n")
                                  'module))))
                            (xk7757
                             (begin
                               (write '(funapp 2745 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2745 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8750
                              (begin
                                (write '(funapp 2748 27))
                                (display "\n")
                                ((lambda (j7760 k7761 f7762)
                                   (letrec*
                                    ((g8751
                                      (lambda (g7758 g7759)
                                        (letrec*
                                         ((g8752
                                           (letrec*
                                            ((x8753
                                              (letrec*
                                               ((x8755
                                                 (begin
                                                   (write '(funapp 2757 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7760
                                                    k7761
                                                    g7758)))
                                                (x8754
                                                 (begin
                                                   (write '(funapp 2758 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7760
                                                    k7761
                                                    g7759))))
                                               (begin
                                                 (write '(funapp 2759 42))
                                                 (display "\n")
                                                 (f7762 x8755 x8754)))))
                                            (begin
                                              (write '(funapp 2760 39))
                                              (display "\n")
                                              (image/c j7760 k7761 x8753)))))
                                         g8752))))
                                    g8751))
                                 xj7756
                                 xk7757
                                 snake+scene))))
                            g8750)))
                         (x8744
                          (letrec*
                           ((x8745
                             (letrec*
                              ((x8748 (input))
                               (x8746
                                (letrec*
                                 ((x8747 (input)))
                                 (begin
                                   (write '(funapp 2773 56))
                                   (display "\n")
                                   (cons
                                    x8747
                                    (begin
                                      (write '(funapp 2773 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2774 27))
                                (display "\n")
                                (cons x8748 x8746)))))
                           (begin
                             (write '(funapp 2775 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2775 29))
                                (display "\n")
                                'snake)
                              x8745))))
                         (x8743
                          (begin
                            (write '(funapp 2776 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2776 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2776 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2777 21))
                          (display "\n")
                          (x8749 x8744 x8743)))
                       (letrec*
                        ((x8758
                          (letrec*
                           ((xj7763
                             (begin
                               (write '(funapp 2781 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2781 37))
                                  (display "\n")
                                  'module))))
                            (xk7764
                             (begin
                               (write '(funapp 2781 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2781 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8759
                              (begin
                                (write '(funapp 2784 27))
                                (display "\n")
                                ((lambda (j7767 k7768 f7769)
                                   (letrec*
                                    ((g8760
                                      (lambda (g7765 g7766)
                                        (letrec*
                                         ((g8761
                                           (letrec*
                                            ((x8762
                                              (letrec*
                                               ((x8764
                                                 (letrec*
                                                  ((x8765
                                                    (begin
                                                      (write '(funapp 2795 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 2796 45))
                                                    (display "\n")
                                                    (x8765
                                                     j7767
                                                     k7768
                                                     g7765))))
                                                (x8763
                                                 (begin
                                                   (write '(funapp 2797 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7767
                                                    k7768
                                                    g7766))))
                                               (begin
                                                 (write '(funapp 2798 42))
                                                 (display "\n")
                                                 (f7769 x8764 x8763)))))
                                            (begin
                                              (write '(funapp 2799 39))
                                              (display "\n")
                                              (image/c j7767 k7768 x8762)))))
                                         g8761))))
                                    g8760))
                                 xj7763
                                 xk7764
                                 segments+scene))))
                            g8759)))
                         (x8757 (input))
                         (x8756
                          (begin
                            (write '(funapp 2807 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2807 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2807 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2808 21))
                          (display "\n")
                          (x8758 x8757 x8756)))
                       (letrec*
                        ((x8772
                          (letrec*
                           ((xj7770
                             (begin
                               (write '(funapp 2812 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2812 37))
                                  (display "\n")
                                  'module))))
                            (xk7771
                             (begin
                               (write '(funapp 2812 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2812 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8773
                              (begin
                                (write '(funapp 2815 27))
                                (display "\n")
                                ((lambda (j7774 k7775 f7776)
                                   (letrec*
                                    ((g8774
                                      (lambda (g7772 g7773)
                                        (letrec*
                                         ((g8775
                                           (letrec*
                                            ((x8776
                                              (letrec*
                                               ((x8778
                                                 (begin
                                                   (write '(funapp 2824 50))
                                                   (display "\n")
                                                   (POSN/C j7774 k7775 g7772)))
                                                (x8777
                                                 (begin
                                                   (write '(funapp 2825 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7774
                                                    k7775
                                                    g7773))))
                                               (begin
                                                 (write '(funapp 2826 42))
                                                 (display "\n")
                                                 (f7776 x8778 x8777)))))
                                            (begin
                                              (write '(funapp 2827 39))
                                              (display "\n")
                                              (image/c j7774 k7775 x8776)))))
                                         g8775))))
                                    g8774))
                                 xj7770
                                 xk7771
                                 segment+scene))))
                            g8773)))
                         (x8767
                          (letrec*
                           ((x8768
                             (letrec*
                              ((x8771 (input))
                               (x8769
                                (letrec*
                                 ((x8770 (input)))
                                 (begin
                                   (write '(funapp 2840 56))
                                   (display "\n")
                                   (cons
                                    x8770
                                    (begin
                                      (write '(funapp 2840 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2841 27))
                                (display "\n")
                                (cons x8771 x8769)))))
                           (begin
                             (write '(funapp 2842 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2842 29))
                                (display "\n")
                                'posn)
                              x8768))))
                         (x8766
                          (begin
                            (write '(funapp 2843 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2843 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2843 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2844 21))
                          (display "\n")
                          (x8772 x8767 x8766)))))))))
               g8538))))
           g7806))))
       g7804)))
    g7803)))
