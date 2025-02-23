(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7630 #t)) g7630)))
    (meta (lambda (v) (letrec* ((g7631 v)) g7631)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7632
          (letrec*
           ((g7633
             (letrec*
              ((x-e7634 lst))
              (letrec*
               ((v1804 x-e7634))
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
                   ((x-cnd7635
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7635
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
           g7633)))
        g7632)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7636 (lambda (v) (letrec* ((g7637 v)) g7637)))) g7636)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7638
          (letrec*
           ((x7639 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7639)))))
        g7638))))
   (letrec*
    ((g7640
      (letrec*
       ((g7641
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
           ((g7642 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7643
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7644
                     (lambda (k j lst)
                       (letrec*
                        ((g7645
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7646
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7646))
                             lst))))
                        g7645))))
                   g7644)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7648
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7647)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7650
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7649)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7652
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7651)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7655 #t)) g7655)) g7544))))
                      (if x-cnd7654
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7653)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7658 #t)) g7658)) g7547))))
                      (if x-cnd7657
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7656)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7660
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7659)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7662
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7661)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7664
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7663)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7666
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7665)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7667
                     (lambda (k j v)
                       (letrec*
                        ((g7668
                          (letrec*
                           ((x-cnd7669
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7669
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7668))))
                   g7667)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7670
                     (lambda (k j v)
                       (letrec*
                        ((g7671
                          (letrec*
                           ((x-cnd7672
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7672
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7676
                                (letrec*
                                 ((x7677
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7677))))
                               (x7673
                                (letrec*
                                 ((x7675
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7674
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7675 k j x7674)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7676 x7673)))))))
                        g7671))))
                   g7670)))
               (any? (lambda (v) (letrec* ((g7678 #t)) g7678)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7680)))))
                   g7679)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x-cnd7682
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7683
                                (letrec*
                                 ((x7684
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7684)))))
                              g7683))
                           g7562))))
                      (if x-cnd7682
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7681)))
               (meta (lambda (v) (letrec* ((g7685 v)) g7685)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7686
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7688
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7689
                                 (letrec*
                                  ((x7690
                                    (letrec*
                                     ((x7692
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7691
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7692 x7691)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7690)))))
                               g7689))))
                          g7688))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7687
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7687))))))
                  g7686)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7693
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7695
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7696
                                 (letrec*
                                  ((x7697
                                    (letrec*
                                     ((x7699
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7698
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7699 x7698)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7697)))))
                               g7696))))
                          g7695))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7694
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7694))))))
                  g7693)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7700
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7702
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7703
                                 (letrec*
                                  ((x7704
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7705
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7706 x7705)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7704)))))
                               g7703))))
                          g7702))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7701
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7701))))))
                  g7700)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7707
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7709
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7710
                                 (letrec*
                                  ((x7711
                                    (letrec*
                                     ((x7713
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7712
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7713 x7712)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7711)))))
                               g7710))))
                          g7709))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7708
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7708))))))
                  g7707)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7714
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7716
                            (lambda (g7593)
                              (letrec*
                               ((g7717
                                 (letrec*
                                  ((x7718
                                    (letrec*
                                     ((x7719
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7719)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7718)))))
                               g7717))))
                          g7716))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7715
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7715))))))
                  g7714)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7720
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7722
                            (lambda (g7599)
                              (letrec*
                               ((g7723
                                 (letrec*
                                  ((x7724
                                    (letrec*
                                     ((x7725
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7725)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7724)))))
                               g7723))))
                          g7722))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7721
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7721))))))
                  g7720)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7726
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7728
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7729
                                 (letrec*
                                  ((x7730
                                    (letrec*
                                     ((x7732
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7731
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7732 x7731)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7730)))))
                               g7729))))
                          g7728))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7727
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7727))))))
                  g7726)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7733
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7735
                            (lambda (g7612)
                              (letrec*
                               ((g7736
                                 (letrec*
                                  ((x7737
                                    (letrec*
                                     ((x7738
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7738)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7737)))))
                               g7736))))
                          g7735))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7734
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7734))))))
                  g7733)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7739
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7741
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7742
                                 (letrec*
                                  ((x7743
                                    (letrec*
                                     ((x7745
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7744
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7745 x7744)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7743)))))
                               g7742))))
                          g7741))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7740
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7740))))))
                  g7739)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7746
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7746)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7749)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7748)))))
                   g7747)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7755
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7759))))
                          (x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7757)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7758 x7756)))))))
                   g7752)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7769)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7774))))
                    (g7772
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
                       ((g7775
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7776 res))
                       g7776))))
                   g7772)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (cdaadr
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
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7782)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7781)))))
                   g7780)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7787
                        #f
                        (letrec*
                         ((x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7789 k)))))
                         (if x-cnd7788
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7790)))))))))
                   g7785)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7792)))))
                   g7791)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        ""
                        (letrec*
                         ((x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7800))))
                          (x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7798)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7799 x7797)))))))
                   g7794)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7806
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7806))))
                   g7803)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7810)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7809)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7808)))))
                   g7807)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x-cnd7816
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7816
                        x
                        (letrec*
                         ((x7818
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7817
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7818 x7817)))))))
                   g7813)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7819
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7819)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x-cnd7821
                        (letrec*
                         ((x7822 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7822)))))
                      (if x-cnd7821
                        (letrec*
                         ((x7823 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7823)))
                        #f))))
                   g7820)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7827
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7828 (if val7517 val7517 #f)))
                             g7828)))))
                       g7827))))
                   g7825)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7830
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7830 9)))))
                      (letrec*
                       ((g7831
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7832 10)))))
                            (letrec*
                             ((g7833
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7834
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7834 32))))))
                             g7833)))))
                       g7831))))
                   g7829)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7837)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7836)))))
                   g7835)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7839)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7841 #f)) g7841)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7843)))))
                   g7842)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (letrec*
                      ((x-cnd7847
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7847
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7845)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7849
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7850
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7850
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7851
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7852
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7852
                                       (letrec*
                                        ((x-cnd7853
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7853
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7854
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7855
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7855
                                             (letrec*
                                              ((x-cnd7856
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7856
                                                (letrec*
                                                 ((x-cnd7857
                                                   (letrec*
                                                    ((x7859
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7858
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7859 x7858)))))
                                                 (if x-cnd7857
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7860
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7861 x7860)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7862
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7863
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7863
                                                (letrec*
                                                 ((x-cnd7864
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7864
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7865
                                                       (letrec*
                                                        ((x-cnd7866
                                                          (letrec*
                                                           ((x7867
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
                                                             (= x7867 n)))))
                                                        (if x-cnd7866
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7868
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
                                                                    ((g7869
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7870
                                                                           (letrec*
                                                                            ((x7872
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
                                                                             (x7871
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
                                                                               x7872
                                                                               x7871)))))
                                                                         (if x-cnd7870
                                                                           (letrec*
                                                                            ((x7873
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
                                                                               x7873)))
                                                                           #f)))))
                                                                    g7869))))
                                                                g7868))))
                                                           (letrec*
                                                            ((g7874
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7874))
                                                          #f))))
                                                     g7865))
                                                   #f))
                                                #f)))))
                                         g7862)))))
                                   g7854)))))
                             g7851)))))
                       g7849))))
                   g7848)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (letrec*
                         ((x7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7878)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7877)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7882)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7881)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7883
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7883)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7887
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7888 (if val7526 val7526 #f)))
                             g7888)))))
                       g7887))))
                   g7885)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7892))))
                    (g7890
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7893))))
                    (g7891
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
                       ((g7894
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7895 res))
                       g7895))))
                   g7891)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7896)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7900))))
                    (g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7901))))
                    (g7899
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7902
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7902))))
                   g7899)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7904
                        (letrec*
                         ((x7905
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7905)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7904)))))
                   g7903)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7909)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7908)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7907)))))
                   g7906)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (letrec*
                         ((x7912
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7911)))))
                   g7910)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7914)))))
                   g7913)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7921)))))
                   g7918)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (letrec*
                         ((x7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7925)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7924)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7923)))))
                   g7922)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7927)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7929
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7929)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7932)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7933
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7933)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (letrec*
                      ((x-cnd7937
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7937
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7940
                           (letrec*
                            ((x7941
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7941))))
                          (x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7939)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7940 x7938)))))))
                   g7935)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (letrec*
                         ((x7944
                           (letrec*
                            ((x7945
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7945)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7944)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7943)))))
                   g7942)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7947
                        (letrec*
                         ((x7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7949)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7948)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7947)))))
                   g7946)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7952))))
                    (g7951
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7953)))))
                   g7951)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7957)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7956)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7955)))))
                   g7954)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7963
                        (letrec*
                         ((g7964
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7964)
                        (letrec*
                         ((x-cnd7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7966)))))
                         (if x-cnd7965
                           (letrec*
                            ((g7967
                              (letrec*
                               ((x7968
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7968)))))
                            g7967)
                           (letrec*
                            ((x-cnd7969
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7970)))))
                            (if x-cnd7969
                              (letrec*
                               ((g7971
                                 (letrec*
                                  ((x7973
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7972
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7973 x7972)))))
                               g7971)
                              (letrec*
                               ((x-cnd7974
                                 (letrec*
                                  ((x7975
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7975)))))
                               (if x-cnd7974
                                 (letrec*
                                  ((g7976
                                    (letrec*
                                     ((x7979
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7978
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7977
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7979 x7978 x7977)))))
                                  g7976)
                                 (letrec*
                                  ((x-cnd7980
                                    (letrec*
                                     ((x7981
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7981)))))
                                  (if x-cnd7980
                                    (letrec*
                                     ((g7982
                                       (letrec*
                                        ((x7986
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7985
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7984
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7983
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7986 x7985 x7984 x7983)))))
                                     g7982)
                                    (letrec*
                                     ((x-cnd7987
                                       (letrec*
                                        ((x7988
                                          (letrec*
                                           ((x7989
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7989)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7988)))))
                                     (if x-cnd7987
                                       (letrec*
                                        ((g7990
                                          (letrec*
                                           ((x7996
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7995
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7994
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7993
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7991
                                             (letrec*
                                              ((x7992
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7992)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7996
                                              x7995
                                              x7994
                                              x7993
                                              x7991)))))
                                        g7990)
                                       (letrec*
                                        ((x-cnd7997
                                          (letrec*
                                           ((x7998
                                             (letrec*
                                              ((x7999
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7999)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7998)))))
                                        (if x-cnd7997
                                          (letrec*
                                           ((g8000
                                             (letrec*
                                              ((x8008
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8007
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8006
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8005
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8003
                                                (letrec*
                                                 ((x8004
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8004))))
                                               (x8001
                                                (letrec*
                                                 ((x8002
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8002)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8008
                                                 x8007
                                                 x8006
                                                 x8005
                                                 x8003
                                                 x8001)))))
                                           g8000)
                                          (letrec*
                                           ((x-cnd8009
                                             (letrec*
                                              ((x8010
                                                (letrec*
                                                 ((x8011
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8011)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8010)))))
                                           (if x-cnd8009
                                             (letrec*
                                              ((g8012
                                                (letrec*
                                                 ((x8022
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8021
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8020
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8019
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8017
                                                   (letrec*
                                                    ((x8018
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8018))))
                                                  (x8015
                                                   (letrec*
                                                    ((x8016
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8016))))
                                                  (x8013
                                                   (letrec*
                                                    ((x8014
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8014)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8022
                                                    x8021
                                                    x8020
                                                    x8019
                                                    x8017
                                                    x8015
                                                    x8013)))))
                                              g8012)
                                             (letrec*
                                              ((g8023
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8023)))))))))))))))))))
                   g7960)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x8026
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8026))))
                    (g8025
                     (letrec*
                      ((x-cnd8027
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8027
                        #f
                        (letrec*
                         ((x-cnd8028
                           (letrec*
                            ((x8029
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8029 e)))))
                         (if x-cnd8028
                           l
                           (letrec*
                            ((x8030
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8030)))))))))
                   g8025)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8031
                     (letrec*
                      ((x8032
                        (letrec*
                         ((x8033
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8034)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8033)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8032)))))
                   g8031)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8036
                        (letrec*
                         ((x8037
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8038)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8037)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8036)))))
                   g8035)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8039
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8039)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x8042
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8042))))
                    (g8041
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8041)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8044
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8044))))
                   g8043)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8046
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8046)))))
                   g8045)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8048
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8048
                           (letrec*
                            ((x8049
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8049)))
                           #f))))
                      (letrec*
                       ((g8050
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8050))))
                   g8047)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8052
                        (letrec*
                         ((x8053
                           (letrec*
                            ((x8054
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8054)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8053)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8052)))))
                   g8051)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x-cnd8056
                        (letrec*
                         ((x8057 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8057 c)))))
                      (if x-cnd8056
                        (letrec*
                         ((x8058 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8058)))
                        #f))))
                   g8055)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8061
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8061))))
                    (g8060
                     (letrec*
                      ((x-cnd8062
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8062
                        #f
                        (letrec*
                         ((x-cnd8063
                           (letrec*
                            ((x8064
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8064 k)))))
                         (if x-cnd8063
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8065
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8065)))))))))
                   g8060)))
               (not (lambda (x) (letrec* ((g8066 (if x #f #t))) g8066)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8067
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8067)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8068
                     (letrec*
                      ((x8070
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8070))))
                    (g8069
                     (letrec*
                      ((x-cnd8071
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8071
                        #f
                        (letrec*
                         ((x-cnd8072
                           (letrec*
                            ((x8073
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8073 e)))))
                         (if x-cnd8072
                           l
                           (letrec*
                            ((x8074
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8074)))))))))
                   g8069)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8075
                     (letrec*
                      ((x8076
                        (letrec*
                         ((x8077
                           (letrec*
                            ((x8078
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8078)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8077)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8076)))))
                   g8075)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8081))))
                    (g8080
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8082
                             (letrec*
                              ((x-cnd8083
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8083
                                0
                                (letrec*
                                 ((x8084
                                   (letrec*
                                    ((x8085
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8085)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8084)))))))
                           g8082))))
                      (letrec*
                       ((g8086
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8086))))
                   g8080)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8087
                     (letrec*
                      ((x8090
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8090))))
                    (g8088
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8091))))
                    (g8089
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8092
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8092))))
                   g8089)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8094
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8094)))))
                   g8093)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8096
                        (letrec*
                         ((x8097
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8097)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8096)))))
                   g8095)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8100))))
                    (g8099
                     (letrec*
                      ((x-cnd8101
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8101
                        #f
                        (letrec*
                         ((x-cnd8102
                           (letrec*
                            ((x8103
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8103 k)))))
                         (if x-cnd8102
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8104
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8104)))))))))
                   g8099)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8106
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8106)))))
                   g8105)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8110))))
                    (g8108
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8111))))
                    (g8109
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8112)))))
                   g8109)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8114
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8114))))
                   g8113)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((x-cnd8120
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8120
                        #t
                        (letrec*
                         ((x-cnd8121
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8121
                           (letrec*
                            ((g8122
                              (letrec*
                               ((x8124
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8124))))
                             (g8123
                              (letrec*
                               ((x8125
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8125)))))
                            g8123)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8117)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8128))))
                    (g8127
                     (letrec*
                      ((x-cnd8129
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8129
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8127)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8133))))
                    (g8131
                     (letrec*
                      ((x8134
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8134))))
                    (g8132
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8135
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8135))))
                   g8132)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8137
                        (letrec*
                         ((x8138
                           (letrec*
                            ((x8139
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8139)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8138)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8137)))))
                   g8136)))
               (newline (lambda () (letrec* ((g8140 #f)) g8140)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8143
                        (letrec*
                         ((x8144
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8144))))
                       (x8142
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8143 x8142)))))
                   g8141)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8147))))
                    (g8146
                     (letrec*
                      ((x8148
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8148)))))
                   g8146)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8153))))
                    (g8150
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8154))))
                    (g8151
                     (letrec*
                      ((x8155
                        (letrec*
                         ((x8156
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8156)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8155))))
                    (g8152
                     (letrec*
                      ((x-cnd8157
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8157
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8159
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8158
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8159 x8158)))))))
                   g8152)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8160
                     (letrec*
                      ((x-cnd8161
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8161
                        a
                        (letrec*
                         ((x8162
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8162)))))))
                   g8160)))
               (append
                (lambda (xs ys)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x-cnd8164
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8164
                        ys
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car xs)))
                          (x8165
                           (letrec*
                            ((x8166
                              (begin
                                (write '(funapp 1482 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1482 56))
                              (display "\n")
                              (append x8166 ys)))))
                         (begin
                           (write '(funapp 1483 26))
                           (display "\n")
                           (cons x8167 x8165)))))))
                   g8163))))
              (letrec*
               ((g8168
                 (begin
                   (write '(funapp 1487 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1488 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8171
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1492 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1492 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1492 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1492 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8172
                              (begin
                                (write '(funapp 1495 27))
                                (display "\n")
                                ((lambda (j7627 k7628 f7629)
                                   (letrec*
                                    ((g8173
                                      (lambda (g7625 g7626)
                                        (letrec*
                                         ((g8174
                                           (letrec*
                                            ((x8180
                                              (begin
                                                (write '(funapp 1502 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8175
                                              (letrec*
                                               ((x8178
                                                 (letrec*
                                                  ((x8179
                                                    (begin
                                                      (write '(funapp 1507 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1508 45))
                                                    (display "\n")
                                                    (x8179
                                                     j7627
                                                     k7628
                                                     g7625))))
                                                (x8176
                                                 (letrec*
                                                  ((x8177
                                                    (begin
                                                      (write '(funapp 1511 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1512 45))
                                                    (display "\n")
                                                    (x8177
                                                     j7627
                                                     k7628
                                                     g7626)))))
                                               (begin
                                                 (write '(funapp 1513 42))
                                                 (display "\n")
                                                 (f7629 x8178 x8176)))))
                                            (begin
                                              (write '(funapp 1514 39))
                                              (display "\n")
                                              (x8180 j7627 k7628 x8175)))))
                                         g8174))))
                                    g8173))
                                 xj7623
                                 xk7624
                                 append))))
                            g8172)))
                         (x8170 (input))
                         (x8169 (input)))
                        (begin
                          (write '(funapp 1523 21))
                          (display "\n")
                          (x8171 x8170 x8169)))))))))
               g8168))))
           g7643))))
       g7641)))
    g7640)))
