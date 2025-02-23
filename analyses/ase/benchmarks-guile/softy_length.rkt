(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7629 #t)) g7629)))
    (meta (lambda (v) (letrec* ((g7630 v)) g7630)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7631
          (letrec*
           ((g7632
             (letrec*
              ((x-e7633 lst))
              (letrec*
               ((v1804 x-e7633))
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
                   ((x-cnd7634
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7634
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
           g7632)))
        g7631)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7635 (lambda (v) (letrec* ((g7636 v)) g7636)))) g7635)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7637
          (letrec*
           ((x7638 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7638)))))
        g7637))))
   (letrec*
    ((g7639
      (letrec*
       ((g7640
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
           ((g7641 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7642
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7643
                     (lambda (k j lst)
                       (letrec*
                        ((g7644
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7645
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7645))
                             lst))))
                        g7644))))
                   g7643)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7647
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7646)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7649
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7648)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7651
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7650)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7654 #t)) g7654)) g7544))))
                      (if x-cnd7653
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7652)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7657 #t)) g7657)) g7547))))
                      (if x-cnd7656
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7655)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7659
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7658)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7661
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7660)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7663
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7662)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7665
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7664)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7666
                     (lambda (k j v)
                       (letrec*
                        ((g7667
                          (letrec*
                           ((x-cnd7668
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7668
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7667))))
                   g7666)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7669
                     (lambda (k j v)
                       (letrec*
                        ((g7670
                          (letrec*
                           ((x-cnd7671
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7671
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7675
                                (letrec*
                                 ((x7676
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7676))))
                               (x7672
                                (letrec*
                                 ((x7674
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7673
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7674 k j x7673)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7675 x7672)))))))
                        g7670))))
                   g7669)))
               (any? (lambda (v) (letrec* ((g7677 #t)) g7677)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7679)))))
                   g7678)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x-cnd7681
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7682
                                (letrec*
                                 ((x7683
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7683)))))
                              g7682))
                           g7562))))
                      (if x-cnd7681
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7680)))
               (meta (lambda (v) (letrec* ((g7684 v)) g7684)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7685
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7687
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7688
                                 (letrec*
                                  ((x7689
                                    (letrec*
                                     ((x7691
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7690
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7691 x7690)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7689)))))
                               g7688))))
                          g7687))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7686
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7686))))))
                  g7685)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7692
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7694
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7695
                                 (letrec*
                                  ((x7696
                                    (letrec*
                                     ((x7698
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7697
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7698 x7697)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7696)))))
                               g7695))))
                          g7694))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7693
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7693))))))
                  g7692)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7699
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7701
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7702
                                 (letrec*
                                  ((x7703
                                    (letrec*
                                     ((x7705
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7704
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7705 x7704)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7703)))))
                               g7702))))
                          g7701))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7700
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7700))))))
                  g7699)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7706
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7708
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7709
                                 (letrec*
                                  ((x7710
                                    (letrec*
                                     ((x7712
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7711
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7712 x7711)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7710)))))
                               g7709))))
                          g7708))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7707
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7707))))))
                  g7706)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7713
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7715
                            (lambda (g7593)
                              (letrec*
                               ((g7716
                                 (letrec*
                                  ((x7717
                                    (letrec*
                                     ((x7718
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7718)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7717)))))
                               g7716))))
                          g7715))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7714
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7714))))))
                  g7713)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7719
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7721
                            (lambda (g7599)
                              (letrec*
                               ((g7722
                                 (letrec*
                                  ((x7723
                                    (letrec*
                                     ((x7724
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7724)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7723)))))
                               g7722))))
                          g7721))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7720
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7720))))))
                  g7719)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7725
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7727
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7728
                                 (letrec*
                                  ((x7729
                                    (letrec*
                                     ((x7731
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7730
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7731 x7730)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7729)))))
                               g7728))))
                          g7727))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7726
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7726))))))
                  g7725)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7732
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7734
                            (lambda (g7612)
                              (letrec*
                               ((g7735
                                 (letrec*
                                  ((x7736
                                    (letrec*
                                     ((x7737
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7737)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7736)))))
                               g7735))))
                          g7734))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7733
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7733))))))
                  g7732)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7738
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7740
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7741
                                 (letrec*
                                  ((x7742
                                    (letrec*
                                     ((x7744
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7743
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7744 x7743)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7742)))))
                               g7741))))
                          g7740))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7739
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7739))))))
                  g7738)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7745
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7745)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7758))))
                          (x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7756)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7757 x7755)))))))
                   g7751)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7764)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7773))))
                    (g7771
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
                       ((g7774
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7775 res))
                       g7775))))
                   g7771)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7780)))))
                   g7779)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((x-cnd7786
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7786
                        #f
                        (letrec*
                         ((x-cnd7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7788 k)))))
                         (if x-cnd7787
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7789)))))))))
                   g7784)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7791)))))
                   g7790)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7795
                        ""
                        (letrec*
                         ((x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7799))))
                          (x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7797)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7798 x7796)))))))
                   g7793)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7805
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7805))))
                   g7802)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7809)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7808)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7807)))))
                   g7806)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7815
                        x
                        (letrec*
                         ((x7817
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7816
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7817 x7816)))))))
                   g7812)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7818
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7818)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x-cnd7820
                        (letrec*
                         ((x7821 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7821)))))
                      (if x-cnd7820
                        (letrec*
                         ((x7822 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7822)))
                        #f))))
                   g7819)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7826
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7827 (if val7517 val7517 #f)))
                             g7827)))))
                       g7826))))
                   g7824)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7829
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7829 9)))))
                      (letrec*
                       ((g7830
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7831 10)))))
                            (letrec*
                             ((g7832
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7833
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7833 32))))))
                             g7832)))))
                       g7830))))
                   g7828)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7836)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7835)))))
                   g7834)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7839))))
                    (g7838
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7838)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7840 #f)) g7840)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7842)))))
                   g7841)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7846
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7844)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7848
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7849
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7849
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7850
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7851
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7851
                                       (letrec*
                                        ((x-cnd7852
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7852
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7853
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7854
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7854
                                             (letrec*
                                              ((x-cnd7855
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7855
                                                (letrec*
                                                 ((x-cnd7856
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7857
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7858 x7857)))))
                                                 (if x-cnd7856
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7859
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7860 x7859)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7861
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7862
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7862
                                                (letrec*
                                                 ((x-cnd7863
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7863
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7864
                                                       (letrec*
                                                        ((x-cnd7865
                                                          (letrec*
                                                           ((x7866
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
                                                             (= x7866 n)))))
                                                        (if x-cnd7865
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7867
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
                                                                    ((g7868
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7869
                                                                           (letrec*
                                                                            ((x7871
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
                                                                             (x7870
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
                                                                               x7871
                                                                               x7870)))))
                                                                         (if x-cnd7869
                                                                           (letrec*
                                                                            ((x7872
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
                                                                               x7872)))
                                                                           #f)))))
                                                                    g7868))))
                                                                g7867))))
                                                           (letrec*
                                                            ((g7873
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7873))
                                                          #f))))
                                                     g7864))
                                                   #f))
                                                #f)))))
                                         g7861)))))
                                   g7853)))))
                             g7850)))))
                       g7848))))
                   g7847)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7875
                        (letrec*
                         ((x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7877)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7876)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7875)))))
                   g7874)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7881)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7880)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7879)))))
                   g7878)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7882
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7882)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7885))))
                    (g7884
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7886
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7887 (if val7526 val7526 #f)))
                             g7887)))))
                       g7886))))
                   g7884)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7891))))
                    (g7889
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7892))))
                    (g7890
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
                       ((g7893
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7894 res))
                       g7894))))
                   g7890)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7895
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7895)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7899))))
                    (g7897
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7900))))
                    (g7898
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7901
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7901))))
                   g7898)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (letrec*
                         ((x7904
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7904)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7903)))))
                   g7902)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7908)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7907)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7906)))))
                   g7905)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7910)))))
                   g7909)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7920)))))
                   g7917)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7924)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7923)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7926)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7928
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7928)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7931)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7930)))))
                   g7929)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7932
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7932)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7935))))
                    (g7934
                     (letrec*
                      ((x-cnd7936
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7936
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7939
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7940))))
                          (x7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7938)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7939 x7937)))))))
                   g7934)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (letrec*
                         ((x7943
                           (letrec*
                            ((x7944
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7944)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7943)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7942)))))
                   g7941)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (letrec*
                         ((x7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7948)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7947)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7946)))))
                   g7945)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7951))))
                    (g7950
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7952)))))
                   g7950)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (letrec*
                         ((x7955
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7956)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7955)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7954)))))
                   g7953)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7962
                        (letrec*
                         ((g7963
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7963)
                        (letrec*
                         ((x-cnd7964
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7965)))))
                         (if x-cnd7964
                           (letrec*
                            ((g7966
                              (letrec*
                               ((x7967
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7967)))))
                            g7966)
                           (letrec*
                            ((x-cnd7968
                              (letrec*
                               ((x7969
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7969)))))
                            (if x-cnd7968
                              (letrec*
                               ((g7970
                                 (letrec*
                                  ((x7972
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7971
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7972 x7971)))))
                               g7970)
                              (letrec*
                               ((x-cnd7973
                                 (letrec*
                                  ((x7974
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7974)))))
                               (if x-cnd7973
                                 (letrec*
                                  ((g7975
                                    (letrec*
                                     ((x7978
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7977
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7976
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7978 x7977 x7976)))))
                                  g7975)
                                 (letrec*
                                  ((x-cnd7979
                                    (letrec*
                                     ((x7980
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7980)))))
                                  (if x-cnd7979
                                    (letrec*
                                     ((g7981
                                       (letrec*
                                        ((x7985
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7984
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7983
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7982
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7985 x7984 x7983 x7982)))))
                                     g7981)
                                    (letrec*
                                     ((x-cnd7986
                                       (letrec*
                                        ((x7987
                                          (letrec*
                                           ((x7988
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7988)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7987)))))
                                     (if x-cnd7986
                                       (letrec*
                                        ((g7989
                                          (letrec*
                                           ((x7995
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7994
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7993
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7992
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7990
                                             (letrec*
                                              ((x7991
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7991)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7995
                                              x7994
                                              x7993
                                              x7992
                                              x7990)))))
                                        g7989)
                                       (letrec*
                                        ((x-cnd7996
                                          (letrec*
                                           ((x7997
                                             (letrec*
                                              ((x7998
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7998)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7997)))))
                                        (if x-cnd7996
                                          (letrec*
                                           ((g7999
                                             (letrec*
                                              ((x8007
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8006
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8005
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8004
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8002
                                                (letrec*
                                                 ((x8003
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8003))))
                                               (x8000
                                                (letrec*
                                                 ((x8001
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8001)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8007
                                                 x8006
                                                 x8005
                                                 x8004
                                                 x8002
                                                 x8000)))))
                                           g7999)
                                          (letrec*
                                           ((x-cnd8008
                                             (letrec*
                                              ((x8009
                                                (letrec*
                                                 ((x8010
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8010)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8009)))))
                                           (if x-cnd8008
                                             (letrec*
                                              ((g8011
                                                (letrec*
                                                 ((x8021
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8020
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8019
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8018
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8016
                                                   (letrec*
                                                    ((x8017
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8017))))
                                                  (x8014
                                                   (letrec*
                                                    ((x8015
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8015))))
                                                  (x8012
                                                   (letrec*
                                                    ((x8013
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8013)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8021
                                                    x8020
                                                    x8019
                                                    x8018
                                                    x8016
                                                    x8014
                                                    x8012)))))
                                              g8011)
                                             (letrec*
                                              ((g8022
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8022)))))))))))))))))))
                   g7959)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x8025
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8025))))
                    (g8024
                     (letrec*
                      ((x-cnd8026
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8026
                        #f
                        (letrec*
                         ((x-cnd8027
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8028 e)))))
                         (if x-cnd8027
                           l
                           (letrec*
                            ((x8029
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8029)))))))))
                   g8024)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8031
                        (letrec*
                         ((x8032
                           (letrec*
                            ((x8033
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8033)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8032)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8031)))))
                   g8030)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x8035
                        (letrec*
                         ((x8036
                           (letrec*
                            ((x8037
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8037)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8036)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8035)))))
                   g8034)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8038
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8038)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x8041
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8041))))
                    (g8040
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8040)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8042
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8043
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8043))))
                   g8042)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8045
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8045)))))
                   g8044)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8047
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8047
                           (letrec*
                            ((x8048
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8048)))
                           #f))))
                      (letrec*
                       ((g8049
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8049))))
                   g8046)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8051
                        (letrec*
                         ((x8052
                           (letrec*
                            ((x8053
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8053)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8052)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8051)))))
                   g8050)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((x-cnd8055
                        (letrec*
                         ((x8056 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8056 c)))))
                      (if x-cnd8055
                        (letrec*
                         ((x8057 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8057)))
                        #f))))
                   g8054)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8058
                     (letrec*
                      ((x8060
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8060))))
                    (g8059
                     (letrec*
                      ((x-cnd8061
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8061
                        #f
                        (letrec*
                         ((x-cnd8062
                           (letrec*
                            ((x8063
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8063 k)))))
                         (if x-cnd8062
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8064
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8064)))))))))
                   g8059)))
               (not (lambda (x) (letrec* ((g8065 (if x #f #t))) g8065)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8066
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8066)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8069
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8069))))
                    (g8068
                     (letrec*
                      ((x-cnd8070
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8070
                        #f
                        (letrec*
                         ((x-cnd8071
                           (letrec*
                            ((x8072
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8072 e)))))
                         (if x-cnd8071
                           l
                           (letrec*
                            ((x8073
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8073)))))))))
                   g8068)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8074
                     (letrec*
                      ((x8075
                        (letrec*
                         ((x8076
                           (letrec*
                            ((x8077
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8077)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8076)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8075)))))
                   g8074)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8080))))
                    (g8079
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8081
                             (letrec*
                              ((x-cnd8082
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8082
                                0
                                (letrec*
                                 ((x8083
                                   (letrec*
                                    ((x8084
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8084)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8083)))))))
                           g8081))))
                      (letrec*
                       ((g8085
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8085))))
                   g8079)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8089))))
                    (g8087
                     (letrec*
                      ((x8090
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8090))))
                    (g8088
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8091
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8091))))
                   g8088)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8092
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8093)))))
                   g8092)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8094
                     (letrec*
                      ((x8095
                        (letrec*
                         ((x8096
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8096)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8095)))))
                   g8094)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8099))))
                    (g8098
                     (letrec*
                      ((x-cnd8100
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8100
                        #f
                        (letrec*
                         ((x-cnd8101
                           (letrec*
                            ((x8102
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8102 k)))))
                         (if x-cnd8101
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8103
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8103)))))))))
                   g8098)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8105)))))
                   g8104)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8109))))
                    (g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8110))))
                    (g8108
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8111)))))
                   g8108)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8113
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8113))))
                   g8112)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x-cnd8119
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8119
                        #t
                        (letrec*
                         ((x-cnd8120
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8120
                           (letrec*
                            ((g8121
                              (letrec*
                               ((x8123
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8123))))
                             (g8122
                              (letrec*
                               ((x8124
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8124)))))
                            g8122)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8116)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8127
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8127))))
                    (g8126
                     (letrec*
                      ((x-cnd8128
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8128
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8126)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8132
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8132))))
                    (g8130
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8133))))
                    (g8131
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8134
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8134))))
                   g8131)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8136
                        (letrec*
                         ((x8137
                           (letrec*
                            ((x8138
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8138)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8137)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8136)))))
                   g8135)))
               (newline (lambda () (letrec* ((g8139 #f)) g8139)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8142
                        (letrec*
                         ((x8143
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8143))))
                       (x8141
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8142 x8141)))))
                   g8140)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8146
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8146))))
                    (g8145
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8147)))))
                   g8145)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8152))))
                    (g8149
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8153))))
                    (g8150
                     (letrec*
                      ((x8154
                        (letrec*
                         ((x8155
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8155)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8154))))
                    (g8151
                     (letrec*
                      ((x-cnd8156
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8156
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8158
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8157
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8158 x8157)))))))
                   g8151)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x-cnd8160
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8160
                        a
                        (letrec*
                         ((x8161
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8161)))))))
                   g8159)))
               (len
                (lambda (xs)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x-cnd8163
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8163
                        0
                        (letrec*
                         ((x8164
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1480 51))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1480 62))
                              (display "\n")
                              (len x8165)))))
                         (begin
                           (write '(funapp 1481 26))
                           (display "\n")
                           (+ 1 x8164)))))))
                   g8162))))
              (letrec*
               ((g8166
                 (begin
                   (write '(funapp 1485 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1486 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8168
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1490 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1490 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1490 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1490 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8169
                              (begin
                                (write '(funapp 1493 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g8170
                                      (lambda (g7625)
                                        (letrec*
                                         ((g8171
                                           (letrec*
                                            ((x8175
                                              (letrec*
                                               ((x8176
                                                 (begin
                                                   (write '(funapp 1502 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1503 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8176))))
                                             (x8172
                                              (letrec*
                                               ((x8173
                                                 (letrec*
                                                  ((x8174
                                                    (begin
                                                      (write '(funapp 1508 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1509 45))
                                                    (display "\n")
                                                    (x8174
                                                     j7626
                                                     k7627
                                                     g7625)))))
                                               (begin
                                                 (write '(funapp 1510 42))
                                                 (display "\n")
                                                 (f7628 x8173)))))
                                            (begin
                                              (write '(funapp 1511 39))
                                              (display "\n")
                                              (x8175 j7626 k7627 x8172)))))
                                         g8171))))
                                    g8170))
                                 xj7623
                                 xk7624
                                 len))))
                            g8169)))
                         (x8167 (input)))
                        (begin
                          (write '(funapp 1519 21))
                          (display "\n")
                          (x8168 x8167)))))))))
               g8166))))
           g7642))))
       g7640)))
    g7639)))
