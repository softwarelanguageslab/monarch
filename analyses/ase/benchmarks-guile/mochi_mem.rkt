(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7644 #t)) g7644)))
    (meta (lambda (v) (letrec* ((g7645 v)) g7645)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7646
          (letrec*
           ((g7647
             (letrec*
              ((x-e7648 lst))
              (letrec*
               ((v1804 x-e7648))
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
                   ((x-cnd7649
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7649
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
           g7647)))
        g7646)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7650 (lambda (v) (letrec* ((g7651 v)) g7651)))) g7650)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7652
          (letrec*
           ((x7653 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7653)))))
        g7652))))
   (letrec*
    ((g7654
      (letrec*
       ((g7655
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
           ((g7656 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7657
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7658
                     (lambda (k j lst)
                       (letrec*
                        ((g7659
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7660
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7660))
                             lst))))
                        g7659))))
                   g7658)))
               (real?/c
                (lambda (g7535 g7536 g7537)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7537))))
                      (if x-cnd7662
                        g7537
                        (begin
                          (write '(blame g7535 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7535)))))))
                   g7661)))
               (boolean?/c
                (lambda (g7538 g7539 g7540)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7540))))
                      (if x-cnd7664
                        g7540
                        (begin
                          (write '(blame g7538 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7538)))))))
                   g7663)))
               (number?/c
                (lambda (g7541 g7542 g7543)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7543))))
                      (if x-cnd7666
                        g7543
                        (begin
                          (write '(blame g7541 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7541)))))))
                   g7665)))
               (any/c
                (lambda (g7544 g7545 g7546)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7669 #t)) g7669)) g7546))))
                      (if x-cnd7668
                        g7546
                        (begin
                          (write '(blame g7544 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7544)))))))
                   g7667)))
               (any?/c
                (lambda (g7547 g7548 g7549)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7672 #t)) g7672)) g7549))))
                      (if x-cnd7671
                        g7549
                        (begin
                          (write '(blame g7547 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7547)))))))
                   g7670)))
               (cons?/c
                (lambda (g7550 g7551 g7552)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7552))))
                      (if x-cnd7674
                        g7552
                        (begin
                          (write '(blame g7550 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7550)))))))
                   g7673)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7553 g7554 g7555)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7555))))
                      (if x-cnd7676
                        g7555
                        (begin
                          (write '(blame g7553 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7553)))))))
                   g7675)))
               (integer?/c
                (lambda (g7556 g7557 g7558)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x-cnd7678
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7558))))
                      (if x-cnd7678
                        g7558
                        (begin
                          (write '(blame g7556 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7556)))))))
                   g7677)))
               (symbol?/c
                (lambda (g7559 g7560 g7561)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7561))))
                      (if x-cnd7680
                        g7561
                        (begin
                          (write '(blame g7559 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7559)))))))
                   g7679)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7681
                     (lambda (k j v)
                       (letrec*
                        ((g7682
                          (letrec*
                           ((x-cnd7683
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7683
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7682))))
                   g7681)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7684
                     (lambda (k j v)
                       (letrec*
                        ((g7685
                          (letrec*
                           ((x-cnd7686
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7686
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7690
                                (letrec*
                                 ((x7691
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7691))))
                               (x7687
                                (letrec*
                                 ((x7689
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7688
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7689 k j x7688)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7690 x7687)))))))
                        g7685))))
                   g7684)))
               (any? (lambda (v) (letrec* ((g7692 #t)) g7692)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7694)))))
                   g7693)))
               (nonzero?/c
                (lambda (g7562 g7563 g7564)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x-cnd7696
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7697
                                (letrec*
                                 ((x7698
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7698)))))
                              g7697))
                           g7564))))
                      (if x-cnd7696
                        g7564
                        (begin
                          (write '(blame g7562 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7562)))))))
                   g7695)))
               (meta (lambda (v) (letrec* ((g7699 v)) g7699)))
               (+
                (letrec*
                 ((xj7565
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7566
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7700
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7569 k7570 f7571)
                         (letrec*
                          ((g7702
                            (lambda (g7567 g7568)
                              (letrec*
                               ((g7703
                                 (letrec*
                                  ((x7704
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7569 k7570 g7567)))
                                      (x7705
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7569 k7570 g7568))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7571 x7706 x7705)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7569 k7570 x7704)))))
                               g7703))))
                          g7702))
                       xj7565
                       xk7566
                       (lambda (a b)
                         (letrec*
                          ((g7701
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7701))))))
                  g7700)))
               (-
                (letrec*
                 ((xj7572
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7573
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7707
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7576 k7577 f7578)
                         (letrec*
                          ((g7709
                            (lambda (g7574 g7575)
                              (letrec*
                               ((g7710
                                 (letrec*
                                  ((x7711
                                    (letrec*
                                     ((x7713
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7576 k7577 g7574)))
                                      (x7712
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7576 k7577 g7575))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7578 x7713 x7712)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7576 k7577 x7711)))))
                               g7710))))
                          g7709))
                       xj7572
                       xk7573
                       (lambda (a b)
                         (letrec*
                          ((g7708
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7708))))))
                  g7707)))
               (*
                (letrec*
                 ((xj7579
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7580
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7714
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7583 k7584 f7585)
                         (letrec*
                          ((g7716
                            (lambda (g7581 g7582)
                              (letrec*
                               ((g7717
                                 (letrec*
                                  ((x7718
                                    (letrec*
                                     ((x7720
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7583 k7584 g7581)))
                                      (x7719
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7583 k7584 g7582))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7585 x7720 x7719)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7583 k7584 x7718)))))
                               g7717))))
                          g7716))
                       xj7579
                       xk7580
                       (lambda (a b)
                         (letrec*
                          ((g7715
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7715))))))
                  g7714)))
               (/
                (letrec*
                 ((xj7586
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7587
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7721
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7590 k7591 f7592)
                         (letrec*
                          ((g7723
                            (lambda (g7588 g7589)
                              (letrec*
                               ((g7724
                                 (letrec*
                                  ((x7725
                                    (letrec*
                                     ((x7727
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7590 k7591 g7588)))
                                      (x7726
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7590 k7591 g7589))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7592 x7727 x7726)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7590 k7591 x7725)))))
                               g7724))))
                          g7723))
                       xj7586
                       xk7587
                       (lambda (a b)
                         (letrec*
                          ((g7722
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7722))))))
                  g7721)))
               (car
                (letrec*
                 ((xj7593
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7594
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7728
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7596 k7597 f7598)
                         (letrec*
                          ((g7730
                            (lambda (g7595)
                              (letrec*
                               ((g7731
                                 (letrec*
                                  ((x7732
                                    (letrec*
                                     ((x7733
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7596 k7597 g7595))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7598 x7733)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7596 k7597 x7732)))))
                               g7731))))
                          g7730))
                       xj7593
                       xk7594
                       (lambda (p)
                         (letrec*
                          ((g7729
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7729))))))
                  g7728)))
               (cdr
                (letrec*
                 ((xj7599
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7600
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7734
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7602 k7603 f7604)
                         (letrec*
                          ((g7736
                            (lambda (g7601)
                              (letrec*
                               ((g7737
                                 (letrec*
                                  ((x7738
                                    (letrec*
                                     ((x7739
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7602 k7603 g7601))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7604 x7739)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7602 k7603 x7738)))))
                               g7737))))
                          g7736))
                       xj7599
                       xk7600
                       (lambda (p)
                         (letrec*
                          ((g7735
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7735))))))
                  g7734)))
               (cons
                (letrec*
                 ((xj7605
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7606
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7740
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7609 k7610 f7611)
                         (letrec*
                          ((g7742
                            (lambda (g7607 g7608)
                              (letrec*
                               ((g7743
                                 (letrec*
                                  ((x7744
                                    (letrec*
                                     ((x7746
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7609 k7610 g7607)))
                                      (x7745
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7609 k7610 g7608))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7611 x7746 x7745)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7609 k7610 x7744)))))
                               g7743))))
                          g7742))
                       xj7605
                       xk7606
                       (lambda (a b)
                         (letrec*
                          ((g7741
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7741))))))
                  g7740)))
               (vector-ref
                (letrec*
                 ((xj7612
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7613
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7747
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7615 k7616 f7617)
                         (letrec*
                          ((g7749
                            (lambda (g7614)
                              (letrec*
                               ((g7750
                                 (letrec*
                                  ((x7751
                                    (letrec*
                                     ((x7752
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7615 k7616 g7614))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7617 x7752)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7615 k7616 x7751)))))
                               g7750))))
                          g7749))
                       xj7612
                       xk7613
                       (lambda (v i)
                         (letrec*
                          ((g7748
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7748))))))
                  g7747)))
               (vector-set!
                (letrec*
                 ((xj7618
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7619
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7753
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7622 k7623 f7624)
                         (letrec*
                          ((g7755
                            (lambda (g7620 g7621)
                              (letrec*
                               ((g7756
                                 (letrec*
                                  ((x7757
                                    (letrec*
                                     ((x7759
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7622 k7623 g7620)))
                                      (x7758
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7622 k7623 g7621))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7624 x7759 x7758)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7622 k7623 x7757)))))
                               g7756))))
                          g7755))
                       xj7618
                       xk7619
                       (lambda (vec i v)
                         (letrec*
                          ((g7754
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7754))))))
                  g7753)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7760
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7760)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7767))))
                    (g7765
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7768))))
                    (g7766
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7773))))
                          (x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7771)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7772 x7770)))))))
                   g7766)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7775)))))
                   g7774)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7783)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7782)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7781)))))
                   g7780)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7788))))
                    (g7786
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
                       ((g7789
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7790 res))
                       g7790))))
                   g7786)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7793)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7795)))))
                   g7794)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7803 k)))))
                         (if x-cnd7802
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7804)))))))))
                   g7799)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7806)))))
                   g7805)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7809))))
                    (g7808
                     (letrec*
                      ((x-cnd7810
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7810
                        ""
                        (letrec*
                         ((x7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7814))))
                          (x7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7812)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7813 x7811)))))))
                   g7808)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7820
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7820))))
                   g7817)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7822
                        (letrec*
                         ((x7823
                           (letrec*
                            ((x7824
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7824)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7823)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7822)))))
                   g7821)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x-cnd7830
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7830
                        x
                        (letrec*
                         ((x7832
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7831
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7832 x7831)))))))
                   g7827)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7833
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7833)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x-cnd7835
                        (letrec*
                         ((x7836 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7836)))))
                      (if x-cnd7835
                        (letrec*
                         ((x7837 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7837)))
                        #f))))
                   g7834)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7841
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7842 (if val7517 val7517 #f)))
                             g7842)))))
                       g7841))))
                   g7839)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7844
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7844 9)))))
                      (letrec*
                       ((g7845
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7846
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7846 10)))))
                            (letrec*
                             ((g7847
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7848
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7848 32))))))
                             g7847)))))
                       g7845))))
                   g7843)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7850)))))
                   g7849)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7853)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7855 #f)) g7855)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7857)))))
                   g7856)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7861
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7859)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7863
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7864
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7864
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7865
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7866
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7866
                                       (letrec*
                                        ((x-cnd7867
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7867
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7868
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7869
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7869
                                             (letrec*
                                              ((x-cnd7870
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7870
                                                (letrec*
                                                 ((x-cnd7871
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7872
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7873 x7872)))))
                                                 (if x-cnd7871
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7874
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7875 x7874)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7876
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7877
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7877
                                                (letrec*
                                                 ((x-cnd7878
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7878
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7879
                                                       (letrec*
                                                        ((x-cnd7880
                                                          (letrec*
                                                           ((x7881
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
                                                             (= x7881 n)))))
                                                        (if x-cnd7880
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7882
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
                                                                    ((g7883
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7884
                                                                           (letrec*
                                                                            ((x7886
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
                                                                             (x7885
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
                                                                               x7886
                                                                               x7885)))))
                                                                         (if x-cnd7884
                                                                           (letrec*
                                                                            ((x7887
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
                                                                               x7887)))
                                                                           #f)))))
                                                                    g7883))))
                                                                g7882))))
                                                           (letrec*
                                                            ((g7888
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7888))
                                                          #f))))
                                                     g7879))
                                                   #f))
                                                #f)))))
                                         g7876)))))
                                   g7868)))))
                             g7865)))))
                       g7863))))
                   g7862)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7892)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7891)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7890)))))
                   g7889)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (letrec*
                         ((x7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7896)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7895)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7894)))))
                   g7893)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7897
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7897)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7901
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7902 (if val7526 val7526 #f)))
                             g7902)))))
                       g7901))))
                   g7899)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7907))))
                    (g7905
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
                       ((g7908
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7909 res))
                       g7909))))
                   g7905)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7910
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7910)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7914))))
                    (g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7916
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7916))))
                   g7913)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7919)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7918)))))
                   g7917)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7923)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7922)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7921)))))
                   g7920)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7926)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (letrec*
                         ((x7929
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7929)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7928)))))
                   g7927)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7935)))))
                   g7932)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (letrec*
                         ((x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7939)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7938)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7941)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7943
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7943)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (letrec*
                         ((x7946
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7946)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7945)))))
                   g7944)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7947
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7947)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7955))))
                          (x7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7953)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7954 x7952)))))))
                   g7949)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7959)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7958)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7957)))))
                   g7956)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (letrec*
                         ((x7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7963)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7962)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7961)))))
                   g7960)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7966))))
                    (g7965
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7967)))))
                   g7965)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7969
                        (letrec*
                         ((x7970
                           (letrec*
                            ((x7971
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7971)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7970)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7969)))))
                   g7968)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((x-cnd7977
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7977
                        (letrec*
                         ((g7978
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7978)
                        (letrec*
                         ((x-cnd7979
                           (letrec*
                            ((x7980
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7980)))))
                         (if x-cnd7979
                           (letrec*
                            ((g7981
                              (letrec*
                               ((x7982
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7982)))))
                            g7981)
                           (letrec*
                            ((x-cnd7983
                              (letrec*
                               ((x7984
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7984)))))
                            (if x-cnd7983
                              (letrec*
                               ((g7985
                                 (letrec*
                                  ((x7987
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7986
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7987 x7986)))))
                               g7985)
                              (letrec*
                               ((x-cnd7988
                                 (letrec*
                                  ((x7989
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7989)))))
                               (if x-cnd7988
                                 (letrec*
                                  ((g7990
                                    (letrec*
                                     ((x7993
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7992
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7991
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7993 x7992 x7991)))))
                                  g7990)
                                 (letrec*
                                  ((x-cnd7994
                                    (letrec*
                                     ((x7995
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7995)))))
                                  (if x-cnd7994
                                    (letrec*
                                     ((g7996
                                       (letrec*
                                        ((x8000
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7999
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7998
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7997
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x8000 x7999 x7998 x7997)))))
                                     g7996)
                                    (letrec*
                                     ((x-cnd8001
                                       (letrec*
                                        ((x8002
                                          (letrec*
                                           ((x8003
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x8003)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x8002)))))
                                     (if x-cnd8001
                                       (letrec*
                                        ((g8004
                                          (letrec*
                                           ((x8010
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8009
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8008
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8007
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8005
                                             (letrec*
                                              ((x8006
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8006)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8010
                                              x8009
                                              x8008
                                              x8007
                                              x8005)))))
                                        g8004)
                                       (letrec*
                                        ((x-cnd8011
                                          (letrec*
                                           ((x8012
                                             (letrec*
                                              ((x8013
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8013)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8012)))))
                                        (if x-cnd8011
                                          (letrec*
                                           ((g8014
                                             (letrec*
                                              ((x8022
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8021
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8020
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8019
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8017
                                                (letrec*
                                                 ((x8018
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8018))))
                                               (x8015
                                                (letrec*
                                                 ((x8016
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8016)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8022
                                                 x8021
                                                 x8020
                                                 x8019
                                                 x8017
                                                 x8015)))))
                                           g8014)
                                          (letrec*
                                           ((x-cnd8023
                                             (letrec*
                                              ((x8024
                                                (letrec*
                                                 ((x8025
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8025)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8024)))))
                                           (if x-cnd8023
                                             (letrec*
                                              ((g8026
                                                (letrec*
                                                 ((x8036
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8035
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8034
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8033
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8031
                                                   (letrec*
                                                    ((x8032
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8032))))
                                                  (x8029
                                                   (letrec*
                                                    ((x8030
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8030))))
                                                  (x8027
                                                   (letrec*
                                                    ((x8028
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8028)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8036
                                                    x8035
                                                    x8034
                                                    x8033
                                                    x8031
                                                    x8029
                                                    x8027)))))
                                              g8026)
                                             (letrec*
                                              ((g8037
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8037)))))))))))))))))))
                   g7974)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8040))))
                    (g8039
                     (letrec*
                      ((x-cnd8041
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8041
                        #f
                        (letrec*
                         ((x-cnd8042
                           (letrec*
                            ((x8043
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8043 e)))))
                         (if x-cnd8042
                           l
                           (letrec*
                            ((x8044
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8044)))))))))
                   g8039)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8046
                        (letrec*
                         ((x8047
                           (letrec*
                            ((x8048
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8048)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8047)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8046)))))
                   g8045)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8050
                        (letrec*
                         ((x8051
                           (letrec*
                            ((x8052
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8052)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8051)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8050)))))
                   g8049)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8053
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8053)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8056))))
                    (g8055
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8055)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8058
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8058))))
                   g8057)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8060
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8060)))))
                   g8059)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8062
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8062
                           (letrec*
                            ((x8063
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8063)))
                           #f))))
                      (letrec*
                       ((g8064
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8064))))
                   g8061)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8066
                        (letrec*
                         ((x8067
                           (letrec*
                            ((x8068
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8068)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8067)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8066)))))
                   g8065)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x-cnd8070
                        (letrec*
                         ((x8071 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8071 c)))))
                      (if x-cnd8070
                        (letrec*
                         ((x8072 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8072)))
                        #f))))
                   g8069)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8075
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8075))))
                    (g8074
                     (letrec*
                      ((x-cnd8076
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8076
                        #f
                        (letrec*
                         ((x-cnd8077
                           (letrec*
                            ((x8078
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8078 k)))))
                         (if x-cnd8077
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8079
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8079)))))))))
                   g8074)))
               (not (lambda (x) (letrec* ((g8080 (if x #f #t))) g8080)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8081
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8081)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8082
                     (letrec*
                      ((x8084
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8084))))
                    (g8083
                     (letrec*
                      ((x-cnd8085
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8085
                        #f
                        (letrec*
                         ((x-cnd8086
                           (letrec*
                            ((x8087
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8087 e)))))
                         (if x-cnd8086
                           l
                           (letrec*
                            ((x8088
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8088)))))))))
                   g8083)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8090
                        (letrec*
                         ((x8091
                           (letrec*
                            ((x8092
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8092)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8091)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8090)))))
                   g8089)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8095
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8095))))
                    (g8094
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8096
                             (letrec*
                              ((x-cnd8097
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8097
                                0
                                (letrec*
                                 ((x8098
                                   (letrec*
                                    ((x8099
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8099)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8098)))))))
                           g8096))))
                      (letrec*
                       ((g8100
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8100))))
                   g8094)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8104))))
                    (g8102
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8105))))
                    (g8103
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8106
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8106))))
                   g8103)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8108)))))
                   g8107)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8110
                        (letrec*
                         ((x8111
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8111)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8110)))))
                   g8109)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8114))))
                    (g8113
                     (letrec*
                      ((x-cnd8115
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8115
                        #f
                        (letrec*
                         ((x-cnd8116
                           (letrec*
                            ((x8117
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8117 k)))))
                         (if x-cnd8116
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8118
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8118)))))))))
                   g8113)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8120)))))
                   g8119)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8124))))
                    (g8122
                     (letrec*
                      ((x8125
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8125))))
                    (g8123
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8126)))))
                   g8123)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8128
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8128))))
                   g8127)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8132
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8132))))
                    (g8130
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8133))))
                    (g8131
                     (letrec*
                      ((x-cnd8134
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8134
                        #t
                        (letrec*
                         ((x-cnd8135
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8135
                           (letrec*
                            ((g8136
                              (letrec*
                               ((x8138
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8138))))
                             (g8137
                              (letrec*
                               ((x8139
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8139)))))
                            g8137)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8131)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8142))))
                    (g8141
                     (letrec*
                      ((x-cnd8143
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8143
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8141)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8147))))
                    (g8145
                     (letrec*
                      ((x8148
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8148))))
                    (g8146
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8149
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8149))))
                   g8146)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8151
                        (letrec*
                         ((x8152
                           (letrec*
                            ((x8153
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8153)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8152)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8151)))))
                   g8150)))
               (newline (lambda () (letrec* ((g8154 #f)) g8154)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8157
                        (letrec*
                         ((x8158
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8158))))
                       (x8156
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8157 x8156)))))
                   g8155)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8161))))
                    (g8160
                     (letrec*
                      ((x8162
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8162)))))
                   g8160)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x8167
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8167))))
                    (g8164
                     (letrec*
                      ((x8168
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8168))))
                    (g8165
                     (letrec*
                      ((x8169
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8170)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8169))))
                    (g8166
                     (letrec*
                      ((x-cnd8171
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8171
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8173
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8172
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8173 x8172)))))))
                   g8166)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x-cnd8175
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8175
                        a
                        (letrec*
                         ((x8176
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8176)))))))
                   g8174)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g8177
                     (letrec*
                      ((x-cnd8178
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8178
                        empty
                        (letrec*
                         ((x8179
                           (letrec*
                            ((x8180
                              (begin
                                (write '(funapp 1481 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1481 55))
                              (display "\n")
                              (mk-list x8180 x)))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (cons x x8179)))))))
                   g8177)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8181
                     (letrec*
                      ((x-cnd8182
                        (begin
                          (write '(funapp 1489 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8182
                        #f
                        (letrec*
                         ((val7533
                           (letrec*
                            ((x8183
                              (begin
                                (write '(funapp 1493 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1493 64))
                              (display "\n")
                              (= x x8183)))))
                         (letrec*
                          ((g8184
                            (if val7533
                              val7533
                              (letrec*
                               ((x8185
                                 (begin
                                   (write '(funapp 1498 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1498 59))
                                 (display "\n")
                                 (mem x x8185))))))
                          g8184))))))
                   g8181))))
              (letrec*
               ((g8186
                 (begin
                   (write '(funapp 1503 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1504 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7625
                          (begin
                            (write '(funapp 1506 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1506 34))
                               (display "\n")
                               'module))))
                         (xk7626
                          (begin
                            (write '(funapp 1506 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1506 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8187
                           (begin
                             (write '(funapp 1509 24))
                             (display "\n")
                             ((lambda (j7629 k7630 f7631)
                                (letrec*
                                 ((g8188
                                   (lambda (g7627 g7628)
                                     (letrec*
                                      ((g8189
                                        (letrec*
                                         ((x7632
                                           (begin
                                             (write '(funapp 1516 44))
                                             (display "\n")
                                             (integer?/c j7629 k7630 g7627)))
                                          (x7633
                                           (begin
                                             (write '(funapp 1517 44))
                                             (display "\n")
                                             (integer?/c j7629 k7630 g7628))))
                                         (letrec*
                                          ((g8190
                                            (letrec*
                                             ((x8192
                                               (begin
                                                 (write '(funapp 1522 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8193
                                                       (letrec*
                                                        ((x8198
                                                          (begin
                                                            (write
                                                             '(funapp 1526 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1527 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8198
                                                           (lambda (g7634
                                                                    g7635
                                                                    g7636)
                                                             (letrec*
                                                              ((g8194
                                                                (letrec*
                                                                 ((x-cnd8195
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1534
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8196
                                                                           (letrec*
                                                                            ((val7534
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1539
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8197
                                                                               (if val7534
                                                                                 val7534
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1544
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8197))))
                                                                         g8196))
                                                                      g7636))))
                                                                 (if x-cnd8195
                                                                   g7636
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7634
                                                                        1552
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7634)))))))
                                                              g8194)))))))
                                                     g8193))
                                                  x7632
                                                  x7633)))
                                              (x8191
                                               (begin
                                                 (write '(funapp 1567 48))
                                                 (display "\n")
                                                 (f7631 x7632 x7633))))
                                             (begin
                                               (write '(funapp 1568 40))
                                               (display "\n")
                                               (x8192 j7629 k7630 x8191)))))
                                          g8190))))
                                      g8189))))
                                 g8188))
                              xj7625
                              xk7626
                              mk-list))))
                         g8187))
                       (letrec*
                        ((x8201
                          (letrec*
                           ((xj7637
                             (begin
                               (write '(funapp 1579 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1579 37))
                                  (display "\n")
                                  'module))))
                            (xk7638
                             (begin
                               (write '(funapp 1579 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1579 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8202
                              (begin
                                (write '(funapp 1582 27))
                                (display "\n")
                                ((lambda (j7641 k7642 f7643)
                                   (letrec*
                                    ((g8203
                                      (lambda (g7639 g7640)
                                        (letrec*
                                         ((g8204
                                           (letrec*
                                            ((x8205
                                              (letrec*
                                               ((x8208
                                                 (begin
                                                   (write '(funapp 1592 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7641
                                                    k7642
                                                    g7639)))
                                                (x8206
                                                 (letrec*
                                                  ((x8207
                                                    (begin
                                                      (write '(funapp 1595 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1596 45))
                                                    (display "\n")
                                                    (x8207
                                                     j7641
                                                     k7642
                                                     g7640)))))
                                               (begin
                                                 (write '(funapp 1597 42))
                                                 (display "\n")
                                                 (f7643 x8208 x8206)))))
                                            (begin
                                              (write '(funapp 1598 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7641
                                               k7642
                                               x8205)))))
                                         g8204))))
                                    g8203))
                                 xj7637
                                 xk7638
                                 mem))))
                            g8202)))
                         (x8200 (input))
                         (x8199 (input)))
                        (begin
                          (write '(funapp 1607 21))
                          (display "\n")
                          (x8201 x8200 x8199)))))))))
               g8186))))
           g7657))))
       g7655)))
    g7654)))
