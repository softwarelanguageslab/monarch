(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7632 #t)) g7632)))
    (meta (lambda (v) (letrec* ((g7633 v)) g7633)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7634
          (letrec*
           ((g7635
             (letrec*
              ((x-e7636 lst))
              (letrec*
               ((v1804 x-e7636))
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
                   ((x-cnd7637
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7637
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
           g7635)))
        g7634)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7638 (lambda (v) (letrec* ((g7639 v)) g7639)))) g7638)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7640
          (letrec*
           ((x7641 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7641)))))
        g7640))))
   (letrec*
    ((g7642
      (letrec*
       ((g7643
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
           ((g7644 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7645
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7646
                     (lambda (k j lst)
                       (letrec*
                        ((g7647
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7648
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7648))
                             lst))))
                        g7647))))
                   g7646)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7650
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7649)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7652
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7651)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7654
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7653)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7657 #t)) g7657)) g7544))))
                      (if x-cnd7656
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7655)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7660 #t)) g7660)) g7547))))
                      (if x-cnd7659
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7658)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7662
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7661)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7664
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7663)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7666
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7665)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7668
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7667)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7669
                     (lambda (k j v)
                       (letrec*
                        ((g7670
                          (letrec*
                           ((x-cnd7671
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7671
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7670))))
                   g7669)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7672
                     (lambda (k j v)
                       (letrec*
                        ((g7673
                          (letrec*
                           ((x-cnd7674
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7674
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7678
                                (letrec*
                                 ((x7679
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7679))))
                               (x7675
                                (letrec*
                                 ((x7677
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7676
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7677 k j x7676)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7678 x7675)))))))
                        g7673))))
                   g7672)))
               (any? (lambda (v) (letrec* ((g7680 #t)) g7680)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7682)))))
                   g7681)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x-cnd7684
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7685
                                (letrec*
                                 ((x7686
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7686)))))
                              g7685))
                           g7562))))
                      (if x-cnd7684
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7683)))
               (meta (lambda (v) (letrec* ((g7687 v)) g7687)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7688
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7690
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7691
                                 (letrec*
                                  ((x7692
                                    (letrec*
                                     ((x7694
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7693
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7694 x7693)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7692)))))
                               g7691))))
                          g7690))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7689
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7689))))))
                  g7688)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7695
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7697
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7698
                                 (letrec*
                                  ((x7699
                                    (letrec*
                                     ((x7701
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7700
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7701 x7700)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7699)))))
                               g7698))))
                          g7697))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7696
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7696))))))
                  g7695)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7702
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7704
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7705
                                 (letrec*
                                  ((x7706
                                    (letrec*
                                     ((x7708
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7707
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7708 x7707)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7706)))))
                               g7705))))
                          g7704))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7703
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7703))))))
                  g7702)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7709
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7711
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7712
                                 (letrec*
                                  ((x7713
                                    (letrec*
                                     ((x7715
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7714
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7715 x7714)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7713)))))
                               g7712))))
                          g7711))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7710
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7710))))))
                  g7709)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7716
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7718
                            (lambda (g7593)
                              (letrec*
                               ((g7719
                                 (letrec*
                                  ((x7720
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7721)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7720)))))
                               g7719))))
                          g7718))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7717
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7717))))))
                  g7716)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7722
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7724
                            (lambda (g7599)
                              (letrec*
                               ((g7725
                                 (letrec*
                                  ((x7726
                                    (letrec*
                                     ((x7727
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7727)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7726)))))
                               g7725))))
                          g7724))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7723
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7723))))))
                  g7722)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7728
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7730
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7731
                                 (letrec*
                                  ((x7732
                                    (letrec*
                                     ((x7734
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7733
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7734 x7733)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7732)))))
                               g7731))))
                          g7730))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7729
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7729))))))
                  g7728)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7735
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7737
                            (lambda (g7612)
                              (letrec*
                               ((g7738
                                 (letrec*
                                  ((x7739
                                    (letrec*
                                     ((x7740
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7740)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7739)))))
                               g7738))))
                          g7737))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7736
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7736))))))
                  g7735)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7741
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7743
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7744
                                 (letrec*
                                  ((x7745
                                    (letrec*
                                     ((x7747
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7746
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7747 x7746)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7745)))))
                               g7744))))
                          g7743))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7742
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7742))))))
                  g7741)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7748
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7748)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7761))))
                          (x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7759)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7760 x7758)))))))
                   g7754)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7767)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7766)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7771)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7769)))))
                   g7768)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7775))))
                    (g7773
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7776))))
                    (g7774
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
                       ((g7777
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7778 res))
                       g7778))))
                   g7774)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7783)))))
                   g7782)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        #f
                        (letrec*
                         ((x-cnd7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7791 k)))))
                         (if x-cnd7790
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7792)))))))))
                   g7787)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7794)))))
                   g7793)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        ""
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7802))))
                          (x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7800)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7801 x7799)))))))
                   g7796)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7808
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7808))))
                   g7805)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (letrec*
                         ((x7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7812)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7811)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7810)))))
                   g7809)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7818
                        x
                        (letrec*
                         ((x7820
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7819
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7820 x7819)))))))
                   g7815)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7821
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7821)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x-cnd7823
                        (letrec*
                         ((x7824 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7824)))))
                      (if x-cnd7823
                        (letrec*
                         ((x7825 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7825)))
                        #f))))
                   g7822)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7829
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7830 (if val7517 val7517 #f)))
                             g7830)))))
                       g7829))))
                   g7827)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7832
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7832 9)))))
                      (letrec*
                       ((g7833
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7834
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7834 10)))))
                            (letrec*
                             ((g7835
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7836
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7836 32))))))
                             g7835)))))
                       g7833))))
                   g7831)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7839)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7838)))))
                   g7837)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7841)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7843 #f)) g7843)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7845)))))
                   g7844)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7848))))
                    (g7847
                     (letrec*
                      ((x-cnd7849
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7849
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7847)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7851
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7852
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7852
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7853
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7854
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7854
                                       (letrec*
                                        ((x-cnd7855
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7855
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7856
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7857
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7857
                                             (letrec*
                                              ((x-cnd7858
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7858
                                                (letrec*
                                                 ((x-cnd7859
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7860
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7861 x7860)))))
                                                 (if x-cnd7859
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7862
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7863 x7862)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7864
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7865
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7865
                                                (letrec*
                                                 ((x-cnd7866
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7866
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7867
                                                       (letrec*
                                                        ((x-cnd7868
                                                          (letrec*
                                                           ((x7869
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
                                                             (= x7869 n)))))
                                                        (if x-cnd7868
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7870
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
                                                                    ((g7871
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7872
                                                                           (letrec*
                                                                            ((x7874
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
                                                                             (x7873
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
                                                                               x7874
                                                                               x7873)))))
                                                                         (if x-cnd7872
                                                                           (letrec*
                                                                            ((x7875
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
                                                                               x7875)))
                                                                           #f)))))
                                                                    g7871))))
                                                                g7870))))
                                                           (letrec*
                                                            ((g7876
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7876))
                                                          #f))))
                                                     g7867))
                                                   #f))
                                                #f)))))
                                         g7864)))))
                                   g7856)))))
                             g7853)))))
                       g7851))))
                   g7850)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (letrec*
                         ((x7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7880)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7879)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7878)))))
                   g7877)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7883)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7885
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7885)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7889
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7890 (if val7526 val7526 #f)))
                             g7890)))))
                       g7889))))
                   g7887)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7894))))
                    (g7892
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7895))))
                    (g7893
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
                       ((g7896
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7897 res))
                       g7897))))
                   g7893)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7898
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7898)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7903))))
                    (g7901
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7904
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7904))))
                   g7901)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7907)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7906)))))
                   g7905)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7911)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7910)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7909)))))
                   g7908)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7914)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7917)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7922))))
                    (g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7923)))))
                   g7920)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7927)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7926)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7929)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7931
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7931)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7934)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7935
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7935)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (letrec*
                      ((x-cnd7939
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7939
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7943))))
                          (x7940
                           (letrec*
                            ((x7941
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7941)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7942 x7940)))))))
                   g7937)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (letrec*
                         ((x7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7947)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7946)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7945)))))
                   g7944)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7951)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7950)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7949)))))
                   g7948)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7954))))
                    (g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7955)))))
                   g7953)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7959)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7958)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7957)))))
                   g7956)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7965
                        (letrec*
                         ((g7966
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7966)
                        (letrec*
                         ((x-cnd7967
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7968)))))
                         (if x-cnd7967
                           (letrec*
                            ((g7969
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7970)))))
                            g7969)
                           (letrec*
                            ((x-cnd7971
                              (letrec*
                               ((x7972
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7972)))))
                            (if x-cnd7971
                              (letrec*
                               ((g7973
                                 (letrec*
                                  ((x7975
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7974
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7975 x7974)))))
                               g7973)
                              (letrec*
                               ((x-cnd7976
                                 (letrec*
                                  ((x7977
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7977)))))
                               (if x-cnd7976
                                 (letrec*
                                  ((g7978
                                    (letrec*
                                     ((x7981
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7980
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7979
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7981 x7980 x7979)))))
                                  g7978)
                                 (letrec*
                                  ((x-cnd7982
                                    (letrec*
                                     ((x7983
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7983)))))
                                  (if x-cnd7982
                                    (letrec*
                                     ((g7984
                                       (letrec*
                                        ((x7988
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7987
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7986
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7985
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7988 x7987 x7986 x7985)))))
                                     g7984)
                                    (letrec*
                                     ((x-cnd7989
                                       (letrec*
                                        ((x7990
                                          (letrec*
                                           ((x7991
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7991)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7990)))))
                                     (if x-cnd7989
                                       (letrec*
                                        ((g7992
                                          (letrec*
                                           ((x7998
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7997
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7996
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7995
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7993
                                             (letrec*
                                              ((x7994
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7994)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7998
                                              x7997
                                              x7996
                                              x7995
                                              x7993)))))
                                        g7992)
                                       (letrec*
                                        ((x-cnd7999
                                          (letrec*
                                           ((x8000
                                             (letrec*
                                              ((x8001
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8001)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8000)))))
                                        (if x-cnd7999
                                          (letrec*
                                           ((g8002
                                             (letrec*
                                              ((x8010
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8009
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8008
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8007
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8005
                                                (letrec*
                                                 ((x8006
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8006))))
                                               (x8003
                                                (letrec*
                                                 ((x8004
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8004)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8010
                                                 x8009
                                                 x8008
                                                 x8007
                                                 x8005
                                                 x8003)))))
                                           g8002)
                                          (letrec*
                                           ((x-cnd8011
                                             (letrec*
                                              ((x8012
                                                (letrec*
                                                 ((x8013
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8013)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8012)))))
                                           (if x-cnd8011
                                             (letrec*
                                              ((g8014
                                                (letrec*
                                                 ((x8024
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8023
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8022
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8021
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8019
                                                   (letrec*
                                                    ((x8020
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8020))))
                                                  (x8017
                                                   (letrec*
                                                    ((x8018
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8018))))
                                                  (x8015
                                                   (letrec*
                                                    ((x8016
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8016)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8024
                                                    x8023
                                                    x8022
                                                    x8021
                                                    x8019
                                                    x8017
                                                    x8015)))))
                                              g8014)
                                             (letrec*
                                              ((g8025
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8025)))))))))))))))))))
                   g7962)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8028))))
                    (g8027
                     (letrec*
                      ((x-cnd8029
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8029
                        #f
                        (letrec*
                         ((x-cnd8030
                           (letrec*
                            ((x8031
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8031 e)))))
                         (if x-cnd8030
                           l
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8032)))))))))
                   g8027)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8034
                        (letrec*
                         ((x8035
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8036)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8034)))))
                   g8033)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8040)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8038)))))
                   g8037)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8041
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8041)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8042
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8044))))
                    (g8043
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8043)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8046
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8046))))
                   g8045)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8048)))))
                   g8047)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8050
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8050
                           (letrec*
                            ((x8051
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8051)))
                           #f))))
                      (letrec*
                       ((g8052
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8052))))
                   g8049)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (letrec*
                         ((x8055
                           (letrec*
                            ((x8056
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8056)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8055)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8054)))))
                   g8053)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((x-cnd8058
                        (letrec*
                         ((x8059 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8059 c)))))
                      (if x-cnd8058
                        (letrec*
                         ((x8060 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8060)))
                        #f))))
                   g8057)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8063))))
                    (g8062
                     (letrec*
                      ((x-cnd8064
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8064
                        #f
                        (letrec*
                         ((x-cnd8065
                           (letrec*
                            ((x8066
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8066 k)))))
                         (if x-cnd8065
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8067
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8067)))))))))
                   g8062)))
               (not (lambda (x) (letrec* ((g8068 (if x #f #t))) g8068)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8069
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8069)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8070
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8072))))
                    (g8071
                     (letrec*
                      ((x-cnd8073
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8073
                        #f
                        (letrec*
                         ((x-cnd8074
                           (letrec*
                            ((x8075
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8075 e)))))
                         (if x-cnd8074
                           l
                           (letrec*
                            ((x8076
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8076)))))))))
                   g8071)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8078
                        (letrec*
                         ((x8079
                           (letrec*
                            ((x8080
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8080)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8079)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8078)))))
                   g8077)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8083
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8083))))
                    (g8082
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8084
                             (letrec*
                              ((x-cnd8085
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8085
                                0
                                (letrec*
                                 ((x8086
                                   (letrec*
                                    ((x8087
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8087)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8086)))))))
                           g8084))))
                      (letrec*
                       ((g8088
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8088))))
                   g8082)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8092))))
                    (g8090
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8093))))
                    (g8091
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8094
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8094))))
                   g8091)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8096
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8096)))))
                   g8095)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8098
                        (letrec*
                         ((x8099
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8099)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8098)))))
                   g8097)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8102
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8102))))
                    (g8101
                     (letrec*
                      ((x-cnd8103
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8103
                        #f
                        (letrec*
                         ((x-cnd8104
                           (letrec*
                            ((x8105
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8105 k)))))
                         (if x-cnd8104
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8106
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8106)))))))))
                   g8101)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8108)))))
                   g8107)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8112))))
                    (g8110
                     (letrec*
                      ((x8113
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8113))))
                    (g8111
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8114)))))
                   g8111)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8116
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8116))))
                   g8115)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8120))))
                    (g8118
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8121))))
                    (g8119
                     (letrec*
                      ((x-cnd8122
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8122
                        #t
                        (letrec*
                         ((x-cnd8123
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8123
                           (letrec*
                            ((g8124
                              (letrec*
                               ((x8126
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8126))))
                             (g8125
                              (letrec*
                               ((x8127
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8127)))))
                            g8125)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8119)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8128
                     (letrec*
                      ((x8130
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8130))))
                    (g8129
                     (letrec*
                      ((x-cnd8131
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8131
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8129)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8135))))
                    (g8133
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8136))))
                    (g8134
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8137
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8137))))
                   g8134)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (letrec*
                            ((x8141
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8141)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8140)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8139)))))
                   g8138)))
               (newline (lambda () (letrec* ((g8142 #f)) g8142)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8145
                        (letrec*
                         ((x8146
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8146))))
                       (x8144
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8145 x8144)))))
                   g8143)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8149
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8149))))
                    (g8148
                     (letrec*
                      ((x8150
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8150)))))
                   g8148)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8155
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8155))))
                    (g8152
                     (letrec*
                      ((x8156
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8156))))
                    (g8153
                     (letrec*
                      ((x8157
                        (letrec*
                         ((x8158
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8158)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8157))))
                    (g8154
                     (letrec*
                      ((x-cnd8159
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8159
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8161
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8160
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8161 x8160)))))))
                   g8154)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x-cnd8163
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8163
                        a
                        (letrec*
                         ((x8164
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8164)))))))
                   g8162)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g8165
                     (letrec*
                      ((x-cnd8166
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8166
                        empty
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car l)))
                          (x8167
                           (letrec*
                            ((x8168
                              (letrec*
                               ((x8169
                                 (begin
                                   (write '(funapp 1483 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1483 64))
                                 (display "\n")
                                 (cdr x8169)))))
                            (begin
                              (write '(funapp 1484 29))
                              (display "\n")
                              (recursive-div2 x8168)))))
                         (begin
                           (write '(funapp 1485 26))
                           (display "\n")
                           (cons x8170 x8167)))))))
                   g8165)))
               (even-list/c
                (lambda (g7623 g7624 g7625)
                  (letrec*
                   ((g8171
                     (letrec*
                      ((x-cnd8172
                        (begin
                          (write '(funapp 1493 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g8173
                                (letrec*
                                 ((x8174
                                   (letrec*
                                    ((x8175
                                      (begin
                                        (write '(funapp 1499 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1500 35))
                                      (display "\n")
                                      (cons/c any/c x8175)))))
                                 (begin
                                   (write '(funapp 1501 32))
                                   (display "\n")
                                   (or/c null? x8174)))))
                              g8173))
                           g7625))))
                      (if x-cnd8172
                        g7625
                        (begin
                          (write '(blame g7623 1506 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7623)))))))
                   g8171))))
              (letrec*
               ((g8176
                 (begin
                   (write '(funapp 1515 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1516 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8178
                          (letrec*
                           ((xj7626
                             (begin
                               (write '(funapp 1520 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1520 37))
                                  (display "\n")
                                  'module))))
                            (xk7627
                             (begin
                               (write '(funapp 1520 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1520 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8179
                              (begin
                                (write '(funapp 1523 27))
                                (display "\n")
                                ((lambda (j7629 k7630 f7631)
                                   (letrec*
                                    ((g8180
                                      (lambda (g7628)
                                        (letrec*
                                         ((g8181
                                           (letrec*
                                            ((x8185
                                              (begin
                                                (write '(funapp 1530 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8182
                                              (letrec*
                                               ((x8183
                                                 (letrec*
                                                  ((x8184
                                                    (begin
                                                      (write '(funapp 1535 53))
                                                      (display "\n")
                                                      (even-list/c))))
                                                  (begin
                                                    (write '(funapp 1536 45))
                                                    (display "\n")
                                                    (x8184
                                                     j7629
                                                     k7630
                                                     g7628)))))
                                               (begin
                                                 (write '(funapp 1537 42))
                                                 (display "\n")
                                                 (f7631 x8183)))))
                                            (begin
                                              (write '(funapp 1538 39))
                                              (display "\n")
                                              (x8185 j7629 k7630 x8182)))))
                                         g8181))))
                                    g8180))
                                 xj7626
                                 xk7627
                                 recursive-div2))))
                            g8179)))
                         (x8177 (input)))
                        (begin
                          (write '(funapp 1546 21))
                          (display "\n")
                          (x8178 x8177)))))))))
               g8176))))
           g7645))))
       g7643)))
    g7642)))
