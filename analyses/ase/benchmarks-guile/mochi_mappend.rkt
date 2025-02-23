(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7641 #t)) g7641)))
    (meta (lambda (v) (letrec* ((g7642 v)) g7642)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7643
          (letrec*
           ((g7644
             (letrec*
              ((x-e7645 lst))
              (letrec*
               ((v1804 x-e7645))
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
                   ((x-cnd7646
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7646
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
           g7644)))
        g7643)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7647 (lambda (v) (letrec* ((g7648 v)) g7648)))) g7647)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7649
          (letrec*
           ((x7650 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7650)))))
        g7649))))
   (letrec*
    ((g7651
      (letrec*
       ((g7652
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
           ((g7653 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7654
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7655
                     (lambda (k j lst)
                       (letrec*
                        ((g7656
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7657
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7657))
                             lst))))
                        g7656))))
                   g7655)))
               (real?/c
                (lambda (g7533 g7534 g7535)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7535))))
                      (if x-cnd7659
                        g7535
                        (begin
                          (write '(blame g7533 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7533)))))))
                   g7658)))
               (boolean?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7538))))
                      (if x-cnd7661
                        g7538
                        (begin
                          (write '(blame g7536 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7660)))
               (number?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7541))))
                      (if x-cnd7663
                        g7541
                        (begin
                          (write '(blame g7539 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7662)))
               (any/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7666 #t)) g7666)) g7544))))
                      (if x-cnd7665
                        g7544
                        (begin
                          (write '(blame g7542 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7664)))
               (any?/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7669 #t)) g7669)) g7547))))
                      (if x-cnd7668
                        g7547
                        (begin
                          (write '(blame g7545 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7667)))
               (cons?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7550))))
                      (if x-cnd7671
                        g7550
                        (begin
                          (write '(blame g7548 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7670)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7673
                        g7553
                        (begin
                          (write '(blame g7551 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7672)))
               (integer?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x-cnd7675
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7556))))
                      (if x-cnd7675
                        g7556
                        (begin
                          (write '(blame g7554 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7674)))
               (symbol?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7559))))
                      (if x-cnd7677
                        g7559
                        (begin
                          (write '(blame g7557 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7676)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7678
                     (lambda (k j v)
                       (letrec*
                        ((g7679
                          (letrec*
                           ((x-cnd7680
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7680
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7679))))
                   g7678)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7681
                     (lambda (k j v)
                       (letrec*
                        ((g7682
                          (letrec*
                           ((x-cnd7683
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7683
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7687
                                (letrec*
                                 ((x7688
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7688))))
                               (x7684
                                (letrec*
                                 ((x7686
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7685
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7686 k j x7685)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7687 x7684)))))))
                        g7682))))
                   g7681)))
               (any? (lambda (v) (letrec* ((g7689 #t)) g7689)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7691)))))
                   g7690)))
               (nonzero?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x-cnd7693
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7694
                                (letrec*
                                 ((x7695
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7695)))))
                              g7694))
                           g7562))))
                      (if x-cnd7693
                        g7562
                        (begin
                          (write '(blame g7560 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7692)))
               (meta (lambda (v) (letrec* ((g7696 v)) g7696)))
               (+
                (letrec*
                 ((xj7563
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7564
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7697
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g7699
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g7700
                                 (letrec*
                                  ((x7701
                                    (letrec*
                                     ((x7703
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7565)))
                                      (x7702
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7569 x7703 x7702)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7567 k7568 x7701)))))
                               g7700))))
                          g7699))
                       xj7563
                       xk7564
                       (lambda (a b)
                         (letrec*
                          ((g7698
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7698))))))
                  g7697)))
               (-
                (letrec*
                 ((xj7570
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7571
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7704
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7574 k7575 f7576)
                         (letrec*
                          ((g7706
                            (lambda (g7572 g7573)
                              (letrec*
                               ((g7707
                                 (letrec*
                                  ((x7708
                                    (letrec*
                                     ((x7710
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7572)))
                                      (x7709
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7574 k7575 g7573))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7576 x7710 x7709)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7574 k7575 x7708)))))
                               g7707))))
                          g7706))
                       xj7570
                       xk7571
                       (lambda (a b)
                         (letrec*
                          ((g7705
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7705))))))
                  g7704)))
               (*
                (letrec*
                 ((xj7577
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7578
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7711
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7581 k7582 f7583)
                         (letrec*
                          ((g7713
                            (lambda (g7579 g7580)
                              (letrec*
                               ((g7714
                                 (letrec*
                                  ((x7715
                                    (letrec*
                                     ((x7717
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7579)))
                                      (x7716
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7581 k7582 g7580))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7583 x7717 x7716)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7581 k7582 x7715)))))
                               g7714))))
                          g7713))
                       xj7577
                       xk7578
                       (lambda (a b)
                         (letrec*
                          ((g7712
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7712))))))
                  g7711)))
               (/
                (letrec*
                 ((xj7584
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7585
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7718
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7588 k7589 f7590)
                         (letrec*
                          ((g7720
                            (lambda (g7586 g7587)
                              (letrec*
                               ((g7721
                                 (letrec*
                                  ((x7722
                                    (letrec*
                                     ((x7724
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7586)))
                                      (x7723
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7588 k7589 g7587))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7590 x7724 x7723)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7588 k7589 x7722)))))
                               g7721))))
                          g7720))
                       xj7584
                       xk7585
                       (lambda (a b)
                         (letrec*
                          ((g7719
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7719))))))
                  g7718)))
               (car
                (letrec*
                 ((xj7591
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7592
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7725
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7594 k7595 f7596)
                         (letrec*
                          ((g7727
                            (lambda (g7593)
                              (letrec*
                               ((g7728
                                 (letrec*
                                  ((x7729
                                    (letrec*
                                     ((x7730
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7594 k7595 g7593))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7596 x7730)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7594 k7595 x7729)))))
                               g7728))))
                          g7727))
                       xj7591
                       xk7592
                       (lambda (p)
                         (letrec*
                          ((g7726
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7726))))))
                  g7725)))
               (cdr
                (letrec*
                 ((xj7597
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7598
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7731
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7600 k7601 f7602)
                         (letrec*
                          ((g7733
                            (lambda (g7599)
                              (letrec*
                               ((g7734
                                 (letrec*
                                  ((x7735
                                    (letrec*
                                     ((x7736
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7600 k7601 g7599))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7602 x7736)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7600 k7601 x7735)))))
                               g7734))))
                          g7733))
                       xj7597
                       xk7598
                       (lambda (p)
                         (letrec*
                          ((g7732
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7732))))))
                  g7731)))
               (cons
                (letrec*
                 ((xj7603
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7604
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7737
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7607 k7608 f7609)
                         (letrec*
                          ((g7739
                            (lambda (g7605 g7606)
                              (letrec*
                               ((g7740
                                 (letrec*
                                  ((x7741
                                    (letrec*
                                     ((x7743
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7605)))
                                      (x7742
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7607 k7608 g7606))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7609 x7743 x7742)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7607 k7608 x7741)))))
                               g7740))))
                          g7739))
                       xj7603
                       xk7604
                       (lambda (a b)
                         (letrec*
                          ((g7738
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7738))))))
                  g7737)))
               (vector-ref
                (letrec*
                 ((xj7610
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7611
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7744
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7613 k7614 f7615)
                         (letrec*
                          ((g7746
                            (lambda (g7612)
                              (letrec*
                               ((g7747
                                 (letrec*
                                  ((x7748
                                    (letrec*
                                     ((x7749
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7613 k7614 g7612))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7615 x7749)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7613 k7614 x7748)))))
                               g7747))))
                          g7746))
                       xj7610
                       xk7611
                       (lambda (v i)
                         (letrec*
                          ((g7745
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7745))))))
                  g7744)))
               (vector-set!
                (letrec*
                 ((xj7616
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7617
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7750
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7620 k7621 f7622)
                         (letrec*
                          ((g7752
                            (lambda (g7618 g7619)
                              (letrec*
                               ((g7753
                                 (letrec*
                                  ((x7754
                                    (letrec*
                                     ((x7756
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7620 k7621 g7618)))
                                      (x7755
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7620 k7621 g7619))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7622 x7756 x7755)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7620 k7621 x7754)))))
                               g7753))))
                          g7752))
                       xj7616
                       xk7617
                       (lambda (vec i v)
                         (letrec*
                          ((g7751
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7751))))))
                  g7750)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7757
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7757)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7770))))
                          (x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7768)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7769 x7767)))))))
                   g7763)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7772)))))
                   g7771)))
               (cadadr
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7780)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7778)))))
                   g7777)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7785))))
                    (g7783
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
                       ((g7786
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7787 res))
                       g7787))))
                   g7783)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7790)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7792)))))
                   g7791)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7800 k)))))
                         (if x-cnd7799
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7801)))))))))
                   g7796)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7803)))))
                   g7802)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7806))))
                    (g7805
                     (letrec*
                      ((x-cnd7807
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7807
                        ""
                        (letrec*
                         ((x7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7811))))
                          (x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7809)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7810 x7808)))))))
                   g7805)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((val7515
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7817
                         (if val7515
                           val7515
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7817))))
                   g7814)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7819
                        (letrec*
                         ((x7820
                           (letrec*
                            ((x7821
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7821)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7820)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7819)))))
                   g7818)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7827
                        x
                        (letrec*
                         ((x7829
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7828
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7829 x7828)))))))
                   g7824)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7830
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7830)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x-cnd7832
                        (letrec*
                         ((x7833 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7833)))))
                      (if x-cnd7832
                        (letrec*
                         ((x7834 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7834)))
                        #f))))
                   g7831)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7837))))
                    (g7836
                     (letrec*
                      ((val7516
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7838
                         (if val7516
                           val7516
                           (letrec*
                            ((val7517
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7839 (if val7517 val7517 #f)))
                             g7839)))))
                       g7838))))
                   g7836)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((val7518
                        (letrec*
                         ((x7841
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7841 9)))))
                      (letrec*
                       ((g7842
                         (if val7518
                           val7518
                           (letrec*
                            ((val7519
                              (letrec*
                               ((x7843
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7843 10)))))
                            (letrec*
                             ((g7844
                               (if val7519
                                 val7519
                                 (letrec*
                                  ((x7845
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7845 32))))))
                             g7844)))))
                       g7842))))
                   g7840)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7847
                        (letrec*
                         ((x7848
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7848)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7847)))))
                   g7846)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7850)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7852 #f)) g7852)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7854)))))
                   g7853)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7857))))
                    (g7856
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7858
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7856)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((val7520
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7860
                         (if val7520
                           val7520
                           (letrec*
                            ((val7521
                              (letrec*
                               ((x-cnd7861
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7861
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7862
                               (if val7521
                                 val7521
                                 (letrec*
                                  ((val7522
                                    (letrec*
                                     ((x-cnd7863
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7863
                                       (letrec*
                                        ((x-cnd7864
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7864
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7865
                                     (if val7522
                                       val7522
                                       (letrec*
                                        ((val7523
                                          (letrec*
                                           ((x-cnd7866
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7866
                                             (letrec*
                                              ((x-cnd7867
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7867
                                                (letrec*
                                                 ((x-cnd7868
                                                   (letrec*
                                                    ((x7870
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7869
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7870 x7869)))))
                                                 (if x-cnd7868
                                                   (letrec*
                                                    ((x7872
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7871
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7872 x7871)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7873
                                           (if val7523
                                             val7523
                                             (letrec*
                                              ((x-cnd7874
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7874
                                                (letrec*
                                                 ((x-cnd7875
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7875
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7876
                                                       (letrec*
                                                        ((x-cnd7877
                                                          (letrec*
                                                           ((x7878
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
                                                             (= x7878 n)))))
                                                        (if x-cnd7877
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7879
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
                                                                    ((g7880
                                                                      (if val7524
                                                                        val7524
                                                                        (letrec*
                                                                         ((x-cnd7881
                                                                           (letrec*
                                                                            ((x7883
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
                                                                             (x7882
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
                                                                               x7883
                                                                               x7882)))))
                                                                         (if x-cnd7881
                                                                           (letrec*
                                                                            ((x7884
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
                                                                               x7884)))
                                                                           #f)))))
                                                                    g7880))))
                                                                g7879))))
                                                           (letrec*
                                                            ((g7885
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7885))
                                                          #f))))
                                                     g7876))
                                                   #f))
                                                #f)))))
                                         g7873)))))
                                   g7865)))))
                             g7862)))))
                       g7860))))
                   g7859)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7889)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7888)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7887)))))
                   g7886)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (letrec*
                         ((x7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7893)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7892)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7894)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7898
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7899 (if val7526 val7526 #f)))
                             g7899)))))
                       g7898))))
                   g7896)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7903))))
                    (g7901
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7904))))
                    (g7902
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
                       ((g7905
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7906 res))
                       g7906))))
                   g7902)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7907
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7907)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7912))))
                    (g7910
                     (letrec*
                      ((val7527
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7913
                         (if val7527
                           val7527
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7913))))
                   g7910)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7916)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7915)))))
                   g7914)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7920)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7919)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7918)))))
                   g7917)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7923)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7926)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7932)))))
                   g7929)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (letrec*
                         ((x7935
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7936)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7935)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7934)))))
                   g7933)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7939))))
                    (g7938
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7938)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7940
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7940)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (letrec*
                         ((x7943
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7943)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7942)))))
                   g7941)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7944
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7944)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7947))))
                    (g7946
                     (letrec*
                      ((x-cnd7948
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7948
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7951
                           (letrec*
                            ((x7952
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7952))))
                          (x7949
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7950)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7951 x7949)))))))
                   g7946)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7956)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7955)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7954)))))
                   g7953)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (letrec*
                         ((x7959
                           (letrec*
                            ((x7960
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7960)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7959)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7958)))))
                   g7957)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7963))))
                    (g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7964)))))
                   g7962)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (letrec*
                         ((x7967
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7968)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7967)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7974
                        (letrec*
                         ((g7975
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7975)
                        (letrec*
                         ((x-cnd7976
                           (letrec*
                            ((x7977
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7977)))))
                         (if x-cnd7976
                           (letrec*
                            ((g7978
                              (letrec*
                               ((x7979
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7979)))))
                            g7978)
                           (letrec*
                            ((x-cnd7980
                              (letrec*
                               ((x7981
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7981)))))
                            (if x-cnd7980
                              (letrec*
                               ((g7982
                                 (letrec*
                                  ((x7984
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7983
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7984 x7983)))))
                               g7982)
                              (letrec*
                               ((x-cnd7985
                                 (letrec*
                                  ((x7986
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7986)))))
                               (if x-cnd7985
                                 (letrec*
                                  ((g7987
                                    (letrec*
                                     ((x7990
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7989
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7988
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7990 x7989 x7988)))))
                                  g7987)
                                 (letrec*
                                  ((x-cnd7991
                                    (letrec*
                                     ((x7992
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7992)))))
                                  (if x-cnd7991
                                    (letrec*
                                     ((g7993
                                       (letrec*
                                        ((x7997
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7996
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7995
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7994
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7997 x7996 x7995 x7994)))))
                                     g7993)
                                    (letrec*
                                     ((x-cnd7998
                                       (letrec*
                                        ((x7999
                                          (letrec*
                                           ((x8000
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x8000)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7999)))))
                                     (if x-cnd7998
                                       (letrec*
                                        ((g8001
                                          (letrec*
                                           ((x8007
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8006
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8005
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8004
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8002
                                             (letrec*
                                              ((x8003
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8003)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x8007
                                              x8006
                                              x8005
                                              x8004
                                              x8002)))))
                                        g8001)
                                       (letrec*
                                        ((x-cnd8008
                                          (letrec*
                                           ((x8009
                                             (letrec*
                                              ((x8010
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8010)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8009)))))
                                        (if x-cnd8008
                                          (letrec*
                                           ((g8011
                                             (letrec*
                                              ((x8019
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8018
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8017
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8016
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8014
                                                (letrec*
                                                 ((x8015
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8015))))
                                               (x8012
                                                (letrec*
                                                 ((x8013
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8013)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x8019
                                                 x8018
                                                 x8017
                                                 x8016
                                                 x8014
                                                 x8012)))))
                                           g8011)
                                          (letrec*
                                           ((x-cnd8020
                                             (letrec*
                                              ((x8021
                                                (letrec*
                                                 ((x8022
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8022)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8021)))))
                                           (if x-cnd8020
                                             (letrec*
                                              ((g8023
                                                (letrec*
                                                 ((x8033
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8032
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8031
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8030
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8028
                                                   (letrec*
                                                    ((x8029
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8029))))
                                                  (x8026
                                                   (letrec*
                                                    ((x8027
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8027))))
                                                  (x8024
                                                   (letrec*
                                                    ((x8025
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8025)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x8033
                                                    x8032
                                                    x8031
                                                    x8030
                                                    x8028
                                                    x8026
                                                    x8024)))))
                                              g8023)
                                             (letrec*
                                              ((g8034
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8034)))))))))))))))))))
                   g7971)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8037
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8037))))
                    (g8036
                     (letrec*
                      ((x-cnd8038
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8038
                        #f
                        (letrec*
                         ((x-cnd8039
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8040 e)))))
                         (if x-cnd8039
                           l
                           (letrec*
                            ((x8041
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x8041)))))))))
                   g8036)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8042
                     (letrec*
                      ((x8043
                        (letrec*
                         ((x8044
                           (letrec*
                            ((x8045
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8045)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8044)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x8043)))))
                   g8042)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x8047
                        (letrec*
                         ((x8048
                           (letrec*
                            ((x8049
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8049)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8048)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8047)))))
                   g8046)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8050
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g8050)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8053
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8053))))
                    (g8052
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8052)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((val7528
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8055
                         (if val7528
                           val7528
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8055))))
                   g8054)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8056
                     (letrec*
                      ((x8057
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x8057)))))
                   g8056)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8058
                     (letrec*
                      ((val7529
                        (letrec*
                         ((x-cnd8059
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8059
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8060)))
                           #f))))
                      (letrec*
                       ((g8061
                         (if val7529
                           val7529
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g8061))))
                   g8058)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8062
                     (letrec*
                      ((x8063
                        (letrec*
                         ((x8064
                           (letrec*
                            ((x8065
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8065)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8064)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x8063)))))
                   g8062)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x-cnd8067
                        (letrec*
                         ((x8068 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8068 c)))))
                      (if x-cnd8067
                        (letrec*
                         ((x8069 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x8069)))
                        #f))))
                   g8066)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8070
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8072))))
                    (g8071
                     (letrec*
                      ((x-cnd8073
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8073
                        #f
                        (letrec*
                         ((x-cnd8074
                           (letrec*
                            ((x8075
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8075 k)))))
                         (if x-cnd8074
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8076
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8076)))))))))
                   g8071)))
               (not (lambda (x) (letrec* ((g8077 (if x #f #t))) g8077)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8078
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g8078)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8081))))
                    (g8080
                     (letrec*
                      ((x-cnd8082
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8082
                        #f
                        (letrec*
                         ((x-cnd8083
                           (letrec*
                            ((x8084
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8084 e)))))
                         (if x-cnd8083
                           l
                           (letrec*
                            ((x8085
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x8085)))))))))
                   g8080)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8087
                        (letrec*
                         ((x8088
                           (letrec*
                            ((x8089
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8089)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8088)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x8087)))))
                   g8086)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8090
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x8092))))
                    (g8091
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8093
                             (letrec*
                              ((x-cnd8094
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8094
                                0
                                (letrec*
                                 ((x8095
                                   (letrec*
                                    ((x8096
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8096)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8095)))))))
                           g8093))))
                      (letrec*
                       ((g8097
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g8097))))
                   g8091)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((x8102
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8102))))
                    (g8100
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8103
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8103))))
                   g8100)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x8105)))))
                   g8104)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8107
                        (letrec*
                         ((x8108
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8108)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x8107)))))
                   g8106)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8111))))
                    (g8110
                     (letrec*
                      ((x-cnd8112
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8112
                        #f
                        (letrec*
                         ((x-cnd8113
                           (letrec*
                            ((x8114
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8114 k)))))
                         (if x-cnd8113
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8115
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x8115)))))))))
                   g8110)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8116
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x8117)))))
                   g8116)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8121))))
                    (g8119
                     (letrec*
                      ((x8122
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8122))))
                    (g8120
                     (letrec*
                      ((x8123
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x8123)))))
                   g8120)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8125
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8125))))
                   g8124)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8129
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8129))))
                    (g8127
                     (letrec*
                      ((x8130
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8130))))
                    (g8128
                     (letrec*
                      ((x-cnd8131
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8131
                        #t
                        (letrec*
                         ((x-cnd8132
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8132
                           (letrec*
                            ((g8133
                              (letrec*
                               ((x8135
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8135))))
                             (g8134
                              (letrec*
                               ((x8136
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8136)))))
                            g8134)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g8128)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8137
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8139))))
                    (g8138
                     (letrec*
                      ((x-cnd8140
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8140
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8138)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8144))))
                    (g8142
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8145))))
                    (g8143
                     (letrec*
                      ((val7532
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8146
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8146))))
                   g8143)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8148
                        (letrec*
                         ((x8149
                           (letrec*
                            ((x8150
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8150)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8149)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x8148)))))
                   g8147)))
               (newline (lambda () (letrec* ((g8151 #f)) g8151)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x8154
                        (letrec*
                         ((x8155
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8155))))
                       (x8153
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x8154 x8153)))))
                   g8152)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8156
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8158))))
                    (g8157
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x8159)))))
                   g8157)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8160
                     (letrec*
                      ((x8164
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8164))))
                    (g8161
                     (letrec*
                      ((x8165
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8165))))
                    (g8162
                     (letrec*
                      ((x8166
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8167)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8166))))
                    (g8163
                     (letrec*
                      ((x-cnd8168
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8168
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8169
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x8170 x8169)))))))
                   g8163)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8171
                     (letrec*
                      ((x-cnd8172
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8172
                        a
                        (letrec*
                         ((x8173
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x8173)))))))
                   g8171)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x-cnd8175
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8175
                        ys
                        (letrec*
                         ((x8178
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car xs)))
                          (x8176
                           (letrec*
                            ((x8177
                              (begin
                                (write '(funapp 1482 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1482 56))
                              (display "\n")
                              (mappend x8177 ys)))))
                         (begin
                           (write '(funapp 1483 26))
                           (display "\n")
                           (cons x8178 x8176)))))))
                   g8174)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g8179
                     (letrec*
                      ((x-cnd8180
                        (begin
                          (write '(funapp 1490 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8180
                        empty
                        (letrec*
                         ((x8183
                           (letrec*
                            ((x8184
                              (begin
                                (write '(funapp 1494 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1494 62))
                              (display "\n")
                              (f x8184))))
                          (x8181
                           (letrec*
                            ((x8182
                              (begin
                                (write '(funapp 1496 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1496 56))
                              (display "\n")
                              (map-append f x8182)))))
                         (begin
                           (write '(funapp 1497 26))
                           (display "\n")
                           (mappend x8183 x8181)))))))
                   g8179))))
              (letrec*
               ((g8185
                 (begin
                   (write '(funapp 1501 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1502 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8188
                          (letrec*
                           ((xj7623
                             (begin
                               (write '(funapp 1506 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1506 37))
                                  (display "\n")
                                  'module))))
                            (xk7624
                             (begin
                               (write '(funapp 1506 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1506 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8189
                              (begin
                                (write '(funapp 1509 27))
                                (display "\n")
                                ((lambda (j7627 k7628 f7629)
                                   (letrec*
                                    ((g8190
                                      (lambda (g7625 g7626)
                                        (letrec*
                                         ((g8191
                                           (letrec*
                                            ((x8201
                                              (begin
                                                (write '(funapp 1516 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8192
                                              (letrec*
                                               ((x8195
                                                 (begin
                                                   (write '(funapp 1520 44))
                                                   (display "\n")
                                                   ((lambda (j7631 k7632 f7633)
                                                      (letrec*
                                                       ((g8196
                                                         (lambda (g7630)
                                                           (letrec*
                                                            ((g8197
                                                              (letrec*
                                                               ((x8200
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1527
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8198
                                                                 (letrec*
                                                                  ((x8199
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1531
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7631
                                                                       k7632
                                                                       g7630))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1535
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7633
                                                                     x8199)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1536
                                                                    56))
                                                                 (display "\n")
                                                                 (x8200
                                                                  j7631
                                                                  k7632
                                                                  x8198)))))
                                                            g8197))))
                                                       g8196))
                                                    j7627
                                                    k7628
                                                    g7625)))
                                                (x8193
                                                 (letrec*
                                                  ((x8194
                                                    (begin
                                                      (write '(funapp 1547 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1548 45))
                                                    (display "\n")
                                                    (x8194
                                                     j7627
                                                     k7628
                                                     g7626)))))
                                               (begin
                                                 (write '(funapp 1549 42))
                                                 (display "\n")
                                                 (f7629 x8195 x8193)))))
                                            (begin
                                              (write '(funapp 1550 39))
                                              (display "\n")
                                              (x8201 j7627 k7628 x8192)))))
                                         g8191))))
                                    g8190))
                                 xj7623
                                 xk7624
                                 map-append))))
                            g8189)))
                         (x8187 (input))
                         (x8186 (input)))
                        (begin
                          (write '(funapp 1559 21))
                          (display "\n")
                          (x8188 x8187 x8186)))
                       (letrec*
                        ((x8204
                          (letrec*
                           ((xj7634
                             (begin
                               (write '(funapp 1563 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1563 37))
                                  (display "\n")
                                  'module))))
                            (xk7635
                             (begin
                               (write '(funapp 1563 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1563 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8205
                              (begin
                                (write '(funapp 1566 27))
                                (display "\n")
                                ((lambda (j7638 k7639 f7640)
                                   (letrec*
                                    ((g8206
                                      (lambda (g7636 g7637)
                                        (letrec*
                                         ((g8207
                                           (letrec*
                                            ((x8213
                                              (begin
                                                (write '(funapp 1573 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8208
                                              (letrec*
                                               ((x8211
                                                 (letrec*
                                                  ((x8212
                                                    (begin
                                                      (write '(funapp 1578 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1579 45))
                                                    (display "\n")
                                                    (x8212
                                                     j7638
                                                     k7639
                                                     g7636))))
                                                (x8209
                                                 (letrec*
                                                  ((x8210
                                                    (begin
                                                      (write '(funapp 1582 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1583 45))
                                                    (display "\n")
                                                    (x8210
                                                     j7638
                                                     k7639
                                                     g7637)))))
                                               (begin
                                                 (write '(funapp 1584 42))
                                                 (display "\n")
                                                 (f7640 x8211 x8209)))))
                                            (begin
                                              (write '(funapp 1585 39))
                                              (display "\n")
                                              (x8213 j7638 k7639 x8208)))))
                                         g8207))))
                                    g8206))
                                 xj7634
                                 xk7635
                                 mappend))))
                            g8205)))
                         (x8203 (input))
                         (x8202 (input)))
                        (begin
                          (write '(funapp 1594 21))
                          (display "\n")
                          (x8204 x8203 x8202)))))))))
               g8185))))
           g7654))))
       g7652)))
    g7651)))
