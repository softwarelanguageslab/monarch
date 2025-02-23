(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7635 #t)) g7635)))
    (meta (lambda (v) (letrec* ((g7636 v)) g7636)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7637
          (letrec*
           ((g7638
             (letrec*
              ((x-e7639 lst))
              (letrec*
               ((v1804 x-e7639))
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
                   ((x-cnd7640
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7640
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
           g7638)))
        g7637)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7641 (lambda (v) (letrec* ((g7642 v)) g7642)))) g7641)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7643
          (letrec*
           ((x7644 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7644)))))
        g7643))))
   (letrec*
    ((g7645
      (letrec*
       ((g7646
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
           ((g7647 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7648
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7649
                     (lambda (k j lst)
                       (letrec*
                        ((g7650
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7651
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7651))
                             lst))))
                        g7650))))
                   g7649)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7653
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7652)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7655
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7654)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7657
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7656)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7660 #t)) g7660)) g7544))))
                      (if x-cnd7659
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7658)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7663 #t)) g7663)) g7547))))
                      (if x-cnd7662
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7661)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7665
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7664)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7667
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7666)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7669
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7668)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7671
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7670)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7672
                     (lambda (k j v)
                       (letrec*
                        ((g7673
                          (letrec*
                           ((x-cnd7674
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7674
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7673))))
                   g7672)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7675
                     (lambda (k j v)
                       (letrec*
                        ((g7676
                          (letrec*
                           ((x-cnd7677
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7677
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7681
                                (letrec*
                                 ((x7682
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7682))))
                               (x7678
                                (letrec*
                                 ((x7680
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7679
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7680 k j x7679)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7681 x7678)))))))
                        g7676))))
                   g7675)))
               (any? (lambda (v) (letrec* ((g7683 #t)) g7683)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7685)))))
                   g7684)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x-cnd7687
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7688
                                (letrec*
                                 ((x7689
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7689)))))
                              g7688))
                           g7562))))
                      (if x-cnd7687
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7686)))
               (meta (lambda (v) (letrec* ((g7690 v)) g7690)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7691
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7693
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7694
                                 (letrec*
                                  ((x7695
                                    (letrec*
                                     ((x7697
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7696
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7697 x7696)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7695)))))
                               g7694))))
                          g7693))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7692
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7692))))))
                  g7691)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7698
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7700
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7701
                                 (letrec*
                                  ((x7702
                                    (letrec*
                                     ((x7704
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7703
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7704 x7703)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7702)))))
                               g7701))))
                          g7700))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7699
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7699))))))
                  g7698)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7705
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7707
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7708
                                 (letrec*
                                  ((x7709
                                    (letrec*
                                     ((x7711
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7710
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7711 x7710)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7709)))))
                               g7708))))
                          g7707))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7706
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7706))))))
                  g7705)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7712
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7714
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7715
                                 (letrec*
                                  ((x7716
                                    (letrec*
                                     ((x7718
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7717
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7718 x7717)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7716)))))
                               g7715))))
                          g7714))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7713
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7713))))))
                  g7712)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7719
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7721
                            (lambda (g7593)
                              (letrec*
                               ((g7722
                                 (letrec*
                                  ((x7723
                                    (letrec*
                                     ((x7724
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7724)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7723)))))
                               g7722))))
                          g7721))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7720
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7720))))))
                  g7719)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7725
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7727
                            (lambda (g7599)
                              (letrec*
                               ((g7728
                                 (letrec*
                                  ((x7729
                                    (letrec*
                                     ((x7730
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7730)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7729)))))
                               g7728))))
                          g7727))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7726
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7726))))))
                  g7725)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7731
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7733
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7734
                                 (letrec*
                                  ((x7735
                                    (letrec*
                                     ((x7737
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7736
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7737 x7736)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7735)))))
                               g7734))))
                          g7733))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7732
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7732))))))
                  g7731)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7738
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7740
                            (lambda (g7612)
                              (letrec*
                               ((g7741
                                 (letrec*
                                  ((x7742
                                    (letrec*
                                     ((x7743
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7743)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7742)))))
                               g7741))))
                          g7740))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7739
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7739))))))
                  g7738)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7744
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7746
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7747
                                 (letrec*
                                  ((x7748
                                    (letrec*
                                     ((x7750
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7749
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7750 x7749)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7748)))))
                               g7747))))
                          g7746))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7745
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7745))))))
                  g7744)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7751
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7751)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7754)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x-cnd7760
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7760
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7764))))
                          (x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7762)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7763 x7761)))))))
                   g7757)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7774)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7772)))))
                   g7771)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7778))))
                    (g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7779))))
                    (g7777
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
                       ((g7780
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7781 res))
                       g7781))))
                   g7777)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7786)))))
                   g7785)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        #f
                        (letrec*
                         ((x-cnd7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7794 k)))))
                         (if x-cnd7793
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7795)))))))))
                   g7790)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7797)))))
                   g7796)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        ""
                        (letrec*
                         ((x7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7805))))
                          (x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7803)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7804 x7802)))))))
                   g7799)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7811
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7811))))
                   g7808)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (letrec*
                         ((x7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7815)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7814)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7813)))))
                   g7812)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7821
                        x
                        (letrec*
                         ((x7823
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7822
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7823 x7822)))))))
                   g7818)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7824
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7824)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x-cnd7826
                        (letrec*
                         ((x7827 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7827)))))
                      (if x-cnd7826
                        (letrec*
                         ((x7828 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7828)))
                        #f))))
                   g7825)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7831))))
                    (g7830
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7832
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7833 (if val7517 val7517 #f)))
                             g7833)))))
                       g7832))))
                   g7830)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7835
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7835 9)))))
                      (letrec*
                       ((g7836
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7837
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7837 10)))))
                            (letrec*
                             ((g7838
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7839
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7839 32))))))
                             g7838)))))
                       g7836))))
                   g7834)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7842)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7841)))))
                   g7840)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7844)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7846 #f)) g7846)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7848)))))
                   g7847)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7852
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7850)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7854
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7855
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7855
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7856
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7857
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7857
                                       (letrec*
                                        ((x-cnd7858
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7858
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7859
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7860
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7860
                                             (letrec*
                                              ((x-cnd7861
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7861
                                                (letrec*
                                                 ((x-cnd7862
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7863
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7864 x7863)))))
                                                 (if x-cnd7862
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7865
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7866 x7865)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7867
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7868
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7868
                                                (letrec*
                                                 ((x-cnd7869
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7869
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7870
                                                       (letrec*
                                                        ((x-cnd7871
                                                          (letrec*
                                                           ((x7872
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
                                                             (= x7872 n)))))
                                                        (if x-cnd7871
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7873
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
                                                                    ((g7874
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7875
                                                                           (letrec*
                                                                            ((x7877
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
                                                                             (x7876
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
                                                                               x7877
                                                                               x7876)))))
                                                                         (if x-cnd7875
                                                                           (letrec*
                                                                            ((x7878
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
                                                                               x7878)))
                                                                           #f)))))
                                                                    g7874))))
                                                                g7873))))
                                                           (letrec*
                                                            ((g7879
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7879))
                                                          #f))))
                                                     g7870))
                                                   #f))
                                                #f)))))
                                         g7867)))))
                                   g7859)))))
                             g7856)))))
                       g7854))))
                   g7853)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7883)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7882)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7881)))))
                   g7880)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7887)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7886)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7885)))))
                   g7884)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7888
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7888)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7892
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7893 (if val7526 val7526 #f)))
                             g7893)))))
                       g7892))))
                   g7890)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7897))))
                    (g7895
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7898))))
                    (g7896
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
                       ((g7899
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7900 res))
                       g7900))))
                   g7896)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7901
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7901)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7907
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7907))))
                   g7904)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7910)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7909)))))
                   g7908)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7914)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7913)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7917)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (letrec*
                         ((x7920
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7920)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7919)))))
                   g7918)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7926)))))
                   g7923)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (letrec*
                         ((x7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7930)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7929)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7928)))))
                   g7927)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7933))))
                    (g7932
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7932)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7934
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7934)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7937)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7938
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7938)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7941))))
                    (g7940
                     (letrec*
                      ((x-cnd7942
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7942
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7945
                           (letrec*
                            ((x7946
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7946))))
                          (x7943
                           (letrec*
                            ((x7944
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7944)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7945 x7943)))))))
                   g7940)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7950)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7949)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7948)))))
                   g7947)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (letrec*
                         ((x7953
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7954)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7953)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7952)))))
                   g7951)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7957))))
                    (g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7958)))))
                   g7956)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7960
                        (letrec*
                         ((x7961
                           (letrec*
                            ((x7962
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7962)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7961)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7960)))))
                   g7959)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x-cnd7968
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7968
                        (letrec*
                         ((g7969
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7969)
                        (letrec*
                         ((x-cnd7970
                           (letrec*
                            ((x7971
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7971)))))
                         (if x-cnd7970
                           (letrec*
                            ((g7972
                              (letrec*
                               ((x7973
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7973)))))
                            g7972)
                           (letrec*
                            ((x-cnd7974
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7975)))))
                            (if x-cnd7974
                              (letrec*
                               ((g7976
                                 (letrec*
                                  ((x7978
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7977
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7978 x7977)))))
                               g7976)
                              (letrec*
                               ((x-cnd7979
                                 (letrec*
                                  ((x7980
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7980)))))
                               (if x-cnd7979
                                 (letrec*
                                  ((g7981
                                    (letrec*
                                     ((x7984
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7983
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7982
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7984 x7983 x7982)))))
                                  g7981)
                                 (letrec*
                                  ((x-cnd7985
                                    (letrec*
                                     ((x7986
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7986)))))
                                  (if x-cnd7985
                                    (letrec*
                                     ((g7987
                                       (letrec*
                                        ((x7991
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7990
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7989
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7988
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7991 x7990 x7989 x7988)))))
                                     g7987)
                                    (letrec*
                                     ((x-cnd7992
                                       (letrec*
                                        ((x7993
                                          (letrec*
                                           ((x7994
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7994)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7993)))))
                                     (if x-cnd7992
                                       (letrec*
                                        ((g7995
                                          (letrec*
                                           ((x8001
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8000
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7999
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7998
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7996
                                             (letrec*
                                              ((x7997
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7997)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8001
                                              x8000
                                              x7999
                                              x7998
                                              x7996)))))
                                        g7995)
                                       (letrec*
                                        ((x-cnd8002
                                          (letrec*
                                           ((x8003
                                             (letrec*
                                              ((x8004
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8004)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8003)))))
                                        (if x-cnd8002
                                          (letrec*
                                           ((g8005
                                             (letrec*
                                              ((x8013
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8012
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8011
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8010
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8008
                                                (letrec*
                                                 ((x8009
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8009))))
                                               (x8006
                                                (letrec*
                                                 ((x8007
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8007)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8013
                                                 x8012
                                                 x8011
                                                 x8010
                                                 x8008
                                                 x8006)))))
                                           g8005)
                                          (letrec*
                                           ((x-cnd8014
                                             (letrec*
                                              ((x8015
                                                (letrec*
                                                 ((x8016
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8016)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8015)))))
                                           (if x-cnd8014
                                             (letrec*
                                              ((g8017
                                                (letrec*
                                                 ((x8027
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8026
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8025
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8024
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8022
                                                   (letrec*
                                                    ((x8023
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8023))))
                                                  (x8020
                                                   (letrec*
                                                    ((x8021
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8021))))
                                                  (x8018
                                                   (letrec*
                                                    ((x8019
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8019)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8027
                                                    x8026
                                                    x8025
                                                    x8024
                                                    x8022
                                                    x8020
                                                    x8018)))))
                                              g8017)
                                             (letrec*
                                              ((g8028
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8028)))))))))))))))))))
                   g7965)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8031))))
                    (g8030
                     (letrec*
                      ((x-cnd8032
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8032
                        #f
                        (letrec*
                         ((x-cnd8033
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8034 e)))))
                         (if x-cnd8033
                           l
                           (letrec*
                            ((x8035
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8035)))))))))
                   g8030)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((x8037
                        (letrec*
                         ((x8038
                           (letrec*
                            ((x8039
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8039)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8038)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8037)))))
                   g8036)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x8041
                        (letrec*
                         ((x8042
                           (letrec*
                            ((x8043
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8043)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8042)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8041)))))
                   g8040)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8044
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8044)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8047))))
                    (g8046
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8046)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8049
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8049))))
                   g8048)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8051
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8051)))))
                   g8050)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8052
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8053
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8053
                           (letrec*
                            ((x8054
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8054)))
                           #f))))
                      (letrec*
                       ((g8055
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8055))))
                   g8052)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8056
                     (letrec*
                      ((x8057
                        (letrec*
                         ((x8058
                           (letrec*
                            ((x8059
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8059)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8058)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8057)))))
                   g8056)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x-cnd8061
                        (letrec*
                         ((x8062 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8062 c)))))
                      (if x-cnd8061
                        (letrec*
                         ((x8063 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8063)))
                        #f))))
                   g8060)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8064
                     (letrec*
                      ((x8066
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8066))))
                    (g8065
                     (letrec*
                      ((x-cnd8067
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8067
                        #f
                        (letrec*
                         ((x-cnd8068
                           (letrec*
                            ((x8069
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8069 k)))))
                         (if x-cnd8068
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8070
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8070)))))))))
                   g8065)))
               (not (lambda (x) (letrec* ((g8071 (if x #f #t))) g8071)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8072
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8072)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8075
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8075))))
                    (g8074
                     (letrec*
                      ((x-cnd8076
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8076
                        #f
                        (letrec*
                         ((x-cnd8077
                           (letrec*
                            ((x8078
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8078 e)))))
                         (if x-cnd8077
                           l
                           (letrec*
                            ((x8079
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8079)))))))))
                   g8074)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8080
                     (letrec*
                      ((x8081
                        (letrec*
                         ((x8082
                           (letrec*
                            ((x8083
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8083)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8082)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8081)))))
                   g8080)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8086
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8086))))
                    (g8085
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8087
                             (letrec*
                              ((x-cnd8088
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8088
                                0
                                (letrec*
                                 ((x8089
                                   (letrec*
                                    ((x8090
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8090)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8089)))))))
                           g8087))))
                      (letrec*
                       ((g8091
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8091))))
                   g8085)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8092
                     (letrec*
                      ((x8095
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8095))))
                    (g8093
                     (letrec*
                      ((x8096
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8096))))
                    (g8094
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8097
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8097))))
                   g8094)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8099)))))
                   g8098)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8101
                        (letrec*
                         ((x8102
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8102)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8101)))))
                   g8100)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8105))))
                    (g8104
                     (letrec*
                      ((x-cnd8106
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8106
                        #f
                        (letrec*
                         ((x-cnd8107
                           (letrec*
                            ((x8108
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8108 k)))))
                         (if x-cnd8107
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8109
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8109)))))))))
                   g8104)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8110
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8111)))))
                   g8110)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8115
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8115))))
                    (g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8117)))))
                   g8114)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8119
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8119))))
                   g8118)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8120
                     (letrec*
                      ((x8123
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8123))))
                    (g8121
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8124))))
                    (g8122
                     (letrec*
                      ((x-cnd8125
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8125
                        #t
                        (letrec*
                         ((x-cnd8126
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8126
                           (letrec*
                            ((g8127
                              (letrec*
                               ((x8129
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8129))))
                             (g8128
                              (letrec*
                               ((x8130
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8130)))))
                            g8128)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8122)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8133))))
                    (g8132
                     (letrec*
                      ((x-cnd8134
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8134
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8132)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8138))))
                    (g8136
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8139))))
                    (g8137
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8140
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8140))))
                   g8137)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8142
                        (letrec*
                         ((x8143
                           (letrec*
                            ((x8144
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8144)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8143)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8142)))))
                   g8141)))
               (newline (lambda () (letrec* ((g8145 #f)) g8145)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8148
                        (letrec*
                         ((x8149
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8149))))
                       (x8147
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8148 x8147)))))
                   g8146)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8152))))
                    (g8151
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8153)))))
                   g8151)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8158))))
                    (g8155
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x8160
                        (letrec*
                         ((x8161
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8161)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8160))))
                    (g8157
                     (letrec*
                      ((x-cnd8162
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8162
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8164
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8163
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8164 x8163)))))))
                   g8157)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8165
                     (letrec*
                      ((x-cnd8166
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8166
                        a
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8167)))))))
                   g8165)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x-cnd8169
                        (letrec*
                         ((x8171
                           (begin
                             (write '(funapp 1478 34))
                             (display "\n")
                             (empty? xs)))
                          (x8170
                           (begin
                             (write '(funapp 1478 54))
                             (display "\n")
                             (empty? ys))))
                         (begin
                           (write '(funapp 1479 26))
                           (display "\n")
                           (and x8171 x8170)))))
                      (if x-cnd8169
                        (letrec* ((g8172 empty)) g8172)
                        (letrec*
                         ((x-cnd8173
                           (letrec*
                            ((x8175
                              (begin
                                (write '(funapp 1485 37))
                                (display "\n")
                                (cons? xs)))
                             (x8174
                              (begin
                                (write '(funapp 1485 56))
                                (display "\n")
                                (cons? ys))))
                            (begin
                              (write '(funapp 1486 29))
                              (display "\n")
                              (and x8175 x8174)))))
                         (if x-cnd8173
                           (letrec*
                            ((g8176
                              (letrec*
                               ((x8180
                                 (letrec*
                                  ((x8182
                                    (begin
                                      (write '(funapp 1493 43))
                                      (display "\n")
                                      (car xs)))
                                   (x8181
                                    (begin
                                      (write '(funapp 1493 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1494 35))
                                    (display "\n")
                                    (cons x8182 x8181))))
                                (x8177
                                 (letrec*
                                  ((x8179
                                    (begin
                                      (write '(funapp 1497 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x8178
                                    (begin
                                      (write '(funapp 1497 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1498 35))
                                    (display "\n")
                                    (zip x8179 x8178)))))
                               (begin
                                 (write '(funapp 1499 32))
                                 (display "\n")
                                 (cons x8180 x8177)))))
                            g8176)
                           (letrec*
                            ((g8183
                              (begin
                                (write '(funapp 1501 44))
                                (display "\n")
                                'fail)))
                            g8183)))))))
                   g8168)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8184
                     (letrec*
                      ((x-cnd8185
                        (begin
                          (write '(funapp 1508 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8185
                        empty
                        (letrec*
                         ((x8186
                           (letrec*
                            ((x8187
                              (begin
                                (write '(funapp 1512 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1512 61))
                              (display "\n")
                              (mk-list x8187)))))
                         (begin
                           (write '(funapp 1513 26))
                           (display "\n")
                           (cons n x8186)))))))
                   g8184)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1520 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g8189
                         (begin
                           (write '(funapp 1521 40))
                           (display "\n")
                           (zip xs xs))))
                       g8189))))
                   g8188))))
              (letrec*
               ((g8190
                 (begin
                   (write '(funapp 1525 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1526 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8192
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1530 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1530 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1530 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1530 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8193
                              (begin
                                (write '(funapp 1533 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g8194
                                      (lambda (g7625)
                                        (letrec*
                                         ((g8195
                                           (letrec*
                                            ((x8198
                                              (begin
                                                (write '(funapp 1540 47))
                                                (display "\n")
                                                (listof integer?/c)))
                                             (x8196
                                              (letrec*
                                               ((x8197
                                                 (begin
                                                   (write '(funapp 1544 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 1545 42))
                                                 (display "\n")
                                                 (f7628 x8197)))))
                                            (begin
                                              (write '(funapp 1546 39))
                                              (display "\n")
                                              (x8198 j7626 k7627 x8196)))))
                                         g8195))))
                                    g8194))
                                 xj7623
                                 xk7624
                                 mk-list))))
                            g8193)))
                         (x8191 (input)))
                        (begin
                          (write '(funapp 1554 21))
                          (display "\n")
                          (x8192 x8191)))
                       (letrec*
                        ((x8200
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 1558 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1558 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 1558 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1558 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8201
                              (begin
                                (write '(funapp 1561 27))
                                (display "\n")
                                ((lambda (j7632 k7633 f7634)
                                   (letrec*
                                    ((g8202
                                      (lambda (g7631)
                                        (letrec*
                                         ((g8203
                                           (letrec*
                                            ((x8206
                                              (letrec*
                                               ((x8207
                                                 (begin
                                                   (write '(funapp 1571 44))
                                                   (display "\n")
                                                   (cons/c
                                                    integer?/c
                                                    integer?/c))))
                                               (begin
                                                 (write '(funapp 1572 42))
                                                 (display "\n")
                                                 (listof x8207))))
                                             (x8204
                                              (letrec*
                                               ((x8205
                                                 (begin
                                                   (write '(funapp 1576 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7631))))
                                               (begin
                                                 (write '(funapp 1577 42))
                                                 (display "\n")
                                                 (f7634 x8205)))))
                                            (begin
                                              (write '(funapp 1578 39))
                                              (display "\n")
                                              (x8206 j7632 k7633 x8204)))))
                                         g8203))))
                                    g8202))
                                 xj7629
                                 xk7630
                                 main))))
                            g8201)))
                         (x8199 (input)))
                        (begin
                          (write '(funapp 1586 21))
                          (display "\n")
                          (x8200 x8199)))))))))
               g8190))))
           g7648))))
       g7646)))
    g7645)))
