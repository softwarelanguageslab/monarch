(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7623 #t)) g7623)))
    (meta (lambda (v) (letrec* ((g7624 v)) g7624)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7625
          (letrec*
           ((g7626
             (letrec*
              ((x-e7627 lst))
              (letrec*
               ((v1804 x-e7627))
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
                   ((x-cnd7628
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7628
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
           g7626)))
        g7625)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7629 (lambda (v) (letrec* ((g7630 v)) g7630)))) g7629)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7631
          (letrec*
           ((x7632 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7632)))))
        g7631))))
   (letrec*
    ((g7633
      (letrec*
       ((g7634
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
           ((g7635 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7636
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7637
                     (lambda (k j lst)
                       (letrec*
                        ((g7638
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7639
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7639))
                             lst))))
                        g7638))))
                   g7637)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7641
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7640)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7643
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7642)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x-cnd7645
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7645
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7644)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7648 #t)) g7648)) g7544))))
                      (if x-cnd7647
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7646)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7651 #t)) g7651)) g7547))))
                      (if x-cnd7650
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7649)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7653
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7652)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7655
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7654)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7657
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7656)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7659
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7658)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7660
                     (lambda (k j v)
                       (letrec*
                        ((g7661
                          (letrec*
                           ((x-cnd7662
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7662
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7661))))
                   g7660)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7663
                     (lambda (k j v)
                       (letrec*
                        ((g7664
                          (letrec*
                           ((x-cnd7665
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7665
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7669
                                (letrec*
                                 ((x7670
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7670))))
                               (x7666
                                (letrec*
                                 ((x7668
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7667
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7668 k j x7667)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7669 x7666)))))))
                        g7664))))
                   g7663)))
               (any? (lambda (v) (letrec* ((g7671 #t)) g7671)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7673)))))
                   g7672)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x-cnd7675
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7676
                                (letrec*
                                 ((x7677
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7677)))))
                              g7676))
                           g7562))))
                      (if x-cnd7675
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7674)))
               (meta (lambda (v) (letrec* ((g7678 v)) g7678)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7679
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7681
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7682
                                 (letrec*
                                  ((x7683
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7684
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7685 x7684)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7683)))))
                               g7682))))
                          g7681))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7680
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7680))))))
                  g7679)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7686
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7688
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7689
                                 (letrec*
                                  ((x7690
                                    (letrec*
                                     ((x7692
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7691
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7692 x7691)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7690)))))
                               g7689))))
                          g7688))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7687
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7687))))))
                  g7686)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7693
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7695
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7696
                                 (letrec*
                                  ((x7697
                                    (letrec*
                                     ((x7699
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7698
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7699 x7698)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7697)))))
                               g7696))))
                          g7695))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7694
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7694))))))
                  g7693)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7700
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7702
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7703
                                 (letrec*
                                  ((x7704
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7705
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7706 x7705)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7704)))))
                               g7703))))
                          g7702))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7701
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7701))))))
                  g7700)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7707
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7709
                            (lambda (g7593)
                              (letrec*
                               ((g7710
                                 (letrec*
                                  ((x7711
                                    (letrec*
                                     ((x7712
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7712)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7711)))))
                               g7710))))
                          g7709))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7708
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7708))))))
                  g7707)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7713
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7715
                            (lambda (g7599)
                              (letrec*
                               ((g7716
                                 (letrec*
                                  ((x7717
                                    (letrec*
                                     ((x7718
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7718)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7717)))))
                               g7716))))
                          g7715))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7714
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7714))))))
                  g7713)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7719
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7721
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7722
                                 (letrec*
                                  ((x7723
                                    (letrec*
                                     ((x7725
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7724
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7725 x7724)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7723)))))
                               g7722))))
                          g7721))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7720
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7720))))))
                  g7719)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7726
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7728
                            (lambda (g7612)
                              (letrec*
                               ((g7729
                                 (letrec*
                                  ((x7730
                                    (letrec*
                                     ((x7731
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7731)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7730)))))
                               g7729))))
                          g7728))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7727
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7727))))))
                  g7726)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7732
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7734
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7735
                                 (letrec*
                                  ((x7736
                                    (letrec*
                                     ((x7738
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7737
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7738 x7737)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7736)))))
                               g7735))))
                          g7734))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7733
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7733))))))
                  g7732)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7739
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7739)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7742)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x-cnd7748
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7748
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7752))))
                          (x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7750)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7751 x7749)))))))
                   g7745)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7767))))
                    (g7765
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
                       ((g7768
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7769 res))
                       g7769))))
                   g7765)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7774)))))
                   g7773)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x-cnd7780
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7780
                        #f
                        (letrec*
                         ((x-cnd7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7782 k)))))
                         (if x-cnd7781
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7783)))))))))
                   g7778)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7785)))))
                   g7784)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        ""
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7793))))
                          (x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7791)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7792 x7790)))))))
                   g7787)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7799
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7799))))
                   g7796)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7803)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7802)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7809
                        x
                        (letrec*
                         ((x7811
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7810
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7811 x7810)))))))
                   g7806)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7812
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7812)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x-cnd7814
                        (letrec*
                         ((x7815 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7815)))))
                      (if x-cnd7814
                        (letrec*
                         ((x7816 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7816)))
                        #f))))
                   g7813)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7819))))
                    (g7818
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7820
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7821 (if val7517 val7517 #f)))
                             g7821)))))
                       g7820))))
                   g7818)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7823
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7823 9)))))
                      (letrec*
                       ((g7824
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7825 10)))))
                            (letrec*
                             ((g7826
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7827
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7827 32))))))
                             g7826)))))
                       g7824))))
                   g7822)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7829
                        (letrec*
                         ((x7830
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7830)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7829)))))
                   g7828)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7833))))
                    (g7832
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7832)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7834 #f)) g7834)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7836)))))
                   g7835)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7839))))
                    (g7838
                     (letrec*
                      ((x-cnd7840
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7840
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7838)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7842
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7843
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7843
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7844
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7845
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7845
                                       (letrec*
                                        ((x-cnd7846
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7846
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7847
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7848
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7848
                                             (letrec*
                                              ((x-cnd7849
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7849
                                                (letrec*
                                                 ((x-cnd7850
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7851
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7852 x7851)))))
                                                 (if x-cnd7850
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7853
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7854 x7853)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7855
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7856
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7856
                                                (letrec*
                                                 ((x-cnd7857
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7857
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7858
                                                       (letrec*
                                                        ((x-cnd7859
                                                          (letrec*
                                                           ((x7860
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
                                                             (= x7860 n)))))
                                                        (if x-cnd7859
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7861
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
                                                                    ((g7862
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7863
                                                                           (letrec*
                                                                            ((x7865
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
                                                                             (x7864
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
                                                                               x7865
                                                                               x7864)))))
                                                                         (if x-cnd7863
                                                                           (letrec*
                                                                            ((x7866
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
                                                                               x7866)))
                                                                           #f)))))
                                                                    g7862))))
                                                                g7861))))
                                                           (letrec*
                                                            ((g7867
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7867))
                                                          #f))))
                                                     g7858))
                                                   #f))
                                                #f)))))
                                         g7855)))))
                                   g7847)))))
                             g7844)))))
                       g7842))))
                   g7841)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7871)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7870)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7869)))))
                   g7868)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7875)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7874)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7876
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7876)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7880
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7881 (if val7526 val7526 #f)))
                             g7881)))))
                       g7880))))
                   g7878)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7885))))
                    (g7883
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7886))))
                    (g7884
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
                       ((g7887
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7888 res))
                       g7888))))
                   g7884)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7889)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7893))))
                    (g7891
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7894))))
                    (g7892
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7895
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7895))))
                   g7892)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7898)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7897)))))
                   g7896)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7902)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7901)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7900)))))
                   g7899)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7904
                        (letrec*
                         ((x7905
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7905)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7904)))))
                   g7903)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7908)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7907)))))
                   g7906)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7912))))
                    (g7910
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7913))))
                    (g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7914)))))
                   g7911)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7918)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7917)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7920)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7922
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7922)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (letrec*
                         ((x7925
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7925)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7924)))))
                   g7923)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7926
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7926)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7929))))
                    (g7928
                     (letrec*
                      ((x-cnd7930
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7930
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7934))))
                          (x7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7932)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7933 x7931)))))))
                   g7928)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7938)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7937)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (letrec*
                         ((x7941
                           (letrec*
                            ((x7942
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7942)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7941)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7940)))))
                   g7939)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7946)))))
                   g7944)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7948
                        (letrec*
                         ((x7949
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7950)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7949)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7948)))))
                   g7947)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7956
                        (letrec*
                         ((g7957
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7957)
                        (letrec*
                         ((x-cnd7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7959)))))
                         (if x-cnd7958
                           (letrec*
                            ((g7960
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7961)))))
                            g7960)
                           (letrec*
                            ((x-cnd7962
                              (letrec*
                               ((x7963
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7963)))))
                            (if x-cnd7962
                              (letrec*
                               ((g7964
                                 (letrec*
                                  ((x7966
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7965
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7966 x7965)))))
                               g7964)
                              (letrec*
                               ((x-cnd7967
                                 (letrec*
                                  ((x7968
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7968)))))
                               (if x-cnd7967
                                 (letrec*
                                  ((g7969
                                    (letrec*
                                     ((x7972
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7971
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7970
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7972 x7971 x7970)))))
                                  g7969)
                                 (letrec*
                                  ((x-cnd7973
                                    (letrec*
                                     ((x7974
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7974)))))
                                  (if x-cnd7973
                                    (letrec*
                                     ((g7975
                                       (letrec*
                                        ((x7979
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7978
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7977
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7976
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7979 x7978 x7977 x7976)))))
                                     g7975)
                                    (letrec*
                                     ((x-cnd7980
                                       (letrec*
                                        ((x7981
                                          (letrec*
                                           ((x7982
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7982)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7981)))))
                                     (if x-cnd7980
                                       (letrec*
                                        ((g7983
                                          (letrec*
                                           ((x7989
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7988
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7987
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7986
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7984
                                             (letrec*
                                              ((x7985
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7985)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7989
                                              x7988
                                              x7987
                                              x7986
                                              x7984)))))
                                        g7983)
                                       (letrec*
                                        ((x-cnd7990
                                          (letrec*
                                           ((x7991
                                             (letrec*
                                              ((x7992
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7992)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7991)))))
                                        (if x-cnd7990
                                          (letrec*
                                           ((g7993
                                             (letrec*
                                              ((x8001
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8000
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7999
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7998
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7996
                                                (letrec*
                                                 ((x7997
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7997))))
                                               (x7994
                                                (letrec*
                                                 ((x7995
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7995)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8001
                                                 x8000
                                                 x7999
                                                 x7998
                                                 x7996
                                                 x7994)))))
                                           g7993)
                                          (letrec*
                                           ((x-cnd8002
                                             (letrec*
                                              ((x8003
                                                (letrec*
                                                 ((x8004
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8004)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8003)))))
                                           (if x-cnd8002
                                             (letrec*
                                              ((g8005
                                                (letrec*
                                                 ((x8015
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8014
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8013
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8012
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8010
                                                   (letrec*
                                                    ((x8011
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8011))))
                                                  (x8008
                                                   (letrec*
                                                    ((x8009
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8009))))
                                                  (x8006
                                                   (letrec*
                                                    ((x8007
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8007)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8015
                                                    x8014
                                                    x8013
                                                    x8012
                                                    x8010
                                                    x8008
                                                    x8006)))))
                                              g8005)
                                             (letrec*
                                              ((g8016
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8016)))))))))))))))))))
                   g7953)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8019
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8019))))
                    (g8018
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8020
                        #f
                        (letrec*
                         ((x-cnd8021
                           (letrec*
                            ((x8022
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8022 e)))))
                         (if x-cnd8021
                           l
                           (letrec*
                            ((x8023
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8023)))))))))
                   g8018)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x8025
                        (letrec*
                         ((x8026
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8027)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8026)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8025)))))
                   g8024)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8029
                        (letrec*
                         ((x8030
                           (letrec*
                            ((x8031
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8031)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8030)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8029)))))
                   g8028)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8032
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8032)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8035
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8035))))
                    (g8034
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8034)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8037
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8037))))
                   g8036)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8039
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8039)))))
                   g8038)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8041
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8041
                           (letrec*
                            ((x8042
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8042)))
                           #f))))
                      (letrec*
                       ((g8043
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8043))))
                   g8040)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8045
                        (letrec*
                         ((x8046
                           (letrec*
                            ((x8047
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8047)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8046)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8045)))))
                   g8044)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((x-cnd8049
                        (letrec*
                         ((x8050 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8050 c)))))
                      (if x-cnd8049
                        (letrec*
                         ((x8051 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8051)))
                        #f))))
                   g8048)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8052
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8054))))
                    (g8053
                     (letrec*
                      ((x-cnd8055
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8055
                        #f
                        (letrec*
                         ((x-cnd8056
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8057 k)))))
                         (if x-cnd8056
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8058
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8058)))))))))
                   g8053)))
               (not (lambda (x) (letrec* ((g8059 (if x #f #t))) g8059)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8060
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8060)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8063))))
                    (g8062
                     (letrec*
                      ((x-cnd8064
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8064
                        #f
                        (letrec*
                         ((x-cnd8065
                           (letrec*
                            ((x8066
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8066 e)))))
                         (if x-cnd8065
                           l
                           (letrec*
                            ((x8067
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8067)))))))))
                   g8062)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8068
                     (letrec*
                      ((x8069
                        (letrec*
                         ((x8070
                           (letrec*
                            ((x8071
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8071)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8070)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8069)))))
                   g8068)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8072
                     (letrec*
                      ((x8074
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8074))))
                    (g8073
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8075
                             (letrec*
                              ((x-cnd8076
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8076
                                0
                                (letrec*
                                 ((x8077
                                   (letrec*
                                    ((x8078
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8078)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8077)))))))
                           g8075))))
                      (letrec*
                       ((g8079
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8079))))
                   g8073)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8080
                     (letrec*
                      ((x8083
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8083))))
                    (g8081
                     (letrec*
                      ((x8084
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8084))))
                    (g8082
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8085
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8085))))
                   g8082)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8087
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8087)))))
                   g8086)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8088
                     (letrec*
                      ((x8089
                        (letrec*
                         ((x8090
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8090)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8089)))))
                   g8088)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8093))))
                    (g8092
                     (letrec*
                      ((x-cnd8094
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8094
                        #f
                        (letrec*
                         ((x-cnd8095
                           (letrec*
                            ((x8096
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8096 k)))))
                         (if x-cnd8095
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8097
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8097)))))))))
                   g8092)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8099)))))
                   g8098)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8103
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8103))))
                    (g8101
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8104))))
                    (g8102
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8105)))))
                   g8102)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8107
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8107))))
                   g8106)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8111))))
                    (g8109
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8112))))
                    (g8110
                     (letrec*
                      ((x-cnd8113
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8113
                        #t
                        (letrec*
                         ((x-cnd8114
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8114
                           (letrec*
                            ((g8115
                              (letrec*
                               ((x8117
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8117))))
                             (g8116
                              (letrec*
                               ((x8118
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8118)))))
                            g8116)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8110)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8121))))
                    (g8120
                     (letrec*
                      ((x-cnd8122
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8122
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8120)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8126))))
                    (g8124
                     (letrec*
                      ((x8127
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8127))))
                    (g8125
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8128
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8128))))
                   g8125)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8130
                        (letrec*
                         ((x8131
                           (letrec*
                            ((x8132
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8132)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8131)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8130)))))
                   g8129)))
               (newline (lambda () (letrec* ((g8133 #f)) g8133)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8136
                        (letrec*
                         ((x8137
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8137))))
                       (x8135
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8136 x8135)))))
                   g8134)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8140))))
                    (g8139
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8141)))))
                   g8139)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8146
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8146))))
                    (g8143
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8147))))
                    (g8144
                     (letrec*
                      ((x8148
                        (letrec*
                         ((x8149
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8149)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8148))))
                    (g8145
                     (letrec*
                      ((x-cnd8150
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8150
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8152
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8151
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8152 x8151)))))))
                   g8145)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x-cnd8154
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8154
                        a
                        (letrec*
                         ((x8155
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8155)))))))
                   g8153)))
               (id
                (letrec*
                 ((x8156 (begin (write '(funapp 1471 37)) (display "\n") (x))))
                 (begin (write '(funapp 1471 43)) (display "\n") (λ x8156 x))))
               (blur
                (letrec*
                 ((x8157 (begin (write '(funapp 1472 39)) (display "\n") (y))))
                 (begin (write '(funapp 1472 45)) (display "\n") (λ x8157 y))))
               (lp
                (letrec*
                 ((x8169 (begin (write '(funapp 1475 26)) (display "\n") (a)))
                  (x8158
                   (letrec*
                    ((x8168
                      (begin (write '(funapp 1478 29)) (display "\n") (n)))
                     (x8159
                      (letrec*
                       ((x-cnd8160
                         (begin
                           (write '(funapp 1481 36))
                           (display "\n")
                           (zero? n))))
                       (if x-cnd8160
                         (begin
                           (write '(funapp 1483 26))
                           (display "\n")
                           (id a))
                         (letrec*
                          ((r
                            (letrec*
                             ((x8161
                               (begin
                                 (write '(funapp 1485 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1485 60))
                               (display "\n")
                               (x8161 #t))))
                           (s
                            (letrec*
                             ((x8162
                               (begin
                                 (write '(funapp 1486 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1486 60))
                               (display "\n")
                               (x8162 #f)))))
                          (letrec*
                           ((g8163
                             (letrec*
                              ((x8164
                                (letrec*
                                 ((x8166
                                   (letrec*
                                    ((x8167
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (blur lp))))
                                    (begin
                                      (write '(funapp 1493 65))
                                      (display "\n")
                                      (x8167 s))))
                                  (x8165
                                   (begin
                                     (write '(funapp 1494 42))
                                     (display "\n")
                                     (sub1 n))))
                                 (begin
                                   (write '(funapp 1495 34))
                                   (display "\n")
                                   (x8166 x8165)))))
                              (begin
                                (write '(funapp 1496 31))
                                (display "\n")
                                (not x8164)))))
                           g8163))))))
                    (begin
                      (write '(funapp 1498 21))
                      (display "\n")
                      (λ x8168 x8159)))))
                 (begin
                   (write '(funapp 1499 18))
                   (display "\n")
                   (λ x8169 x8158)))))
              (letrec*
               ((g8170
                 (letrec*
                  ((x8171
                    (begin (write '(funapp 1501 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1501 51)) (display "\n") (x8171 2)))))
               g8170))))
           g7636))))
       g7634)))
    g7633)))
