(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7628 #t)) g7628)))
    (meta (lambda (v) (letrec* ((g7629 v)) g7629)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7630
          (letrec*
           ((g7631
             (letrec*
              ((x-e7632 lst))
              (letrec*
               ((v1804 x-e7632))
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
                   ((x-cnd7633
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7633
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
           g7631)))
        g7630)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7634 (lambda (v) (letrec* ((g7635 v)) g7635)))) g7634)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7636
          (letrec*
           ((x7637 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7637)))))
        g7636))))
   (letrec*
    ((g7638
      (letrec*
       ((g7639
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
           ((g7640 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7641
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7642
                     (lambda (k j lst)
                       (letrec*
                        ((g7643
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7644
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7644))
                             lst))))
                        g7643))))
                   g7642)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7646
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7645)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7648
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7647)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7650
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7649)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7653 #t)) g7653)) g7544))))
                      (if x-cnd7652
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7651)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7656 #t)) g7656)) g7547))))
                      (if x-cnd7655
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7654)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7658
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7657)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7660
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7659)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7662
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7661)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7664
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7663)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7665
                     (lambda (k j v)
                       (letrec*
                        ((g7666
                          (letrec*
                           ((x-cnd7667
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7667
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7666))))
                   g7665)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7668
                     (lambda (k j v)
                       (letrec*
                        ((g7669
                          (letrec*
                           ((x-cnd7670
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7670
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7674
                                (letrec*
                                 ((x7675
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7675))))
                               (x7671
                                (letrec*
                                 ((x7673
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7672
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7673 k j x7672)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7674 x7671)))))))
                        g7669))))
                   g7668)))
               (any? (lambda (v) (letrec* ((g7676 #t)) g7676)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7678)))))
                   g7677)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7681
                                (letrec*
                                 ((x7682
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7682)))))
                              g7681))
                           g7562))))
                      (if x-cnd7680
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7679)))
               (meta (lambda (v) (letrec* ((g7683 v)) g7683)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7684
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7686
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7687
                                 (letrec*
                                  ((x7688
                                    (letrec*
                                     ((x7690
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7689
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7690 x7689)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7688)))))
                               g7687))))
                          g7686))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7685
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7685))))))
                  g7684)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7691
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7693
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7694
                                 (letrec*
                                  ((x7695
                                    (letrec*
                                     ((x7697
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7696
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7697 x7696)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7695)))))
                               g7694))))
                          g7693))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7692
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7692))))))
                  g7691)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7698
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7700
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7701
                                 (letrec*
                                  ((x7702
                                    (letrec*
                                     ((x7704
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7703
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7704 x7703)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7702)))))
                               g7701))))
                          g7700))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7699
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7699))))))
                  g7698)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7705
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7707
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7708
                                 (letrec*
                                  ((x7709
                                    (letrec*
                                     ((x7711
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7710
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7711 x7710)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7709)))))
                               g7708))))
                          g7707))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7706
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7706))))))
                  g7705)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7712
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7714
                            (lambda (g7593)
                              (letrec*
                               ((g7715
                                 (letrec*
                                  ((x7716
                                    (letrec*
                                     ((x7717
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7717)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7716)))))
                               g7715))))
                          g7714))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7713
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7713))))))
                  g7712)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7718
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7720
                            (lambda (g7599)
                              (letrec*
                               ((g7721
                                 (letrec*
                                  ((x7722
                                    (letrec*
                                     ((x7723
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7723)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7722)))))
                               g7721))))
                          g7720))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7719
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7719))))))
                  g7718)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7724
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7726
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7727
                                 (letrec*
                                  ((x7728
                                    (letrec*
                                     ((x7730
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7729
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7730 x7729)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7728)))))
                               g7727))))
                          g7726))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7725
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7725))))))
                  g7724)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7731
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7733
                            (lambda (g7612)
                              (letrec*
                               ((g7734
                                 (letrec*
                                  ((x7735
                                    (letrec*
                                     ((x7736
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7736)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7735)))))
                               g7734))))
                          g7733))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7732
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7732))))))
                  g7731)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7737
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7739
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7740
                                 (letrec*
                                  ((x7741
                                    (letrec*
                                     ((x7743
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7742
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7743 x7742)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7741)))))
                               g7740))))
                          g7739))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7738
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7738))))))
                  g7737)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7744
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7744)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7747)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7746)))))
                   g7745)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x-cnd7753
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7753
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7757))))
                          (x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7755)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7756 x7754)))))))
                   g7750)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7763)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7767)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7772))))
                    (g7770
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
                       ((g7773
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7774 res))
                       g7774))))
                   g7770)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7779)))))
                   g7778)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((x-cnd7785
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7785
                        #f
                        (letrec*
                         ((x-cnd7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7787 k)))))
                         (if x-cnd7786
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7788)))))))))
                   g7783)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7790)))))
                   g7789)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7794
                        ""
                        (letrec*
                         ((x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7798))))
                          (x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7796)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7797 x7795)))))))
                   g7792)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7804
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7804))))
                   g7801)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (letrec*
                         ((x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7808)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7807)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7806)))))
                   g7805)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7814
                        x
                        (letrec*
                         ((x7816
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7815
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7816 x7815)))))))
                   g7811)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7817
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7817)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x-cnd7819
                        (letrec*
                         ((x7820 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7820)))))
                      (if x-cnd7819
                        (letrec*
                         ((x7821 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7821)))
                        #f))))
                   g7818)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7824))))
                    (g7823
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7825
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7826 (if val7517 val7517 #f)))
                             g7826)))))
                       g7825))))
                   g7823)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7828
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7828 9)))))
                      (letrec*
                       ((g7829
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7830 10)))))
                            (letrec*
                             ((g7831
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7832
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7832 32))))))
                             g7831)))))
                       g7829))))
                   g7827)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (letrec*
                         ((x7835
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7835)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7834)))))
                   g7833)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7838))))
                    (g7837
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7837)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7839 #f)) g7839)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7841)))))
                   g7840)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7845
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7843)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7847
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7848
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7848
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7849
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7850
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7850
                                       (letrec*
                                        ((x-cnd7851
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7851
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7852
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7853
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7853
                                             (letrec*
                                              ((x-cnd7854
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7854
                                                (letrec*
                                                 ((x-cnd7855
                                                   (letrec*
                                                    ((x7857
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7856
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7857 x7856)))))
                                                 (if x-cnd7855
                                                   (letrec*
                                                    ((x7859
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7858
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7859 x7858)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7860
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7861
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7861
                                                (letrec*
                                                 ((x-cnd7862
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7862
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7863
                                                       (letrec*
                                                        ((x-cnd7864
                                                          (letrec*
                                                           ((x7865
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
                                                             (= x7865 n)))))
                                                        (if x-cnd7864
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7866
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
                                                                    ((g7867
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7868
                                                                           (letrec*
                                                                            ((x7870
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
                                                                             (x7869
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
                                                                               x7870
                                                                               x7869)))))
                                                                         (if x-cnd7868
                                                                           (letrec*
                                                                            ((x7871
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
                                                                               x7871)))
                                                                           #f)))))
                                                                    g7867))))
                                                                g7866))))
                                                           (letrec*
                                                            ((g7872
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7872))
                                                          #f))))
                                                     g7863))
                                                   #f))
                                                #f)))))
                                         g7860)))))
                                   g7852)))))
                             g7849)))))
                       g7847))))
                   g7846)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7876)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7875)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7874)))))
                   g7873)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7879)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7878)))))
                   g7877)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7881
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7881)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7885
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7886 (if val7526 val7526 #f)))
                             g7886)))))
                       g7885))))
                   g7883)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7890))))
                    (g7888
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7891))))
                    (g7889
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
                       ((g7892
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7893 res))
                       g7893))))
                   g7889)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7894)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7898))))
                    (g7896
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7899))))
                    (g7897
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7900
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7900))))
                   g7897)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7902
                        (letrec*
                         ((x7903
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7903)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7902)))))
                   g7901)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7907)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7906)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7905)))))
                   g7904)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7910)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7909)))))
                   g7908)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7913)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7912)))))
                   g7911)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7919)))))
                   g7916)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7923)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7922)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7921)))))
                   g7920)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7926))))
                    (g7925
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7925)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7927
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7927)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7930)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7931
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7931)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7935
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7939))))
                          (x7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7937)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7938 x7936)))))))
                   g7933)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7943)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7947)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7946)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7945)))))
                   g7944)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7951)))))
                   g7949)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7955)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7954)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7953)))))
                   g7952)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x-cnd7961
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7961
                        (letrec*
                         ((g7962
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7962)
                        (letrec*
                         ((x-cnd7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7964)))))
                         (if x-cnd7963
                           (letrec*
                            ((g7965
                              (letrec*
                               ((x7966
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7966)))))
                            g7965)
                           (letrec*
                            ((x-cnd7967
                              (letrec*
                               ((x7968
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7968)))))
                            (if x-cnd7967
                              (letrec*
                               ((g7969
                                 (letrec*
                                  ((x7971
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7970
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7971 x7970)))))
                               g7969)
                              (letrec*
                               ((x-cnd7972
                                 (letrec*
                                  ((x7973
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7973)))))
                               (if x-cnd7972
                                 (letrec*
                                  ((g7974
                                    (letrec*
                                     ((x7977
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7976
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7975
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7977 x7976 x7975)))))
                                  g7974)
                                 (letrec*
                                  ((x-cnd7978
                                    (letrec*
                                     ((x7979
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7979)))))
                                  (if x-cnd7978
                                    (letrec*
                                     ((g7980
                                       (letrec*
                                        ((x7984
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7983
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7982
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7981
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7984 x7983 x7982 x7981)))))
                                     g7980)
                                    (letrec*
                                     ((x-cnd7985
                                       (letrec*
                                        ((x7986
                                          (letrec*
                                           ((x7987
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7987)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7986)))))
                                     (if x-cnd7985
                                       (letrec*
                                        ((g7988
                                          (letrec*
                                           ((x7994
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7993
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7992
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7991
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7989
                                             (letrec*
                                              ((x7990
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7990)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7994
                                              x7993
                                              x7992
                                              x7991
                                              x7989)))))
                                        g7988)
                                       (letrec*
                                        ((x-cnd7995
                                          (letrec*
                                           ((x7996
                                             (letrec*
                                              ((x7997
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7997)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7996)))))
                                        (if x-cnd7995
                                          (letrec*
                                           ((g7998
                                             (letrec*
                                              ((x8006
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8005
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8004
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8003
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8001
                                                (letrec*
                                                 ((x8002
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8002))))
                                               (x7999
                                                (letrec*
                                                 ((x8000
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8000)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8006
                                                 x8005
                                                 x8004
                                                 x8003
                                                 x8001
                                                 x7999)))))
                                           g7998)
                                          (letrec*
                                           ((x-cnd8007
                                             (letrec*
                                              ((x8008
                                                (letrec*
                                                 ((x8009
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8009)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8008)))))
                                           (if x-cnd8007
                                             (letrec*
                                              ((g8010
                                                (letrec*
                                                 ((x8020
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8019
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8018
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8017
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8015
                                                   (letrec*
                                                    ((x8016
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8016))))
                                                  (x8013
                                                   (letrec*
                                                    ((x8014
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8014))))
                                                  (x8011
                                                   (letrec*
                                                    ((x8012
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8012)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8020
                                                    x8019
                                                    x8018
                                                    x8017
                                                    x8015
                                                    x8013
                                                    x8011)))))
                                              g8010)
                                             (letrec*
                                              ((g8021
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8021)))))))))))))))))))
                   g7958)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8024
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8024))))
                    (g8023
                     (letrec*
                      ((x-cnd8025
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8025
                        #f
                        (letrec*
                         ((x-cnd8026
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8027 e)))))
                         (if x-cnd8026
                           l
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8028)))))))))
                   g8023)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((x8030
                        (letrec*
                         ((x8031
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8032)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8031)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8030)))))
                   g8029)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8036)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8034)))))
                   g8033)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8037
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8037)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8040))))
                    (g8039
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8039)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8042
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8042))))
                   g8041)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8044)))))
                   g8043)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8046
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8046
                           (letrec*
                            ((x8047
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8047)))
                           #f))))
                      (letrec*
                       ((g8048
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8048))))
                   g8045)))
               (cddaar
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
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8052)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8051)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8050)))))
                   g8049)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x-cnd8054
                        (letrec*
                         ((x8055 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8055 c)))))
                      (if x-cnd8054
                        (letrec*
                         ((x8056 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8056)))
                        #f))))
                   g8053)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((x8059
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8059))))
                    (g8058
                     (letrec*
                      ((x-cnd8060
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8060
                        #f
                        (letrec*
                         ((x-cnd8061
                           (letrec*
                            ((x8062
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8062 k)))))
                         (if x-cnd8061
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8063
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8063)))))))))
                   g8058)))
               (not (lambda (x) (letrec* ((g8064 (if x #f #t))) g8064)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8065
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8065)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x8068
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8068))))
                    (g8067
                     (letrec*
                      ((x-cnd8069
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8069
                        #f
                        (letrec*
                         ((x-cnd8070
                           (letrec*
                            ((x8071
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8071 e)))))
                         (if x-cnd8070
                           l
                           (letrec*
                            ((x8072
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8072)))))))))
                   g8067)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8074
                        (letrec*
                         ((x8075
                           (letrec*
                            ((x8076
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8076)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8075)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8074)))))
                   g8073)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8079
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8079))))
                    (g8078
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8080
                             (letrec*
                              ((x-cnd8081
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8081
                                0
                                (letrec*
                                 ((x8082
                                   (letrec*
                                    ((x8083
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8083)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8082)))))))
                           g8080))))
                      (letrec*
                       ((g8084
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8084))))
                   g8078)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8088
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8088))))
                    (g8086
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8089))))
                    (g8087
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8090
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8090))))
                   g8087)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8092)))))
                   g8091)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8094
                        (letrec*
                         ((x8095
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8095)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8094)))))
                   g8093)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8096
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8098))))
                    (g8097
                     (letrec*
                      ((x-cnd8099
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8099
                        #f
                        (letrec*
                         ((x-cnd8100
                           (letrec*
                            ((x8101
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8101 k)))))
                         (if x-cnd8100
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8102
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8102)))))))))
                   g8097)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8104)))))
                   g8103)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8108))))
                    (g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8109))))
                    (g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8110)))))
                   g8107)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8111
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8112
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8112))))
                   g8111)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((x-cnd8118
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8118
                        #t
                        (letrec*
                         ((x-cnd8119
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8119
                           (letrec*
                            ((g8120
                              (letrec*
                               ((x8122
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8122))))
                             (g8121
                              (letrec*
                               ((x8123
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8123)))))
                            g8121)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8115)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8126))))
                    (g8125
                     (letrec*
                      ((x-cnd8127
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8127
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8125)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8128
                     (letrec*
                      ((x8131
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8131))))
                    (g8129
                     (letrec*
                      ((x8132
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8132))))
                    (g8130
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8133
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8133))))
                   g8130)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8135
                        (letrec*
                         ((x8136
                           (letrec*
                            ((x8137
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8137)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8136)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8135)))))
                   g8134)))
               (newline (lambda () (letrec* ((g8138 #f)) g8138)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x8141
                        (letrec*
                         ((x8142
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8142))))
                       (x8140
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8141 x8140)))))
                   g8139)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8145))))
                    (g8144
                     (letrec*
                      ((x8146
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8146)))))
                   g8144)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8151
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8151))))
                    (g8148
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8152))))
                    (g8149
                     (letrec*
                      ((x8153
                        (letrec*
                         ((x8154
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8154)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8153))))
                    (g8150
                     (letrec*
                      ((x-cnd8155
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8155
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8157
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8156
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8157 x8156)))))))
                   g8150)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x-cnd8159
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8159
                        a
                        (letrec*
                         ((x8160
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8160)))))))
                   g8158)))
               (member
                (lambda (x l)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((x-cnd8162
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8162
                        empty
                        (letrec*
                         ((x-cnd8163
                           (letrec*
                            ((x8164
                              (begin
                                (write '(funapp 1481 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1481 55))
                              (display "\n")
                              (equal? x x8164)))))
                         (if x-cnd8163
                           l
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1484 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1484 55))
                              (display "\n")
                              (member x x8165)))))))))
                   g8161))))
              (letrec*
               ((g8166
                 (begin
                   (write '(funapp 1488 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1489 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7623
                          (begin
                            (write '(funapp 1491 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1491 34))
                               (display "\n")
                               'module))))
                         (xk7624
                          (begin
                            (write '(funapp 1491 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1491 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8167
                           (begin
                             (write '(funapp 1494 24))
                             (display "\n")
                             ((lambda (j7625 k7626 f7627)
                                (letrec*
                                 ((g8168
                                   (lambda ()
                                     (letrec*
                                      ((g8169
                                        (letrec*
                                         ((x8171
                                           (letrec*
                                            ((x8173
                                              (begin
                                                (write '(funapp 1503 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8172
                                              (begin
                                                (write '(funapp 1504 47))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1505 39))
                                              (display "\n")
                                              (any/c x8173 x8172))))
                                          (x8170
                                           (begin
                                             (write '(funapp 1506 44))
                                             (display "\n")
                                             (f7627))))
                                         (begin
                                           (write '(funapp 1507 36))
                                           (display "\n")
                                           (x8171 j7625 k7626 x8170)))))
                                      g8169))))
                                 g8168))
                              xj7623
                              xk7624
                              member))))
                         g8167))))))))
               g8166))))
           g7641))))
       g7639)))
    g7638)))
