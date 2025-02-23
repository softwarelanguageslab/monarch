(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7638 #t)) g7638)))
    (meta (lambda (v) (letrec* ((g7639 v)) g7639)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7640
          (letrec*
           ((g7641
             (letrec*
              ((x-e7642 lst))
              (letrec*
               ((v1804 x-e7642))
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
                   ((x-cnd7643
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7643
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
           g7641)))
        g7640)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7644 (lambda (v) (letrec* ((g7645 v)) g7645)))) g7644)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7646
          (letrec*
           ((x7647 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7647)))))
        g7646))))
   (letrec*
    ((g7648
      (letrec*
       ((g7649
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
           ((g7650 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7651
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7652
                     (lambda (k j lst)
                       (letrec*
                        ((g7653
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7654
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7654))
                             lst))))
                        g7653))))
                   g7652)))
               (real?/c
                (lambda (g7534 g7535 g7536)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7536))))
                      (if x-cnd7656
                        g7536
                        (begin
                          (write '(blame g7534 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7534)))))))
                   g7655)))
               (boolean?/c
                (lambda (g7537 g7538 g7539)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7539))))
                      (if x-cnd7658
                        g7539
                        (begin
                          (write '(blame g7537 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7537)))))))
                   g7657)))
               (number?/c
                (lambda (g7540 g7541 g7542)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7542))))
                      (if x-cnd7660
                        g7542
                        (begin
                          (write '(blame g7540 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7540)))))))
                   g7659)))
               (any/c
                (lambda (g7543 g7544 g7545)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7663 #t)) g7663)) g7545))))
                      (if x-cnd7662
                        g7545
                        (begin
                          (write '(blame g7543 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7543)))))))
                   g7661)))
               (any?/c
                (lambda (g7546 g7547 g7548)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7666 #t)) g7666)) g7548))))
                      (if x-cnd7665
                        g7548
                        (begin
                          (write '(blame g7546 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7546)))))))
                   g7664)))
               (cons?/c
                (lambda (g7549 g7550 g7551)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7551))))
                      (if x-cnd7668
                        g7551
                        (begin
                          (write '(blame g7549 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7549)))))))
                   g7667)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7552 g7553 g7554)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7554))))
                      (if x-cnd7670
                        g7554
                        (begin
                          (write '(blame g7552 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7552)))))))
                   g7669)))
               (integer?/c
                (lambda (g7555 g7556 g7557)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7557))))
                      (if x-cnd7672
                        g7557
                        (begin
                          (write '(blame g7555 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7555)))))))
                   g7671)))
               (symbol?/c
                (lambda (g7558 g7559 g7560)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7560))))
                      (if x-cnd7674
                        g7560
                        (begin
                          (write '(blame g7558 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7558)))))))
                   g7673)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7675
                     (lambda (k j v)
                       (letrec*
                        ((g7676
                          (letrec*
                           ((x-cnd7677
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7677
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7676))))
                   g7675)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7678
                     (lambda (k j v)
                       (letrec*
                        ((g7679
                          (letrec*
                           ((x-cnd7680
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7680
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7684
                                (letrec*
                                 ((x7685
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7685))))
                               (x7681
                                (letrec*
                                 ((x7683
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7682
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7683 k j x7682)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7684 x7681)))))))
                        g7679))))
                   g7678)))
               (any? (lambda (v) (letrec* ((g7686 #t)) g7686)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7688)))))
                   g7687)))
               (nonzero?/c
                (lambda (g7561 g7562 g7563)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7691
                                (letrec*
                                 ((x7692
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7692)))))
                              g7691))
                           g7563))))
                      (if x-cnd7690
                        g7563
                        (begin
                          (write '(blame g7561 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7561)))))))
                   g7689)))
               (meta (lambda (v) (letrec* ((g7693 v)) g7693)))
               (+
                (letrec*
                 ((xj7564
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7565
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7694
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7568 k7569 f7570)
                         (letrec*
                          ((g7696
                            (lambda (g7566 g7567)
                              (letrec*
                               ((g7697
                                 (letrec*
                                  ((x7698
                                    (letrec*
                                     ((x7700
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7568 k7569 g7566)))
                                      (x7699
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7568 k7569 g7567))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7570 x7700 x7699)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7568 k7569 x7698)))))
                               g7697))))
                          g7696))
                       xj7564
                       xk7565
                       (lambda (a b)
                         (letrec*
                          ((g7695
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7695))))))
                  g7694)))
               (-
                (letrec*
                 ((xj7571
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7572
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7701
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7575 k7576 f7577)
                         (letrec*
                          ((g7703
                            (lambda (g7573 g7574)
                              (letrec*
                               ((g7704
                                 (letrec*
                                  ((x7705
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7575 k7576 g7573)))
                                      (x7706
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7575 k7576 g7574))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7577 x7707 x7706)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7575 k7576 x7705)))))
                               g7704))))
                          g7703))
                       xj7571
                       xk7572
                       (lambda (a b)
                         (letrec*
                          ((g7702
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7702))))))
                  g7701)))
               (*
                (letrec*
                 ((xj7578
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7579
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7708
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7582 k7583 f7584)
                         (letrec*
                          ((g7710
                            (lambda (g7580 g7581)
                              (letrec*
                               ((g7711
                                 (letrec*
                                  ((x7712
                                    (letrec*
                                     ((x7714
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7582 k7583 g7580)))
                                      (x7713
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7582 k7583 g7581))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7584 x7714 x7713)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7582 k7583 x7712)))))
                               g7711))))
                          g7710))
                       xj7578
                       xk7579
                       (lambda (a b)
                         (letrec*
                          ((g7709
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7709))))))
                  g7708)))
               (/
                (letrec*
                 ((xj7585
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7586
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7715
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7589 k7590 f7591)
                         (letrec*
                          ((g7717
                            (lambda (g7587 g7588)
                              (letrec*
                               ((g7718
                                 (letrec*
                                  ((x7719
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7589 k7590 g7587)))
                                      (x7720
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7589 k7590 g7588))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7591 x7721 x7720)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7589 k7590 x7719)))))
                               g7718))))
                          g7717))
                       xj7585
                       xk7586
                       (lambda (a b)
                         (letrec*
                          ((g7716
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7716))))))
                  g7715)))
               (car
                (letrec*
                 ((xj7592
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7593
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7722
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7595 k7596 f7597)
                         (letrec*
                          ((g7724
                            (lambda (g7594)
                              (letrec*
                               ((g7725
                                 (letrec*
                                  ((x7726
                                    (letrec*
                                     ((x7727
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7595 k7596 g7594))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7597 x7727)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7595 k7596 x7726)))))
                               g7725))))
                          g7724))
                       xj7592
                       xk7593
                       (lambda (p)
                         (letrec*
                          ((g7723
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7723))))))
                  g7722)))
               (cdr
                (letrec*
                 ((xj7598
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7599
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7728
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7601 k7602 f7603)
                         (letrec*
                          ((g7730
                            (lambda (g7600)
                              (letrec*
                               ((g7731
                                 (letrec*
                                  ((x7732
                                    (letrec*
                                     ((x7733
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7601 k7602 g7600))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7603 x7733)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7601 k7602 x7732)))))
                               g7731))))
                          g7730))
                       xj7598
                       xk7599
                       (lambda (p)
                         (letrec*
                          ((g7729
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7729))))))
                  g7728)))
               (cons
                (letrec*
                 ((xj7604
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7605
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7734
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7608 k7609 f7610)
                         (letrec*
                          ((g7736
                            (lambda (g7606 g7607)
                              (letrec*
                               ((g7737
                                 (letrec*
                                  ((x7738
                                    (letrec*
                                     ((x7740
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7608 k7609 g7606)))
                                      (x7739
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7608 k7609 g7607))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7610 x7740 x7739)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7608 k7609 x7738)))))
                               g7737))))
                          g7736))
                       xj7604
                       xk7605
                       (lambda (a b)
                         (letrec*
                          ((g7735
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7735))))))
                  g7734)))
               (vector-ref
                (letrec*
                 ((xj7611
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7612
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7741
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7614 k7615 f7616)
                         (letrec*
                          ((g7743
                            (lambda (g7613)
                              (letrec*
                               ((g7744
                                 (letrec*
                                  ((x7745
                                    (letrec*
                                     ((x7746
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7614 k7615 g7613))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7616 x7746)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7614 k7615 x7745)))))
                               g7744))))
                          g7743))
                       xj7611
                       xk7612
                       (lambda (v i)
                         (letrec*
                          ((g7742
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7742))))))
                  g7741)))
               (vector-set!
                (letrec*
                 ((xj7617
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7618
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7747
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7621 k7622 f7623)
                         (letrec*
                          ((g7749
                            (lambda (g7619 g7620)
                              (letrec*
                               ((g7750
                                 (letrec*
                                  ((x7751
                                    (letrec*
                                     ((x7753
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7621 k7622 g7619)))
                                      (x7752
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7621 k7622 g7620))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7623 x7753 x7752)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7621 k7622 x7751)))))
                               g7750))))
                          g7749))
                       xj7617
                       xk7618
                       (lambda (vec i v)
                         (letrec*
                          ((g7748
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7748))))))
                  g7747)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7754
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7754)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((x-cnd7763
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7763
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7767))))
                          (x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7765)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7766 x7764)))))))
                   g7760)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7769)))))
                   g7768)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7777)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7775)))))
                   g7774)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7782))))
                    (g7780
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
                       ((g7783
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7784 res))
                       g7784))))
                   g7780)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7787)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7789)))))
                   g7788)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7795
                        #f
                        (letrec*
                         ((x-cnd7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7797 k)))))
                         (if x-cnd7796
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7798)))))))))
                   g7793)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7800)))))
                   g7799)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7804
                        ""
                        (letrec*
                         ((x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7808))))
                          (x7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7806)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7807 x7805)))))))
                   g7802)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7814
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7814))))
                   g7811)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7816
                        (letrec*
                         ((x7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7818)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7817)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7816)))))
                   g7815)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7824
                        x
                        (letrec*
                         ((x7826
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7825
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7826 x7825)))))))
                   g7821)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7827
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7827)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x-cnd7829
                        (letrec*
                         ((x7830 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7830)))))
                      (if x-cnd7829
                        (letrec*
                         ((x7831 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7831)))
                        #f))))
                   g7828)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7834))))
                    (g7833
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7835
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7836 (if val7517 val7517 #f)))
                             g7836)))))
                       g7835))))
                   g7833)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7838
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7838 9)))))
                      (letrec*
                       ((g7839
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7840
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7840 10)))))
                            (letrec*
                             ((g7841
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7842
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7842 32))))))
                             g7841)))))
                       g7839))))
                   g7837)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7845)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7844)))))
                   g7843)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7848))))
                    (g7847
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7847)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7849 #f)) g7849)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7851)))))
                   g7850)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7853)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7857
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7858
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7858
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7859
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7860
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7860
                                       (letrec*
                                        ((x-cnd7861
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7861
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7862
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7863
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7863
                                             (letrec*
                                              ((x-cnd7864
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7864
                                                (letrec*
                                                 ((x-cnd7865
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7866
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7867 x7866)))))
                                                 (if x-cnd7865
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7868
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7869 x7868)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7870
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7871
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7871
                                                (letrec*
                                                 ((x-cnd7872
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7872
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7873
                                                       (letrec*
                                                        ((x-cnd7874
                                                          (letrec*
                                                           ((x7875
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
                                                             (= x7875 n)))))
                                                        (if x-cnd7874
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7876
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
                                                                    ((g7877
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7878
                                                                           (letrec*
                                                                            ((x7880
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
                                                                             (x7879
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
                                                                               x7880
                                                                               x7879)))))
                                                                         (if x-cnd7878
                                                                           (letrec*
                                                                            ((x7881
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
                                                                               x7881)))
                                                                           #f)))))
                                                                    g7877))))
                                                                g7876))))
                                                           (letrec*
                                                            ((g7882
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7882))
                                                          #f))))
                                                     g7873))
                                                   #f))
                                                #f)))))
                                         g7870)))))
                                   g7862)))))
                             g7859)))))
                       g7857))))
                   g7856)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7884
                        (letrec*
                         ((x7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7886)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7885)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7884)))))
                   g7883)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7888
                        (letrec*
                         ((x7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7890)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7889)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7888)))))
                   g7887)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7891)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7895
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7896 (if val7526 val7526 #f)))
                             g7896)))))
                       g7895))))
                   g7893)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7900))))
                    (g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7901))))
                    (g7899
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
                       ((g7902
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7903 res))
                       g7903))))
                   g7899)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7904
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7904)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7910
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7910))))
                   g7907)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7913)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7917)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7916)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7915)))))
                   g7914)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (letrec*
                         ((x7920
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7920)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7919)))))
                   g7918)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7923)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7929)))))
                   g7926)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7933)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7932)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7935)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7937
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7937)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (letrec*
                         ((x7940
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7940)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7939)))))
                   g7938)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7941
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7941)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7949))))
                          (x7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7947)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7948 x7946)))))))
                   g7943)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7953)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7952)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7957)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7956)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7955)))))
                   g7954)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7960))))
                    (g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7961)))))
                   g7959)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7963
                        (letrec*
                         ((x7964
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7965)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7964)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7963)))))
                   g7962)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7971
                        (letrec*
                         ((g7972
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7972)
                        (letrec*
                         ((x-cnd7973
                           (letrec*
                            ((x7974
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7974)))))
                         (if x-cnd7973
                           (letrec*
                            ((g7975
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7976)))))
                            g7975)
                           (letrec*
                            ((x-cnd7977
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7978)))))
                            (if x-cnd7977
                              (letrec*
                               ((g7979
                                 (letrec*
                                  ((x7981
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7980
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7981 x7980)))))
                               g7979)
                              (letrec*
                               ((x-cnd7982
                                 (letrec*
                                  ((x7983
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7983)))))
                               (if x-cnd7982
                                 (letrec*
                                  ((g7984
                                    (letrec*
                                     ((x7987
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7986
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7985
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7987 x7986 x7985)))))
                                  g7984)
                                 (letrec*
                                  ((x-cnd7988
                                    (letrec*
                                     ((x7989
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7989)))))
                                  (if x-cnd7988
                                    (letrec*
                                     ((g7990
                                       (letrec*
                                        ((x7994
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7993
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7992
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7991
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7994 x7993 x7992 x7991)))))
                                     g7990)
                                    (letrec*
                                     ((x-cnd7995
                                       (letrec*
                                        ((x7996
                                          (letrec*
                                           ((x7997
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7997)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7996)))))
                                     (if x-cnd7995
                                       (letrec*
                                        ((g7998
                                          (letrec*
                                           ((x8004
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8003
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8002
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8001
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7999
                                             (letrec*
                                              ((x8000
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8000)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8004
                                              x8003
                                              x8002
                                              x8001
                                              x7999)))))
                                        g7998)
                                       (letrec*
                                        ((x-cnd8005
                                          (letrec*
                                           ((x8006
                                             (letrec*
                                              ((x8007
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8007)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8006)))))
                                        (if x-cnd8005
                                          (letrec*
                                           ((g8008
                                             (letrec*
                                              ((x8016
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8015
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8014
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8013
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8011
                                                (letrec*
                                                 ((x8012
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8012))))
                                               (x8009
                                                (letrec*
                                                 ((x8010
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8010)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8016
                                                 x8015
                                                 x8014
                                                 x8013
                                                 x8011
                                                 x8009)))))
                                           g8008)
                                          (letrec*
                                           ((x-cnd8017
                                             (letrec*
                                              ((x8018
                                                (letrec*
                                                 ((x8019
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8019)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8018)))))
                                           (if x-cnd8017
                                             (letrec*
                                              ((g8020
                                                (letrec*
                                                 ((x8030
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8029
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8028
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8027
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8025
                                                   (letrec*
                                                    ((x8026
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8026))))
                                                  (x8023
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8024))))
                                                  (x8021
                                                   (letrec*
                                                    ((x8022
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8022)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8030
                                                    x8029
                                                    x8028
                                                    x8027
                                                    x8025
                                                    x8023
                                                    x8021)))))
                                              g8020)
                                             (letrec*
                                              ((g8031
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8031)))))))))))))))))))
                   g7968)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8034
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8034))))
                    (g8033
                     (letrec*
                      ((x-cnd8035
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8035
                        #f
                        (letrec*
                         ((x-cnd8036
                           (letrec*
                            ((x8037
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8037 e)))))
                         (if x-cnd8036
                           l
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8038)))))))))
                   g8033)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x8040
                        (letrec*
                         ((x8041
                           (letrec*
                            ((x8042
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8042)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8041)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8040)))))
                   g8039)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((x8044
                        (letrec*
                         ((x8045
                           (letrec*
                            ((x8046
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8046)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8045)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8044)))))
                   g8043)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8047
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8047)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((x8050
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8050))))
                    (g8049
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8049)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8052
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8052))))
                   g8051)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8054)))))
                   g8053)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8056
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8056
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8057)))
                           #f))))
                      (letrec*
                       ((g8058
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8058))))
                   g8055)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8060
                        (letrec*
                         ((x8061
                           (letrec*
                            ((x8062
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8062)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8061)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8060)))))
                   g8059)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x-cnd8064
                        (letrec*
                         ((x8065 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8065 c)))))
                      (if x-cnd8064
                        (letrec*
                         ((x8066 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8066)))
                        #f))))
                   g8063)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8069
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8069))))
                    (g8068
                     (letrec*
                      ((x-cnd8070
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8070
                        #f
                        (letrec*
                         ((x-cnd8071
                           (letrec*
                            ((x8072
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8072 k)))))
                         (if x-cnd8071
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8073
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8073)))))))))
                   g8068)))
               (not (lambda (x) (letrec* ((g8074 (if x #f #t))) g8074)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8075
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8075)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8076
                     (letrec*
                      ((x8078
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8078))))
                    (g8077
                     (letrec*
                      ((x-cnd8079
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8079
                        #f
                        (letrec*
                         ((x-cnd8080
                           (letrec*
                            ((x8081
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8081 e)))))
                         (if x-cnd8080
                           l
                           (letrec*
                            ((x8082
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8082)))))))))
                   g8077)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8083
                     (letrec*
                      ((x8084
                        (letrec*
                         ((x8085
                           (letrec*
                            ((x8086
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8086)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8085)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8084)))))
                   g8083)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8087
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8089))))
                    (g8088
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8090
                             (letrec*
                              ((x-cnd8091
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8091
                                0
                                (letrec*
                                 ((x8092
                                   (letrec*
                                    ((x8093
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8093)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8092)))))))
                           g8090))))
                      (letrec*
                       ((g8094
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8094))))
                   g8088)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8098))))
                    (g8096
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8099))))
                    (g8097
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8100
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8100))))
                   g8097)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8102
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8102)))))
                   g8101)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (letrec*
                         ((x8105
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8105)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8104)))))
                   g8103)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8108))))
                    (g8107
                     (letrec*
                      ((x-cnd8109
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8109
                        #f
                        (letrec*
                         ((x-cnd8110
                           (letrec*
                            ((x8111
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8111 k)))))
                         (if x-cnd8110
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8112
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8112)))))))))
                   g8107)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8114)))))
                   g8113)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8120)))))
                   g8117)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8122
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8122))))
                   g8121)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8126))))
                    (g8124
                     (letrec*
                      ((x8127
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8127))))
                    (g8125
                     (letrec*
                      ((x-cnd8128
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8128
                        #t
                        (letrec*
                         ((x-cnd8129
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8129
                           (letrec*
                            ((g8130
                              (letrec*
                               ((x8132
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8132))))
                             (g8131
                              (letrec*
                               ((x8133
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8133)))))
                            g8131)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8125)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8136))))
                    (g8135
                     (letrec*
                      ((x-cnd8137
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8137
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8135)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8141))))
                    (g8139
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8142))))
                    (g8140
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8143
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8143))))
                   g8140)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8145
                        (letrec*
                         ((x8146
                           (letrec*
                            ((x8147
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8147)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8146)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8145)))))
                   g8144)))
               (newline (lambda () (letrec* ((g8148 #f)) g8148)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8151
                        (letrec*
                         ((x8152
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8152))))
                       (x8150
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8151 x8150)))))
                   g8149)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8155
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8155))))
                    (g8154
                     (letrec*
                      ((x8156
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8156)))))
                   g8154)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8157
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8161))))
                    (g8158
                     (letrec*
                      ((x8162
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8162))))
                    (g8159
                     (letrec*
                      ((x8163
                        (letrec*
                         ((x8164
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8164)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8163))))
                    (g8160
                     (letrec*
                      ((x-cnd8165
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8165
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8166
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8167 x8166)))))))
                   g8160)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x-cnd8169
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8169
                        a
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8170)))))))
                   g8168)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g8171
                     (letrec*
                      ((x-cnd8172
                        (letrec*
                         ((val7533
                           (begin
                             (write '(funapp 1478 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g8173
                            (if val7533
                              val7533
                              (begin
                                (write '(funapp 1480 55))
                                (display "\n")
                                (<= m 0)))))
                          g8173))))
                      (if x-cnd8172
                        0
                        (letrec*
                         ((x8174
                           (letrec*
                            ((x8175
                              (begin
                                (write '(funapp 1485 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1485 61))
                              (display "\n")
                              (mult n x8175)))))
                         (begin
                           (write '(funapp 1486 26))
                           (display "\n")
                           (+ n x8174)))))))
                   g8171)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8176
                     (begin
                       (write '(funapp 1488 50))
                       (display "\n")
                       (mult n n))))
                   g8176))))
              (letrec*
               ((g8177
                 (begin
                   (write '(funapp 1491 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1492 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8180
                          (letrec*
                           ((xj7624
                             (begin
                               (write '(funapp 1496 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1496 37))
                                  (display "\n")
                                  'module))))
                            (xk7625
                             (begin
                               (write '(funapp 1496 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1496 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8181
                              (begin
                                (write '(funapp 1499 27))
                                (display "\n")
                                ((lambda (j7628 k7629 f7630)
                                   (letrec*
                                    ((g8182
                                      (lambda (g7626 g7627)
                                        (letrec*
                                         ((g8183
                                           (letrec*
                                            ((x8187
                                              (letrec*
                                               ((x8188
                                                 (begin
                                                   (write '(funapp 1508 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1509 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8188))))
                                             (x8184
                                              (letrec*
                                               ((x8186
                                                 (begin
                                                   (write '(funapp 1513 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7628
                                                    k7629
                                                    g7626)))
                                                (x8185
                                                 (begin
                                                   (write '(funapp 1515 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7628
                                                    k7629
                                                    g7627))))
                                               (begin
                                                 (write '(funapp 1516 42))
                                                 (display "\n")
                                                 (f7630 x8186 x8185)))))
                                            (begin
                                              (write '(funapp 1517 39))
                                              (display "\n")
                                              (x8187 j7628 k7629 x8184)))))
                                         g8183))))
                                    g8182))
                                 xj7624
                                 xk7625
                                 mult))))
                            g8181)))
                         (x8179 (input))
                         (x8178 (input)))
                        (begin
                          (write '(funapp 1526 21))
                          (display "\n")
                          (x8180 x8179 x8178)))
                       (letrec*
                        ((xj7631
                          (begin
                            (write '(funapp 1528 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1528 34))
                               (display "\n")
                               'module))))
                         (xk7632
                          (begin
                            (write '(funapp 1528 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1528 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8189
                           (begin
                             (write '(funapp 1531 24))
                             (display "\n")
                             ((lambda (j7634 k7635 f7636)
                                (letrec*
                                 ((g8190
                                   (lambda (g7633)
                                     (letrec*
                                      ((g8191
                                        (letrec*
                                         ((x7637
                                           (begin
                                             (write '(funapp 1538 44))
                                             (display "\n")
                                             (integer?/c j7634 k7635 g7633))))
                                         (letrec*
                                          ((g8192
                                            (letrec*
                                             ((x8194
                                               (begin
                                                 (write '(funapp 1543 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8195
                                                       (letrec*
                                                        ((x8196
                                                          (begin
                                                            (write
                                                             '(funapp 1547 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1548 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8196)))))
                                                     g8195))
                                                  x7637)))
                                              (x8193
                                               (begin
                                                 (write '(funapp 1551 48))
                                                 (display "\n")
                                                 (f7636 x7637))))
                                             (begin
                                               (write '(funapp 1552 40))
                                               (display "\n")
                                               (x8194 j7634 k7635 x8193)))))
                                          g8192))))
                                      g8191))))
                                 g8190))
                              xj7631
                              xk7632
                              sqr))))
                         g8189))))))))
               g8177))))
           g7651))))
       g7649)))
    g7648)))
