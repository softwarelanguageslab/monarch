(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7634 #t)) g7634)))
    (meta (lambda (v) (letrec* ((g7635 v)) g7635)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7636
          (letrec*
           ((g7637
             (letrec*
              ((x-e7638 lst))
              (letrec*
               ((v1804 x-e7638))
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
                   ((x-cnd7639
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7639
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
           g7637)))
        g7636)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7640 (lambda (v) (letrec* ((g7641 v)) g7641)))) g7640)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7642
          (letrec*
           ((x7643 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7643)))))
        g7642))))
   (letrec*
    ((g7644
      (letrec*
       ((g7645
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
           ((g7646 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7647
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7648
                     (lambda (k j lst)
                       (letrec*
                        ((g7649
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7650
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7650))
                             lst))))
                        g7649))))
                   g7648)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7652
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7651)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7654
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7653)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7656
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7655)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7659 #t)) g7659)) g7544))))
                      (if x-cnd7658
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7657)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7662 #t)) g7662)) g7547))))
                      (if x-cnd7661
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7660)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7664
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7663)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7666
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7665)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7668
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7667)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7670
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7669)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7671
                     (lambda (k j v)
                       (letrec*
                        ((g7672
                          (letrec*
                           ((x-cnd7673
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7673
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7672))))
                   g7671)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7674
                     (lambda (k j v)
                       (letrec*
                        ((g7675
                          (letrec*
                           ((x-cnd7676
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7676
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7680
                                (letrec*
                                 ((x7681
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7681))))
                               (x7677
                                (letrec*
                                 ((x7679
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7678
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7679 k j x7678)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7680 x7677)))))))
                        g7675))))
                   g7674)))
               (any? (lambda (v) (letrec* ((g7682 #t)) g7682)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7684)))))
                   g7683)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7687
                                (letrec*
                                 ((x7688
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7688)))))
                              g7687))
                           g7562))))
                      (if x-cnd7686
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7685)))
               (meta (lambda (v) (letrec* ((g7689 v)) g7689)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7690
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7692
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7693
                                 (letrec*
                                  ((x7694
                                    (letrec*
                                     ((x7696
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7695
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7696 x7695)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7694)))))
                               g7693))))
                          g7692))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7691
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7691))))))
                  g7690)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7697
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7699
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7700
                                 (letrec*
                                  ((x7701
                                    (letrec*
                                     ((x7703
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7702
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7703 x7702)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7701)))))
                               g7700))))
                          g7699))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7698
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7698))))))
                  g7697)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7704
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7706
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7707
                                 (letrec*
                                  ((x7708
                                    (letrec*
                                     ((x7710
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7709
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7710 x7709)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7708)))))
                               g7707))))
                          g7706))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7705
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7705))))))
                  g7704)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7711
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7713
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7714
                                 (letrec*
                                  ((x7715
                                    (letrec*
                                     ((x7717
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7716
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7717 x7716)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7715)))))
                               g7714))))
                          g7713))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7712
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7712))))))
                  g7711)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7718
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7720
                            (lambda (g7593)
                              (letrec*
                               ((g7721
                                 (letrec*
                                  ((x7722
                                    (letrec*
                                     ((x7723
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7723)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7722)))))
                               g7721))))
                          g7720))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7719
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7719))))))
                  g7718)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7724
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7726
                            (lambda (g7599)
                              (letrec*
                               ((g7727
                                 (letrec*
                                  ((x7728
                                    (letrec*
                                     ((x7729
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7729)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7728)))))
                               g7727))))
                          g7726))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7725
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7725))))))
                  g7724)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7730
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7732
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7733
                                 (letrec*
                                  ((x7734
                                    (letrec*
                                     ((x7736
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7735
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7736 x7735)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7734)))))
                               g7733))))
                          g7732))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7731
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7731))))))
                  g7730)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7737
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7739
                            (lambda (g7612)
                              (letrec*
                               ((g7740
                                 (letrec*
                                  ((x7741
                                    (letrec*
                                     ((x7742
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7742)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7741)))))
                               g7740))))
                          g7739))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7738
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7738))))))
                  g7737)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7743
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7745
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7746
                                 (letrec*
                                  ((x7747
                                    (letrec*
                                     ((x7749
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7748
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7749 x7748)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7747)))))
                               g7746))))
                          g7745))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7744
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7744))))))
                  g7743)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7750
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7750)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7753)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((x-cnd7759
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7759
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7763))))
                          (x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7761)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7762 x7760)))))))
                   g7756)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (cadadr
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7768)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7773)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7777))))
                    (g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7778))))
                    (g7776
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
                       ((g7779
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7780 res))
                       g7780))))
                   g7776)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7787)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7785)))))
                   g7784)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7790))))
                    (g7789
                     (letrec*
                      ((x-cnd7791
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7791
                        #f
                        (letrec*
                         ((x-cnd7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7793 k)))))
                         (if x-cnd7792
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7794)))))))))
                   g7789)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7796)))))
                   g7795)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7800
                        ""
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7804))))
                          (x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7802)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7803 x7801)))))))
                   g7798)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7810
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7810))))
                   g7807)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7812
                        (letrec*
                         ((x7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7814)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7813)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7812)))))
                   g7811)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7820
                        x
                        (letrec*
                         ((x7822
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7821
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7822 x7821)))))))
                   g7817)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7823
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7823)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x-cnd7825
                        (letrec*
                         ((x7826 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7826)))))
                      (if x-cnd7825
                        (letrec*
                         ((x7827 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7827)))
                        #f))))
                   g7824)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7831
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7832 (if val7517 val7517 #f)))
                             g7832)))))
                       g7831))))
                   g7829)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7834
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7834 9)))))
                      (letrec*
                       ((g7835
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7836
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7836 10)))))
                            (letrec*
                             ((g7837
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7838
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7838 32))))))
                             g7837)))))
                       g7835))))
                   g7833)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7840
                        (letrec*
                         ((x7841
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7841)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7840)))))
                   g7839)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7843)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7845 #f)) g7845)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7847)))))
                   g7846)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (letrec*
                      ((x-cnd7851
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7851
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7849)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7853
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7854
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7854
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7855
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7856
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7856
                                       (letrec*
                                        ((x-cnd7857
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7857
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7858
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7859
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7859
                                             (letrec*
                                              ((x-cnd7860
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7860
                                                (letrec*
                                                 ((x-cnd7861
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7862
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7863 x7862)))))
                                                 (if x-cnd7861
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7864
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7865 x7864)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7866
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7867
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7867
                                                (letrec*
                                                 ((x-cnd7868
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7868
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7869
                                                       (letrec*
                                                        ((x-cnd7870
                                                          (letrec*
                                                           ((x7871
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
                                                             (= x7871 n)))))
                                                        (if x-cnd7870
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7872
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
                                                                    ((g7873
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7874
                                                                           (letrec*
                                                                            ((x7876
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
                                                                             (x7875
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
                                                                               x7876
                                                                               x7875)))))
                                                                         (if x-cnd7874
                                                                           (letrec*
                                                                            ((x7877
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
                                                                               x7877)))
                                                                           #f)))))
                                                                    g7873))))
                                                                g7872))))
                                                           (letrec*
                                                            ((g7878
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7878))
                                                          #f))))
                                                     g7869))
                                                   #f))
                                                #f)))))
                                         g7866)))))
                                   g7858)))))
                             g7855)))))
                       g7853))))
                   g7852)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7882)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7881)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7880)))))
                   g7879)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7886)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7885)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7884)))))
                   g7883)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7887
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7887)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7891
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7892 (if val7526 val7526 #f)))
                             g7892)))))
                       g7891))))
                   g7889)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7896))))
                    (g7894
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7897))))
                    (g7895
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
                       ((g7898
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7899 res))
                       g7899))))
                   g7895)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7900
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7900)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7904))))
                    (g7902
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7906
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7906))))
                   g7903)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (letrec*
                         ((x7909
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7909)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7908)))))
                   g7907)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (letrec*
                         ((x7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7913)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7912)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7911)))))
                   g7910)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7916)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7915)))))
                   g7914)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7919)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7918)))))
                   g7917)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7923))))
                    (g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7925)))))
                   g7922)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (letrec*
                         ((x7928
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7929)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7928)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7927)))))
                   g7926)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7932))))
                    (g7931
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7931)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7933
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7933)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (letrec*
                         ((x7936
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7936)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7935)))))
                   g7934)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7937
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7937)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7944
                           (letrec*
                            ((x7945
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7945))))
                          (x7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7943)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7944 x7942)))))))
                   g7939)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7949)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7948)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7947)))))
                   g7946)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7953)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7952)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7951)))))
                   g7950)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7956))))
                    (g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7957)))))
                   g7955)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (letrec*
                         ((x7960
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7961)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7960)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7959)))))
                   g7958)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x-cnd7967
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7967
                        (letrec*
                         ((g7968
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7968)
                        (letrec*
                         ((x-cnd7969
                           (letrec*
                            ((x7970
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7970)))))
                         (if x-cnd7969
                           (letrec*
                            ((g7971
                              (letrec*
                               ((x7972
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7972)))))
                            g7971)
                           (letrec*
                            ((x-cnd7973
                              (letrec*
                               ((x7974
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7974)))))
                            (if x-cnd7973
                              (letrec*
                               ((g7975
                                 (letrec*
                                  ((x7977
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7976
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7977 x7976)))))
                               g7975)
                              (letrec*
                               ((x-cnd7978
                                 (letrec*
                                  ((x7979
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7979)))))
                               (if x-cnd7978
                                 (letrec*
                                  ((g7980
                                    (letrec*
                                     ((x7983
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7982
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7981
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7983 x7982 x7981)))))
                                  g7980)
                                 (letrec*
                                  ((x-cnd7984
                                    (letrec*
                                     ((x7985
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7985)))))
                                  (if x-cnd7984
                                    (letrec*
                                     ((g7986
                                       (letrec*
                                        ((x7990
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7989
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7988
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7987
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7990 x7989 x7988 x7987)))))
                                     g7986)
                                    (letrec*
                                     ((x-cnd7991
                                       (letrec*
                                        ((x7992
                                          (letrec*
                                           ((x7993
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7993)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7992)))))
                                     (if x-cnd7991
                                       (letrec*
                                        ((g7994
                                          (letrec*
                                           ((x8000
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7999
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7998
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7997
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7995
                                             (letrec*
                                              ((x7996
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7996)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8000
                                              x7999
                                              x7998
                                              x7997
                                              x7995)))))
                                        g7994)
                                       (letrec*
                                        ((x-cnd8001
                                          (letrec*
                                           ((x8002
                                             (letrec*
                                              ((x8003
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8003)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8002)))))
                                        (if x-cnd8001
                                          (letrec*
                                           ((g8004
                                             (letrec*
                                              ((x8012
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8011
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8010
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8009
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8007
                                                (letrec*
                                                 ((x8008
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8008))))
                                               (x8005
                                                (letrec*
                                                 ((x8006
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8006)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8012
                                                 x8011
                                                 x8010
                                                 x8009
                                                 x8007
                                                 x8005)))))
                                           g8004)
                                          (letrec*
                                           ((x-cnd8013
                                             (letrec*
                                              ((x8014
                                                (letrec*
                                                 ((x8015
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8015)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8014)))))
                                           (if x-cnd8013
                                             (letrec*
                                              ((g8016
                                                (letrec*
                                                 ((x8026
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8025
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8024
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8023
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8021
                                                   (letrec*
                                                    ((x8022
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8022))))
                                                  (x8019
                                                   (letrec*
                                                    ((x8020
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8020))))
                                                  (x8017
                                                   (letrec*
                                                    ((x8018
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8018)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8026
                                                    x8025
                                                    x8024
                                                    x8023
                                                    x8021
                                                    x8019
                                                    x8017)))))
                                              g8016)
                                             (letrec*
                                              ((g8027
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8027)))))))))))))))))))
                   g7964)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8030))))
                    (g8029
                     (letrec*
                      ((x-cnd8031
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8031
                        #f
                        (letrec*
                         ((x-cnd8032
                           (letrec*
                            ((x8033
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8033 e)))))
                         (if x-cnd8032
                           l
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8034)))))))))
                   g8029)))
               (cddddr
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8038)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8037)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8036)))))
                   g8035)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8042)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8041)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8040)))))
                   g8039)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8043
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8043)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8046
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8046))))
                    (g8045
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8045)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8048
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8048))))
                   g8047)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8050
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8050)))))
                   g8049)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8052
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8052
                           (letrec*
                            ((x8053
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8053)))
                           #f))))
                      (letrec*
                       ((g8054
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8054))))
                   g8051)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x8056
                        (letrec*
                         ((x8057
                           (letrec*
                            ((x8058
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8058)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8057)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8056)))))
                   g8055)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x-cnd8060
                        (letrec*
                         ((x8061 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8061 c)))))
                      (if x-cnd8060
                        (letrec*
                         ((x8062 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8062)))
                        #f))))
                   g8059)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x8065
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8065))))
                    (g8064
                     (letrec*
                      ((x-cnd8066
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8066
                        #f
                        (letrec*
                         ((x-cnd8067
                           (letrec*
                            ((x8068
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8068 k)))))
                         (if x-cnd8067
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8069
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8069)))))))))
                   g8064)))
               (not (lambda (x) (letrec* ((g8070 (if x #f #t))) g8070)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8071
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8071)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8072
                     (letrec*
                      ((x8074
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8074))))
                    (g8073
                     (letrec*
                      ((x-cnd8075
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8075
                        #f
                        (letrec*
                         ((x-cnd8076
                           (letrec*
                            ((x8077
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8077 e)))))
                         (if x-cnd8076
                           l
                           (letrec*
                            ((x8078
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8078)))))))))
                   g8073)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8080
                        (letrec*
                         ((x8081
                           (letrec*
                            ((x8082
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8082)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8081)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8080)))))
                   g8079)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8083
                     (letrec*
                      ((x8085
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8085))))
                    (g8084
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8086
                             (letrec*
                              ((x-cnd8087
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8087
                                0
                                (letrec*
                                 ((x8088
                                   (letrec*
                                    ((x8089
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8089)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8088)))))))
                           g8086))))
                      (letrec*
                       ((g8090
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8090))))
                   g8084)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8094
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8094))))
                    (g8092
                     (letrec*
                      ((x8095
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8095))))
                    (g8093
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8096
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8096))))
                   g8093)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8098)))))
                   g8097)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8099
                     (letrec*
                      ((x8100
                        (letrec*
                         ((x8101
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8101)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8100)))))
                   g8099)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8104))))
                    (g8103
                     (letrec*
                      ((x-cnd8105
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8105
                        #f
                        (letrec*
                         ((x-cnd8106
                           (letrec*
                            ((x8107
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8107 k)))))
                         (if x-cnd8106
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8108
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8108)))))))))
                   g8103)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8110)))))
                   g8109)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8111
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8114))))
                    (g8112
                     (letrec*
                      ((x8115
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8115))))
                    (g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8116)))))
                   g8113)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8118
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8118))))
                   g8117)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8122
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8122))))
                    (g8120
                     (letrec*
                      ((x8123
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8123))))
                    (g8121
                     (letrec*
                      ((x-cnd8124
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8124
                        #t
                        (letrec*
                         ((x-cnd8125
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8125
                           (letrec*
                            ((g8126
                              (letrec*
                               ((x8128
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8128))))
                             (g8127
                              (letrec*
                               ((x8129
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8129)))))
                            g8127)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8121)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8132
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8132))))
                    (g8131
                     (letrec*
                      ((x-cnd8133
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8133
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8131)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8137))))
                    (g8135
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8138))))
                    (g8136
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8139
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8139))))
                   g8136)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8141
                        (letrec*
                         ((x8142
                           (letrec*
                            ((x8143
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8143)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8142)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8141)))))
                   g8140)))
               (newline (lambda () (letrec* ((g8144 #f)) g8144)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8148))))
                       (x8146
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8147 x8146)))))
                   g8145)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8151
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8151))))
                    (g8150
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8152)))))
                   g8150)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8157
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8157))))
                    (g8154
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8158))))
                    (g8155
                     (letrec*
                      ((x8159
                        (letrec*
                         ((x8160
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8160)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x-cnd8161
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8161
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8163
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8162
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8163 x8162)))))))
                   g8156)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x-cnd8165
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8165
                        a
                        (letrec*
                         ((x8166
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8166)))))))
                   g8164)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g8167
                     (letrec*
                      ((x-cnd8168
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8168
                        z
                        (letrec*
                         ((x8170
                           (letrec*
                            ((x8171
                              (begin
                                (write '(funapp 1480 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1480 61))
                              (display "\n")
                              (f z x8171))))
                          (x8169
                           (begin
                             (write '(funapp 1481 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (foldl f x8170 x8169)))))))
                   g8167)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g8172
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1489 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g8173
                         (letrec*
                          ((x-cnd8174
                            (begin
                              (write '(funapp 1493 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd8174
                            n
                            (begin
                              (write '(funapp 1494 43))
                              (display "\n")
                              (randpos rand))))))
                       g8173))))
                   g8172)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x-cnd8176
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8176
                        empty
                        (letrec*
                         ((x8179
                           (begin
                             (write '(funapp 1506 34))
                             (display "\n")
                             (randpos rand)))
                          (x8177
                           (letrec*
                            ((x8178
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (mk-list rand x8178)))))
                         (begin
                           (write '(funapp 1509 26))
                           (display "\n")
                           (cons x8179 x8177)))))))
                   g8175)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8180
                     (letrec*
                      ((x8181
                        (begin
                          (write '(funapp 1515 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1515 58))
                        (display "\n")
                        (foldl / m x8181)))))
                   g8180))))
              (letrec*
               ((g8182
                 (begin
                   (write '(funapp 1519 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1520 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8186
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1524 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1524 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1524 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1524 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8187
                              (begin
                                (write '(funapp 1527 27))
                                (display "\n")
                                ((lambda (j7628 k7629 f7630)
                                   (letrec*
                                    ((g8188
                                      (lambda (g7625 g7626 g7627)
                                        (letrec*
                                         ((g8189
                                           (letrec*
                                            ((x8190
                                              (letrec*
                                               ((x8193
                                                 (begin
                                                   (write '(funapp 1537 44))
                                                   (display "\n")
                                                   ((lambda (j7631 k7632 f7633)
                                                      (letrec*
                                                       ((g8194
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8195
                                                              (letrec*
                                                               ((x8196
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1544
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7633))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1545
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7631
                                                                  k7632
                                                                  x8196)))))
                                                            g8195))))
                                                       g8194))
                                                    j7628
                                                    k7629
                                                    g7625)))
                                                (x8192
                                                 (begin
                                                   (write '(funapp 1555 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7628
                                                    k7629
                                                    g7626)))
                                                (x8191
                                                 (begin
                                                   (write '(funapp 1557 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7628
                                                    k7629
                                                    g7627))))
                                               (begin
                                                 (write '(funapp 1558 42))
                                                 (display "\n")
                                                 (f7630 x8193 x8192 x8191)))))
                                            (begin
                                              (write '(funapp 1559 39))
                                              (display "\n")
                                              (real?/c j7628 k7629 x8190)))))
                                         g8189))))
                                    g8188))
                                 xj7623
                                 xk7624
                                 main))))
                            g8187)))
                         (x8185 (input))
                         (x8184 (input))
                         (x8183 (input)))
                        (begin
                          (write '(funapp 1569 21))
                          (display "\n")
                          (x8186 x8185 x8184 x8183)))))))))
               g8182))))
           g7647))))
       g7645)))
    g7644)))
