(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7640 #t)) g7640)))
    (meta (lambda (v) (letrec* ((g7641 v)) g7641)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7642
          (letrec*
           ((g7643
             (letrec*
              ((x-e7644 lst))
              (letrec*
               ((v1804 x-e7644))
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
                   ((x-cnd7645
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7645
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
           g7643)))
        g7642)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7646 (lambda (v) (letrec* ((g7647 v)) g7647)))) g7646)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7648
          (letrec*
           ((x7649 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7649)))))
        g7648))))
   (letrec*
    ((g7650
      (letrec*
       ((g7651
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
           ((g7652 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7653
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7654
                     (lambda (k j lst)
                       (letrec*
                        ((g7655
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7656
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7656))
                             lst))))
                        g7655))))
                   g7654)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7658
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7657)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7660
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7659)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7662
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7661)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7665 #t)) g7665)) g7544))))
                      (if x-cnd7664
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7663)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7668 #t)) g7668)) g7547))))
                      (if x-cnd7667
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7666)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7670
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7669)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7672
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7671)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7674
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7673)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7676
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7675)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7677
                     (lambda (k j v)
                       (letrec*
                        ((g7678
                          (letrec*
                           ((x-cnd7679
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7679
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7678))))
                   g7677)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7680
                     (lambda (k j v)
                       (letrec*
                        ((g7681
                          (letrec*
                           ((x-cnd7682
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7682
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7686
                                (letrec*
                                 ((x7687
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7687))))
                               (x7683
                                (letrec*
                                 ((x7685
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7684
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7685 k j x7684)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7686 x7683)))))))
                        g7681))))
                   g7680)))
               (any? (lambda (v) (letrec* ((g7688 #t)) g7688)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7690)))))
                   g7689)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7693
                                (letrec*
                                 ((x7694
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7694)))))
                              g7693))
                           g7562))))
                      (if x-cnd7692
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7691)))
               (meta (lambda (v) (letrec* ((g7695 v)) g7695)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7696
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7698
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7699
                                 (letrec*
                                  ((x7700
                                    (letrec*
                                     ((x7702
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7701
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7702 x7701)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7700)))))
                               g7699))))
                          g7698))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7697
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7697))))))
                  g7696)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7703
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7705
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7706
                                 (letrec*
                                  ((x7707
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7708
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7709 x7708)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7707)))))
                               g7706))))
                          g7705))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7704
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7704))))))
                  g7703)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7710
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7712
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7713
                                 (letrec*
                                  ((x7714
                                    (letrec*
                                     ((x7716
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7715
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7716 x7715)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7714)))))
                               g7713))))
                          g7712))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7711
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7711))))))
                  g7710)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7717
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7719
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7720
                                 (letrec*
                                  ((x7721
                                    (letrec*
                                     ((x7723
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7722
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7723 x7722)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7721)))))
                               g7720))))
                          g7719))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7718
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7718))))))
                  g7717)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7724
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7726
                            (lambda (g7593)
                              (letrec*
                               ((g7727
                                 (letrec*
                                  ((x7728
                                    (letrec*
                                     ((x7729
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7729)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7728)))))
                               g7727))))
                          g7726))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7725
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7725))))))
                  g7724)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7730
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7732
                            (lambda (g7599)
                              (letrec*
                               ((g7733
                                 (letrec*
                                  ((x7734
                                    (letrec*
                                     ((x7735
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7735)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7734)))))
                               g7733))))
                          g7732))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7731
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7731))))))
                  g7730)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7736
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7738
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7739
                                 (letrec*
                                  ((x7740
                                    (letrec*
                                     ((x7742
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7741
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7742 x7741)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7740)))))
                               g7739))))
                          g7738))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7737
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7737))))))
                  g7736)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7743
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7745
                            (lambda (g7612)
                              (letrec*
                               ((g7746
                                 (letrec*
                                  ((x7747
                                    (letrec*
                                     ((x7748
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7748)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7747)))))
                               g7746))))
                          g7745))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7744
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7744))))))
                  g7743)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7749
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7751
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7752
                                 (letrec*
                                  ((x7753
                                    (letrec*
                                     ((x7755
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7754
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7755 x7754)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7753)))))
                               g7752))))
                          g7751))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7750
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7750))))))
                  g7749)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7756
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7756)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7759)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7758)))))
                   g7757)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7769))))
                          (x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7767)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7768 x7766)))))))
                   g7762)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (cadadr
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7779)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7777)))))
                   g7776)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7784))))
                    (g7782
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
                       ((g7785
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7786 res))
                       g7786))))
                   g7782)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7789)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7793)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7791)))))
                   g7790)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        #f
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7799 k)))))
                         (if x-cnd7798
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7800)))))))))
                   g7795)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7802)))))
                   g7801)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7806
                        ""
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7810))))
                          (x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7808)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7809 x7807)))))))
                   g7804)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7816
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7816))))
                   g7813)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7818
                        (letrec*
                         ((x7819
                           (letrec*
                            ((x7820
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7820)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7819)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7818)))))
                   g7817)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7826
                        x
                        (letrec*
                         ((x7828
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7827
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7828 x7827)))))))
                   g7823)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7829
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7829)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x-cnd7831
                        (letrec*
                         ((x7832 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7832)))))
                      (if x-cnd7831
                        (letrec*
                         ((x7833 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7833)))
                        #f))))
                   g7830)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7836))))
                    (g7835
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7837
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7838 (if val7517 val7517 #f)))
                             g7838)))))
                       g7837))))
                   g7835)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7840
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7840 9)))))
                      (letrec*
                       ((g7841
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7842
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7842 10)))))
                            (letrec*
                             ((g7843
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7844
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7844 32))))))
                             g7843)))))
                       g7841))))
                   g7839)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7846
                        (letrec*
                         ((x7847
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7847)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7846)))))
                   g7845)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7849)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7851 #f)) g7851)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7853)))))
                   g7852)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7857
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7855)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7859
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7860
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7860
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7861
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7862
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7862
                                       (letrec*
                                        ((x-cnd7863
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7863
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7864
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7865
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7865
                                             (letrec*
                                              ((x-cnd7866
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7866
                                                (letrec*
                                                 ((x-cnd7867
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7868
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7869 x7868)))))
                                                 (if x-cnd7867
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7870
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7871 x7870)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7872
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7873
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7873
                                                (letrec*
                                                 ((x-cnd7874
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7874
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7875
                                                       (letrec*
                                                        ((x-cnd7876
                                                          (letrec*
                                                           ((x7877
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
                                                             (= x7877 n)))))
                                                        (if x-cnd7876
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7878
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
                                                                    ((g7879
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7880
                                                                           (letrec*
                                                                            ((x7882
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
                                                                             (x7881
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
                                                                               x7882
                                                                               x7881)))))
                                                                         (if x-cnd7880
                                                                           (letrec*
                                                                            ((x7883
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
                                                                               x7883)))
                                                                           #f)))))
                                                                    g7879))))
                                                                g7878))))
                                                           (letrec*
                                                            ((g7884
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7884))
                                                          #f))))
                                                     g7875))
                                                   #f))
                                                #f)))))
                                         g7872)))))
                                   g7864)))))
                             g7861)))))
                       g7859))))
                   g7858)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7888)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7887)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7892)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7891)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7893
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7893)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7896))))
                    (g7895
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7897
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7898 (if val7526 val7526 #f)))
                             g7898)))))
                       g7897))))
                   g7895)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7903))))
                    (g7901
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
                       ((g7904
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7905 res))
                       g7905))))
                   g7901)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7906
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7906)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7912
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7912))))
                   g7909)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7914)))))
                   g7913)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7919)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7918)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7917)))))
                   g7916)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7922)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7921)))))
                   g7920)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (letrec*
                         ((x7925
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7925)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7924)))))
                   g7923)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7931)))))
                   g7928)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7935)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7934)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7937)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7939
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7939)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7943
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7943)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7950
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7951))))
                          (x7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7949)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7950 x7948)))))))
                   g7945)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7955)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7954)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7953)))))
                   g7952)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7959)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7958)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7957)))))
                   g7956)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7963)))))
                   g7961)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7967)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7966)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7973
                        (letrec*
                         ((g7974
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7974)
                        (letrec*
                         ((x-cnd7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7976)))))
                         (if x-cnd7975
                           (letrec*
                            ((g7977
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7978)))))
                            g7977)
                           (letrec*
                            ((x-cnd7979
                              (letrec*
                               ((x7980
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7980)))))
                            (if x-cnd7979
                              (letrec*
                               ((g7981
                                 (letrec*
                                  ((x7983
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7982
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7983 x7982)))))
                               g7981)
                              (letrec*
                               ((x-cnd7984
                                 (letrec*
                                  ((x7985
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7985)))))
                               (if x-cnd7984
                                 (letrec*
                                  ((g7986
                                    (letrec*
                                     ((x7989
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7988
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7987
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7989 x7988 x7987)))))
                                  g7986)
                                 (letrec*
                                  ((x-cnd7990
                                    (letrec*
                                     ((x7991
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7991)))))
                                  (if x-cnd7990
                                    (letrec*
                                     ((g7992
                                       (letrec*
                                        ((x7996
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7995
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7994
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7993
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7996 x7995 x7994 x7993)))))
                                     g7992)
                                    (letrec*
                                     ((x-cnd7997
                                       (letrec*
                                        ((x7998
                                          (letrec*
                                           ((x7999
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7999)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7998)))))
                                     (if x-cnd7997
                                       (letrec*
                                        ((g8000
                                          (letrec*
                                           ((x8006
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8005
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8004
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8003
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8001
                                             (letrec*
                                              ((x8002
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8002)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8006
                                              x8005
                                              x8004
                                              x8003
                                              x8001)))))
                                        g8000)
                                       (letrec*
                                        ((x-cnd8007
                                          (letrec*
                                           ((x8008
                                             (letrec*
                                              ((x8009
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8009)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8008)))))
                                        (if x-cnd8007
                                          (letrec*
                                           ((g8010
                                             (letrec*
                                              ((x8018
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8017
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8016
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8015
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8013
                                                (letrec*
                                                 ((x8014
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8014))))
                                               (x8011
                                                (letrec*
                                                 ((x8012
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8012)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8018
                                                 x8017
                                                 x8016
                                                 x8015
                                                 x8013
                                                 x8011)))))
                                           g8010)
                                          (letrec*
                                           ((x-cnd8019
                                             (letrec*
                                              ((x8020
                                                (letrec*
                                                 ((x8021
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8021)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8020)))))
                                           (if x-cnd8019
                                             (letrec*
                                              ((g8022
                                                (letrec*
                                                 ((x8032
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8031
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8030
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8029
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8027
                                                   (letrec*
                                                    ((x8028
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8028))))
                                                  (x8025
                                                   (letrec*
                                                    ((x8026
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8026))))
                                                  (x8023
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8024)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8032
                                                    x8031
                                                    x8030
                                                    x8029
                                                    x8027
                                                    x8025
                                                    x8023)))))
                                              g8022)
                                             (letrec*
                                              ((g8033
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8033)))))))))))))))))))
                   g7970)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x8036
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8036))))
                    (g8035
                     (letrec*
                      ((x-cnd8037
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8037
                        #f
                        (letrec*
                         ((x-cnd8038
                           (letrec*
                            ((x8039
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8039 e)))))
                         (if x-cnd8038
                           l
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8040)))))))))
                   g8035)))
               (cddddr
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8044)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8043)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8042)))))
                   g8041)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8048)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8047)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8046)))))
                   g8045)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8049
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8049)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8052))))
                    (g8051
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8051)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8054
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8054))))
                   g8053)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8056)))))
                   g8055)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8058
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8058
                           (letrec*
                            ((x8059
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8059)))
                           #f))))
                      (letrec*
                       ((g8060
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8060))))
                   g8057)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((x8062
                        (letrec*
                         ((x8063
                           (letrec*
                            ((x8064
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8064)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8063)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8062)))))
                   g8061)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x-cnd8066
                        (letrec*
                         ((x8067 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8067 c)))))
                      (if x-cnd8066
                        (letrec*
                         ((x8068 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8068)))
                        #f))))
                   g8065)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x8071
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8071))))
                    (g8070
                     (letrec*
                      ((x-cnd8072
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8072
                        #f
                        (letrec*
                         ((x-cnd8073
                           (letrec*
                            ((x8074
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8074 k)))))
                         (if x-cnd8073
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8075
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8075)))))))))
                   g8070)))
               (not (lambda (x) (letrec* ((g8076 (if x #f #t))) g8076)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8077
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8077)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8080))))
                    (g8079
                     (letrec*
                      ((x-cnd8081
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8081
                        #f
                        (letrec*
                         ((x-cnd8082
                           (letrec*
                            ((x8083
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8083 e)))))
                         (if x-cnd8082
                           l
                           (letrec*
                            ((x8084
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8084)))))))))
                   g8079)))
               (cadaar
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
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8088)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8087)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8086)))))
                   g8085)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8091))))
                    (g8090
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8092
                             (letrec*
                              ((x-cnd8093
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8093
                                0
                                (letrec*
                                 ((x8094
                                   (letrec*
                                    ((x8095
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8095)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8094)))))))
                           g8092))))
                      (letrec*
                       ((g8096
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8096))))
                   g8090)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8100))))
                    (g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8102
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8102))))
                   g8099)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8104)))))
                   g8103)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8106
                        (letrec*
                         ((x8107
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8107)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8106)))))
                   g8105)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8110))))
                    (g8109
                     (letrec*
                      ((x-cnd8111
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8111
                        #f
                        (letrec*
                         ((x-cnd8112
                           (letrec*
                            ((x8113
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8113 k)))))
                         (if x-cnd8112
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8114
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8114)))))))))
                   g8109)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8116)))))
                   g8115)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8120))))
                    (g8118
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8121))))
                    (g8119
                     (letrec*
                      ((x8122
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8122)))))
                   g8119)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8124
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8124))))
                   g8123)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8128))))
                    (g8126
                     (letrec*
                      ((x8129
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8129))))
                    (g8127
                     (letrec*
                      ((x-cnd8130
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8130
                        #t
                        (letrec*
                         ((x-cnd8131
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8131
                           (letrec*
                            ((g8132
                              (letrec*
                               ((x8134
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8134))))
                             (g8133
                              (letrec*
                               ((x8135
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8135)))))
                            g8133)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8127)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8138))))
                    (g8137
                     (letrec*
                      ((x-cnd8139
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8139
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8137)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8143
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8143))))
                    (g8141
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8144))))
                    (g8142
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8145
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8145))))
                   g8142)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (letrec*
                            ((x8149
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8149)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8148)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8147)))))
                   g8146)))
               (newline (lambda () (letrec* ((g8150 #f)) g8150)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8153
                        (letrec*
                         ((x8154
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8154))))
                       (x8152
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8153 x8152)))))
                   g8151)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8157
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8157))))
                    (g8156
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8158)))))
                   g8156)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8163
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8163))))
                    (g8160
                     (letrec*
                      ((x8164
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8164))))
                    (g8161
                     (letrec*
                      ((x8165
                        (letrec*
                         ((x8166
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8166)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8165))))
                    (g8162
                     (letrec*
                      ((x-cnd8167
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8167
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8169
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8168
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8169 x8168)))))))
                   g8162)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x-cnd8171
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8171
                        a
                        (letrec*
                         ((x8172
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8172)))))))
                   g8170)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g8173
                     (letrec*
                      ((x-cnd8174
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd8174
                        (begin (write '(funapp 1478 25)) (display "\n") (g x))
                        (letrec*
                         ((x8176
                           (letrec*
                            ((x8178
                              (begin
                                (write '(funapp 1482 37))
                                (display "\n")
                                (x)))
                             (x8177
                              (begin
                                (write '(funapp 1482 49))
                                (display "\n")
                                (f g x))))
                            (begin
                              (write '(funapp 1483 29))
                              (display "\n")
                              (λ x8178 x8177))))
                          (x8175
                           (begin
                             (write '(funapp 1484 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1485 26))
                           (display "\n")
                           (f x8176 x8175)))))))
                   g8173)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8179
                     (begin
                       (write '(funapp 1487 51))
                       (display "\n")
                       (f add1 n))))
                   g8179))))
              (letrec*
               ((g8180
                 (begin
                   (write '(funapp 1490 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1491 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8183
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1495 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1495 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1495 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1495 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8184
                              (begin
                                (write '(funapp 1498 27))
                                (display "\n")
                                ((lambda (j7627 k7628 f7629)
                                   (letrec*
                                    ((g8185
                                      (lambda (g7625 g7626)
                                        (letrec*
                                         ((g8186
                                           (letrec*
                                            ((x8187
                                              (letrec*
                                               ((x8189
                                                 (begin
                                                   (write '(funapp 1508 44))
                                                   (display "\n")
                                                   ((lambda (j7631 k7632 f7633)
                                                      (letrec*
                                                       ((g8190
                                                         (lambda (g7630)
                                                           (letrec*
                                                            ((g8191
                                                              (letrec*
                                                               ((x8192
                                                                 (letrec*
                                                                  ((x8193
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1518
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?
                                                                       j7631
                                                                       k7632
                                                                       g7630))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1522
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7633
                                                                     x8193)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1523
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?
                                                                  j7631
                                                                  k7632
                                                                  x8192)))))
                                                            g8191))))
                                                       g8190))
                                                    j7627
                                                    k7628
                                                    g7625)))
                                                (x8188
                                                 (begin
                                                   (write '(funapp 1532 50))
                                                   (display "\n")
                                                   (integer?
                                                    j7627
                                                    k7628
                                                    g7626))))
                                               (begin
                                                 (write '(funapp 1533 42))
                                                 (display "\n")
                                                 (f7629 x8189 x8188)))))
                                            (begin
                                              (write '(funapp 1534 39))
                                              (display "\n")
                                              (integer? j7627 k7628 x8187)))))
                                         g8186))))
                                    g8185))
                                 xj7623
                                 xk7624
                                 f))))
                            g8184)))
                         (x8182 (input))
                         (x8181 (input)))
                        (begin
                          (write '(funapp 1543 21))
                          (display "\n")
                          (x8183 x8182 x8181)))
                       (letrec*
                        ((x8195
                          (letrec*
                           ((xj7634
                             (begin
                               (write '(funapp 1547 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1547 37))
                                  (display "\n")
                                  'module))))
                            (xk7635
                             (begin
                               (write '(funapp 1547 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1547 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8196
                              (begin
                                (write '(funapp 1550 27))
                                (display "\n")
                                ((lambda (j7637 k7638 f7639)
                                   (letrec*
                                    ((g8197
                                      (lambda (g7636)
                                        (letrec*
                                         ((g8198
                                           (letrec*
                                            ((x8201
                                              (letrec*
                                               ((x8202
                                                 (begin
                                                   (write '(funapp 1559 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1560 42))
                                                 (display "\n")
                                                 (and/c integer? x8202))))
                                             (x8199
                                              (letrec*
                                               ((x8200
                                                 (begin
                                                   (write '(funapp 1563 50))
                                                   (display "\n")
                                                   (integer?
                                                    j7637
                                                    k7638
                                                    g7636))))
                                               (begin
                                                 (write '(funapp 1564 42))
                                                 (display "\n")
                                                 (f7639 x8200)))))
                                            (begin
                                              (write '(funapp 1565 39))
                                              (display "\n")
                                              (x8201 j7637 k7638 x8199)))))
                                         g8198))))
                                    g8197))
                                 xj7634
                                 xk7635
                                 main))))
                            g8196)))
                         (x8194 (input)))
                        (begin
                          (write '(funapp 1573 21))
                          (display "\n")
                          (x8195 x8194)))))))))
               g8180))))
           g7653))))
       g7651)))
    g7650)))
