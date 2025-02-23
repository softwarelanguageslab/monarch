(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7636 #t)) g7636)))
    (meta (lambda (v) (letrec* ((g7637 v)) g7637)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7638
          (letrec*
           ((g7639
             (letrec*
              ((x-e7640 lst))
              (letrec*
               ((v1804 x-e7640))
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
                   ((x-cnd7641
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7641
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
           g7639)))
        g7638)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7642 (lambda (v) (letrec* ((g7643 v)) g7643)))) g7642)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7644
          (letrec*
           ((x7645 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7645)))))
        g7644))))
   (letrec*
    ((g7646
      (letrec*
       ((g7647
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
           ((g7648 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7649
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7650
                     (lambda (k j lst)
                       (letrec*
                        ((g7651
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7652
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7652))
                             lst))))
                        g7651))))
                   g7650)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7654
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7653)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7656
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7655)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7658
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7657)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7661 #t)) g7661)) g7544))))
                      (if x-cnd7660
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7659)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7664 #t)) g7664)) g7547))))
                      (if x-cnd7663
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7662)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7666
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7665)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7668
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7667)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7670
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7669)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7672
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7671)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7673
                     (lambda (k j v)
                       (letrec*
                        ((g7674
                          (letrec*
                           ((x-cnd7675
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7675
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7674))))
                   g7673)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7676
                     (lambda (k j v)
                       (letrec*
                        ((g7677
                          (letrec*
                           ((x-cnd7678
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7678
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7682
                                (letrec*
                                 ((x7683
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7683))))
                               (x7679
                                (letrec*
                                 ((x7681
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7680
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7681 k j x7680)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7682 x7679)))))))
                        g7677))))
                   g7676)))
               (any? (lambda (v) (letrec* ((g7684 #t)) g7684)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7686)))))
                   g7685)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7689
                                (letrec*
                                 ((x7690
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7690)))))
                              g7689))
                           g7562))))
                      (if x-cnd7688
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7687)))
               (meta (lambda (v) (letrec* ((g7691 v)) g7691)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7692
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7694
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7695
                                 (letrec*
                                  ((x7696
                                    (letrec*
                                     ((x7698
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7697
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7698 x7697)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7696)))))
                               g7695))))
                          g7694))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7693
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7693))))))
                  g7692)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7699
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7701
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7702
                                 (letrec*
                                  ((x7703
                                    (letrec*
                                     ((x7705
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7704
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7705 x7704)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7703)))))
                               g7702))))
                          g7701))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7700
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7700))))))
                  g7699)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7706
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7708
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7709
                                 (letrec*
                                  ((x7710
                                    (letrec*
                                     ((x7712
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7711
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7712 x7711)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7710)))))
                               g7709))))
                          g7708))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7707
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7707))))))
                  g7706)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7713
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7715
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7716
                                 (letrec*
                                  ((x7717
                                    (letrec*
                                     ((x7719
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7718
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7719 x7718)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7717)))))
                               g7716))))
                          g7715))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7714
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7714))))))
                  g7713)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7720
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7722
                            (lambda (g7593)
                              (letrec*
                               ((g7723
                                 (letrec*
                                  ((x7724
                                    (letrec*
                                     ((x7725
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7725)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7724)))))
                               g7723))))
                          g7722))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7721
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7721))))))
                  g7720)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7726
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7728
                            (lambda (g7599)
                              (letrec*
                               ((g7729
                                 (letrec*
                                  ((x7730
                                    (letrec*
                                     ((x7731
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7731)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7730)))))
                               g7729))))
                          g7728))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7727
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7727))))))
                  g7726)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7732
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7734
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7735
                                 (letrec*
                                  ((x7736
                                    (letrec*
                                     ((x7738
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7737
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7738 x7737)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7736)))))
                               g7735))))
                          g7734))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7733
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7733))))))
                  g7732)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7739
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7741
                            (lambda (g7612)
                              (letrec*
                               ((g7742
                                 (letrec*
                                  ((x7743
                                    (letrec*
                                     ((x7744
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7744)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7743)))))
                               g7742))))
                          g7741))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7740
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7740))))))
                  g7739)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7745
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7747
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7748
                                 (letrec*
                                  ((x7749
                                    (letrec*
                                     ((x7751
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7750
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7751 x7750)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7749)))))
                               g7748))))
                          g7747))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7746
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7746))))))
                  g7745)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7752
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7752)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7755)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7765))))
                          (x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7763)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7764 x7762)))))))
                   g7758)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7770)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7775)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7773)))))
                   g7772)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7779))))
                    (g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7780))))
                    (g7778
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
                       ((g7781
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7782 res))
                       g7782))))
                   g7778)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7785)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7787)))))
                   g7786)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7793
                        #f
                        (letrec*
                         ((x-cnd7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7795 k)))))
                         (if x-cnd7794
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7796)))))))))
                   g7791)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7798)))))
                   g7797)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        ""
                        (letrec*
                         ((x7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7806))))
                          (x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7804)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7805 x7803)))))))
                   g7800)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7812
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7812))))
                   g7809)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7814
                        (letrec*
                         ((x7815
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7816)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7815)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7814)))))
                   g7813)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7822
                        x
                        (letrec*
                         ((x7824
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7823
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7824 x7823)))))))
                   g7819)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7825
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7825)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x-cnd7827
                        (letrec*
                         ((x7828 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7828)))))
                      (if x-cnd7827
                        (letrec*
                         ((x7829 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7829)))
                        #f))))
                   g7826)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7832))))
                    (g7831
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7833
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7834 (if val7517 val7517 #f)))
                             g7834)))))
                       g7833))))
                   g7831)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7836
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7836 9)))))
                      (letrec*
                       ((g7837
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7838
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7838 10)))))
                            (letrec*
                             ((g7839
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7840
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7840 32))))))
                             g7839)))))
                       g7837))))
                   g7835)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7842
                        (letrec*
                         ((x7843
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7843)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7842)))))
                   g7841)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7845)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7847 #f)) g7847)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7849)))))
                   g7848)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7852))))
                    (g7851
                     (letrec*
                      ((x-cnd7853
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7853
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7851)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7855
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7856
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7856
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7857
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7858
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7858
                                       (letrec*
                                        ((x-cnd7859
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7859
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7860
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7861
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7861
                                             (letrec*
                                              ((x-cnd7862
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7862
                                                (letrec*
                                                 ((x-cnd7863
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7864
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7865 x7864)))))
                                                 (if x-cnd7863
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7866
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7867 x7866)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7868
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7869
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7869
                                                (letrec*
                                                 ((x-cnd7870
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7870
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7871
                                                       (letrec*
                                                        ((x-cnd7872
                                                          (letrec*
                                                           ((x7873
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
                                                             (= x7873 n)))))
                                                        (if x-cnd7872
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7874
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
                                                                    ((g7875
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7876
                                                                           (letrec*
                                                                            ((x7878
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
                                                                             (x7877
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
                                                                               x7878
                                                                               x7877)))))
                                                                         (if x-cnd7876
                                                                           (letrec*
                                                                            ((x7879
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
                                                                               x7879)))
                                                                           #f)))))
                                                                    g7875))))
                                                                g7874))))
                                                           (letrec*
                                                            ((g7880
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7880))
                                                          #f))))
                                                     g7871))
                                                   #f))
                                                #f)))))
                                         g7868)))))
                                   g7860)))))
                             g7857)))))
                       g7855))))
                   g7854)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7884)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7883)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7882)))))
                   g7881)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7888)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7887)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7889)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7893
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7894 (if val7526 val7526 #f)))
                             g7894)))))
                       g7893))))
                   g7891)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7898))))
                    (g7896
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7899))))
                    (g7897
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
                       ((g7900
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7901 res))
                       g7901))))
                   g7897)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7902
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7902)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7908
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7908))))
                   g7905)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7911)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7910)))))
                   g7909)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7915)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7913)))))
                   g7912)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7918)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7917)))))
                   g7916)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7921)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7920)))))
                   g7919)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7926))))
                    (g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7927)))))
                   g7924)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7931)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7930)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7933)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7935
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7935)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (letrec*
                         ((x7938
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7938)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7939
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7939)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (letrec*
                      ((x-cnd7943
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7943
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7947))))
                          (x7944
                           (letrec*
                            ((x7945
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7945)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7946 x7944)))))))
                   g7941)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (letrec*
                         ((x7950
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7951)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7950)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7949)))))
                   g7948)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (letrec*
                         ((x7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7955)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7954)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7953)))))
                   g7952)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7958))))
                    (g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7959)))))
                   g7957)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7963)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7962)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7961)))))
                   g7960)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7969
                        (letrec*
                         ((g7970
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7970)
                        (letrec*
                         ((x-cnd7971
                           (letrec*
                            ((x7972
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7972)))))
                         (if x-cnd7971
                           (letrec*
                            ((g7973
                              (letrec*
                               ((x7974
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7974)))))
                            g7973)
                           (letrec*
                            ((x-cnd7975
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7976)))))
                            (if x-cnd7975
                              (letrec*
                               ((g7977
                                 (letrec*
                                  ((x7979
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7978
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7979 x7978)))))
                               g7977)
                              (letrec*
                               ((x-cnd7980
                                 (letrec*
                                  ((x7981
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7981)))))
                               (if x-cnd7980
                                 (letrec*
                                  ((g7982
                                    (letrec*
                                     ((x7985
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7984
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7983
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7985 x7984 x7983)))))
                                  g7982)
                                 (letrec*
                                  ((x-cnd7986
                                    (letrec*
                                     ((x7987
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7987)))))
                                  (if x-cnd7986
                                    (letrec*
                                     ((g7988
                                       (letrec*
                                        ((x7992
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7991
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7990
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7989
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7992 x7991 x7990 x7989)))))
                                     g7988)
                                    (letrec*
                                     ((x-cnd7993
                                       (letrec*
                                        ((x7994
                                          (letrec*
                                           ((x7995
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7995)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7994)))))
                                     (if x-cnd7993
                                       (letrec*
                                        ((g7996
                                          (letrec*
                                           ((x8002
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8001
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8000
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7999
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7997
                                             (letrec*
                                              ((x7998
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7998)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8002
                                              x8001
                                              x8000
                                              x7999
                                              x7997)))))
                                        g7996)
                                       (letrec*
                                        ((x-cnd8003
                                          (letrec*
                                           ((x8004
                                             (letrec*
                                              ((x8005
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8005)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8004)))))
                                        (if x-cnd8003
                                          (letrec*
                                           ((g8006
                                             (letrec*
                                              ((x8014
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8013
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8012
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8011
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8009
                                                (letrec*
                                                 ((x8010
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8010))))
                                               (x8007
                                                (letrec*
                                                 ((x8008
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8008)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8014
                                                 x8013
                                                 x8012
                                                 x8011
                                                 x8009
                                                 x8007)))))
                                           g8006)
                                          (letrec*
                                           ((x-cnd8015
                                             (letrec*
                                              ((x8016
                                                (letrec*
                                                 ((x8017
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8017)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8016)))))
                                           (if x-cnd8015
                                             (letrec*
                                              ((g8018
                                                (letrec*
                                                 ((x8028
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8027
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8026
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8025
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8023
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8024))))
                                                  (x8021
                                                   (letrec*
                                                    ((x8022
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8022))))
                                                  (x8019
                                                   (letrec*
                                                    ((x8020
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8020)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8028
                                                    x8027
                                                    x8026
                                                    x8025
                                                    x8023
                                                    x8021
                                                    x8019)))))
                                              g8018)
                                             (letrec*
                                              ((g8029
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8029)))))))))))))))))))
                   g7966)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8032
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8032))))
                    (g8031
                     (letrec*
                      ((x-cnd8033
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8033
                        #f
                        (letrec*
                         ((x-cnd8034
                           (letrec*
                            ((x8035
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8035 e)))))
                         (if x-cnd8034
                           l
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8036)))))))))
                   g8031)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8038
                        (letrec*
                         ((x8039
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8040)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8038)))))
                   g8037)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((x8042
                        (letrec*
                         ((x8043
                           (letrec*
                            ((x8044
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8044)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8043)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8042)))))
                   g8041)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8045
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8045)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8048))))
                    (g8047
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8047)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8050
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8050))))
                   g8049)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8052)))))
                   g8051)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8054
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8054
                           (letrec*
                            ((x8055
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8055)))
                           #f))))
                      (letrec*
                       ((g8056
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8056))))
                   g8053)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((x8058
                        (letrec*
                         ((x8059
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8060)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8059)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8058)))))
                   g8057)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((x-cnd8062
                        (letrec*
                         ((x8063 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8063 c)))))
                      (if x-cnd8062
                        (letrec*
                         ((x8064 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8064)))
                        #f))))
                   g8061)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8067
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8067))))
                    (g8066
                     (letrec*
                      ((x-cnd8068
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8068
                        #f
                        (letrec*
                         ((x-cnd8069
                           (letrec*
                            ((x8070
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8070 k)))))
                         (if x-cnd8069
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8071
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8071)))))))))
                   g8066)))
               (not (lambda (x) (letrec* ((g8072 (if x #f #t))) g8072)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8073
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8073)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8074
                     (letrec*
                      ((x8076
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8076))))
                    (g8075
                     (letrec*
                      ((x-cnd8077
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8077
                        #f
                        (letrec*
                         ((x-cnd8078
                           (letrec*
                            ((x8079
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8079 e)))))
                         (if x-cnd8078
                           l
                           (letrec*
                            ((x8080
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8080)))))))))
                   g8075)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8082
                        (letrec*
                         ((x8083
                           (letrec*
                            ((x8084
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8084)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8083)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8082)))))
                   g8081)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8087
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8087))))
                    (g8086
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8088
                             (letrec*
                              ((x-cnd8089
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8089
                                0
                                (letrec*
                                 ((x8090
                                   (letrec*
                                    ((x8091
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8091)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8090)))))))
                           g8088))))
                      (letrec*
                       ((g8092
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8092))))
                   g8086)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8096
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8096))))
                    (g8094
                     (letrec*
                      ((x8097
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8097))))
                    (g8095
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8098
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8098))))
                   g8095)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8099
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8100)))))
                   g8099)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8102
                        (letrec*
                         ((x8103
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8103)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8102)))))
                   g8101)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((x8106
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8106))))
                    (g8105
                     (letrec*
                      ((x-cnd8107
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8107
                        #f
                        (letrec*
                         ((x-cnd8108
                           (letrec*
                            ((x8109
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8109 k)))))
                         (if x-cnd8108
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8110
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8110)))))))))
                   g8105)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8111
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8112)))))
                   g8111)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8118)))))
                   g8115)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8120
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8120))))
                   g8119)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8124))))
                    (g8122
                     (letrec*
                      ((x8125
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8125))))
                    (g8123
                     (letrec*
                      ((x-cnd8126
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8126
                        #t
                        (letrec*
                         ((x-cnd8127
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8127
                           (letrec*
                            ((g8128
                              (letrec*
                               ((x8130
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8130))))
                             (g8129
                              (letrec*
                               ((x8131
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8131)))))
                            g8129)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8123)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x8134
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8134))))
                    (g8133
                     (letrec*
                      ((x-cnd8135
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8135
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8133)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8139))))
                    (g8137
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8140))))
                    (g8138
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8141
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8141))))
                   g8138)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8143
                        (letrec*
                         ((x8144
                           (letrec*
                            ((x8145
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8145)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8144)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8143)))))
                   g8142)))
               (newline (lambda () (letrec* ((g8146 #f)) g8146)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8149
                        (letrec*
                         ((x8150
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8150))))
                       (x8148
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8149 x8148)))))
                   g8147)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8153))))
                    (g8152
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8154)))))
                   g8152)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x8160
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8160))))
                    (g8157
                     (letrec*
                      ((x8161
                        (letrec*
                         ((x8162
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8162)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8161))))
                    (g8158
                     (letrec*
                      ((x-cnd8163
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8163
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8165
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8164
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8165 x8164)))))))
                   g8158)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x-cnd8167
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8167
                        a
                        (letrec*
                         ((x8168
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8168)))))))
                   g8166)))
               (STATE/C
                (lambda (g7626 g7627 g7628)
                  (letrec*
                   ((g8169
                     (letrec*
                      ((x-cnd8170
                        (begin
                          (write '(funapp 1477 25))
                          (display "\n")
                          ((lambda (v7625)
                             (letrec*
                              ((g8171
                                (letrec*
                                 ((x-cnd8172
                                   (begin
                                     (write '(funapp 1481 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1481 48))
                                        (display "\n")
                                        'init)
                                      v7625))))
                                 (if x-cnd8172
                                   #t
                                   (letrec*
                                    ((x-cnd8173
                                      (begin
                                        (write '(funapp 1485 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1485 51))
                                           (display "\n")
                                           'opened)
                                         v7625))))
                                    (if x-cnd8173
                                      #t
                                      (letrec*
                                       ((x-cnd8174
                                         (begin
                                           (write '(funapp 1489 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1489 54))
                                              (display "\n")
                                              'closed)
                                            v7625))))
                                       (if x-cnd8174
                                         #t
                                         (begin
                                           (write '(funapp 1492 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1492 44))
                                              (display "\n")
                                              'ignore)
                                            v7625))))))))))
                              g8171))
                           g7628))))
                      (if x-cnd8170
                        g7628
                        (begin
                          (write '(blame g7626 1497 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7626)))))))
                   g8169)))
               (loop
                (lambda ()
                  (letrec*
                   ((g8175
                     (begin (write '(funapp 1508 50)) (display "\n") (loop))))
                   g8175)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((x-cnd8177
                        (begin
                          (write '(funapp 1514 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1514 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8177
                        (begin
                          (write '(funapp 1515 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1515 44))
                          (display "\n")
                          'ignore)))))
                   g8176)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g8178
                     (if x
                       (begin
                         (write '(funapp 1519 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g8178)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g8179
                     (letrec*
                      ((x-cnd8180
                        (begin
                          (write '(funapp 1525 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1525 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8180
                        (letrec*
                         ((g8181
                           (begin
                             (write '(funapp 1527 41))
                             (display "\n")
                             'closed)))
                         g8181)
                        (letrec*
                         ((x-cnd8182
                           (begin
                             (write '(funapp 1529 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1529 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8182
                           (letrec*
                            ((g8183
                              (begin
                                (write '(funapp 1531 44))
                                (display "\n")
                                'ignore)))
                            g8183)
                           (letrec*
                            ((g8184
                              (begin
                                (write '(funapp 1532 45))
                                (display "\n")
                                (loop)))
                             (g8185 0))
                            g8185)))))))
                   g8179)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8186
                     (if x
                       (begin
                         (write '(funapp 1536 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8186)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8187
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1540 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1540 61))
                        (display "\n")
                        (close_ y x8189))))
                    (g8188
                     (letrec*
                      ((x8190
                        (letrec*
                         ((x8191
                           (begin
                             (write '(funapp 1544 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1544 57))
                           (display "\n")
                           (read_ y x8191)))))
                      (begin
                        (write '(funapp 1545 23))
                        (display "\n")
                        (f x y x8190)))))
                   g8188)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8192
                     (letrec*
                      ((x-cnd8193
                        (begin
                          (write '(funapp 1552 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1552 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8193
                        (begin
                          (write '(funapp 1553 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1553 44))
                          (display "\n")
                          'ignore)))))
                   g8192)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((x-cnd8195
                        (begin
                          (write '(funapp 1560 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8195
                        (letrec*
                         ((x8196
                           (begin
                             (write '(funapp 1562 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1562 54))
                           (display "\n")
                           (f x #t x8196)))
                        (begin
                          (write '(funapp 1563 25))
                          (display "\n")
                          (f x #f st))))))
                   g8194)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8197
                     (letrec*
                      ((x-cnd8199
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8199
                        (begin
                          (write '(funapp 1571 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1571 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1571 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1571 63))
                             (display "\n")
                             'init))))))
                    (g8198
                     (begin (write '(funapp 1572 27)) (display "\n") 'unit)))
                   g8198))))
              (letrec*
               ((g8200
                 (begin
                   (write '(funapp 1576 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1577 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8203
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 1581 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1581 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 1581 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1581 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8204
                              (begin
                                (write '(funapp 1584 27))
                                (display "\n")
                                ((lambda (j7633 k7634 f7635)
                                   (letrec*
                                    ((g8205
                                      (lambda (g7631 g7632)
                                        (letrec*
                                         ((g8206
                                           (letrec*
                                            ((x8207
                                              (letrec*
                                               ((x8209
                                                 (begin
                                                   (write '(funapp 1594 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7633
                                                    k7634
                                                    g7631)))
                                                (x8208
                                                 (begin
                                                   (write '(funapp 1596 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7633
                                                    k7634
                                                    g7632))))
                                               (begin
                                                 (write '(funapp 1597 42))
                                                 (display "\n")
                                                 (f7635 x8209 x8208)))))
                                            (begin
                                              (write '(funapp 1598 39))
                                              (display "\n")
                                              (any/c j7633 k7634 x8207)))))
                                         g8206))))
                                    g8205))
                                 xj7629
                                 xk7630
                                 main))))
                            g8204)))
                         (x8202 (input))
                         (x8201 (input)))
                        (begin
                          (write '(funapp 1607 21))
                          (display "\n")
                          (x8203 x8202 x8201)))))))))
               g8200))))
           g7649))))
       g7647)))
    g7646)))
