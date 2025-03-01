(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7682 #t)) g7682)))
    (meta (lambda (v) (letrec* ((g7683 v)) g7683)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7684
          (letrec*
           ((g7685
             (letrec*
              ((x-e7686 lst))
              (letrec*
               ((v1804 x-e7686))
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
                   ((x-cnd7687
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7687
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
           g7685)))
        g7684)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7688 (lambda (v) (letrec* ((g7689 v)) g7689)))) g7688)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7690
          (letrec*
           ((x7691 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7691)))))
        g7690))))
   (letrec*
    ((g7692
      (letrec*
       ((g7693
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7694
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7694)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7695
                 (letrec*
                  ((x7697
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7697))))
                (g7696
                 (letrec*
                  ((val7517
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7698
                     (if val7517
                       val7517
                       (letrec*
                        ((val7518
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7699 (if val7518 val7518 #f))) g7699)))))
                   g7698))))
               g7696)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7700
                 (letrec*
                  ((x7702
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7702))))
                (g7701
                 (letrec*
                  ((val7519
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7703
                     (if val7519
                       val7519
                       (letrec*
                        ((val7520
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7704 (if val7520 val7520 #f))) g7704)))))
                   g7703))))
               g7701)))
           (>
            (lambda (x y)
              (letrec*
               ((g7705
                 (letrec*
                  ((x7707
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7707))))
                (g7706
                 (letrec*
                  ((x7708
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7708)))))
               g7706)))
           (orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-> >)
           (orig-< <)
           (orig->= >=)
           (orig-<= <=)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g7709 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7710
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7711
                     (lambda (k j lst)
                       (letrec*
                        ((g7712
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7713
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7713))
                             lst))))
                        g7712))))
                   g7711)))
               (real?/c
                (lambda (g7536 g7537 g7538)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x-cnd7715
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7538))))
                      (if x-cnd7715
                        g7538
                        (begin
                          (write '(blame g7536 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7536)))))))
                   g7714)))
               (boolean?/c
                (lambda (g7539 g7540 g7541)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x-cnd7717
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7541))))
                      (if x-cnd7717
                        g7541
                        (begin
                          (write '(blame g7539 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7539)))))))
                   g7716)))
               (number?/c
                (lambda (g7542 g7543 g7544)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x-cnd7719
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7544))))
                      (if x-cnd7719
                        g7544
                        (begin
                          (write '(blame g7542 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7542)))))))
                   g7718)))
               (any/c
                (lambda (g7545 g7546 g7547)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x-cnd7721
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7722 #t)) g7722)) g7547))))
                      (if x-cnd7721
                        g7547
                        (begin
                          (write '(blame g7545 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7545)))))))
                   g7720)))
               (any?/c
                (lambda (g7548 g7549 g7550)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x-cnd7724
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7725 #t)) g7725)) g7550))))
                      (if x-cnd7724
                        g7550
                        (begin
                          (write '(blame g7548 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7548)))))))
                   g7723)))
               (cons?/c
                (lambda (g7551 g7552 g7553)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x-cnd7727
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7553))))
                      (if x-cnd7727
                        g7553
                        (begin
                          (write '(blame g7551 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7551)))))))
                   g7726)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7728
                     (lambda (k j v)
                       (letrec*
                        ((g7729
                          (letrec*
                           ((x7732
                             (letrec*
                              ((x7733
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7733))))
                            (x7730
                             (letrec*
                              ((x7731
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7731)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7732 x7730)))))
                        g7729))))
                   g7728)))
               (pair?/c
                (lambda (g7554 g7555 g7556)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x-cnd7735
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7556))))
                      (if x-cnd7735
                        g7556
                        (begin
                          (write '(blame g7554 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7554)))))))
                   g7734)))
               (integer?/c
                (lambda (g7557 g7558 g7559)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7559))))
                      (if x-cnd7737
                        g7559
                        (begin
                          (write '(blame g7557 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7557)))))))
                   g7736)))
               (symbol?/c
                (lambda (g7560 g7561 g7562)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x-cnd7739
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7562))))
                      (if x-cnd7739
                        g7562
                        (begin
                          (write '(blame g7560 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7560)))))))
                   g7738)))
               (string?/c
                (lambda (g7563 g7564 g7565)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x-cnd7741
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7565))))
                      (if x-cnd7741
                        g7565
                        (begin
                          (write '(blame g7563 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7563)))))))
                   g7740)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7742
                     (lambda (k j v)
                       (letrec*
                        ((g7743
                          (letrec*
                           ((x-cnd7744
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7744
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7743))))
                   g7742)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7745
                     (lambda (k j v)
                       (letrec*
                        ((g7746
                          (letrec*
                           ((val7521
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7747
                              (if val7521
                                val7521
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7747))))
                        g7746))))
                   g7745)))
               (null?/c
                (lambda (g7566 g7567 g7568)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x-cnd7749
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7568))))
                      (if x-cnd7749
                        g7568
                        (begin
                          (write '(blame g7566 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7566)))))))
                   g7748)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7750
                     (lambda (k j v)
                       (letrec*
                        ((g7751
                          (letrec*
                           ((x-cnd7752
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7752
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7756
                                (letrec*
                                 ((x7757
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7757))))
                               (x7753
                                (letrec*
                                 ((x7755
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7754
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7755 k j x7754)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7756 x7753)))))))
                        g7751))))
                   g7750)))
               (any? (lambda (v) (letrec* ((g7758 #t)) g7758)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7760)))))
                   g7759)))
               (nonzero?/c
                (lambda (g7569 g7570 g7571)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x-cnd7762
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7763
                                (letrec*
                                 ((x7764
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7764)))))
                              g7763))
                           g7571))))
                      (if x-cnd7762
                        g7571
                        (begin
                          (write '(blame g7569 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7569)))))))
                   g7761)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7765
                     (lambda (g7572 g7573 g7574)
                       (letrec*
                        ((g7766
                          (letrec*
                           ((x-cnd7767
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7768
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7768))
                                g7574))))
                           (if x-cnd7767
                             g7574
                             (begin
                               (write '(blame g7572 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7572)))))))
                        g7766))))
                   g7765)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7769
                     (lambda (g7575 g7576 g7577)
                       (letrec*
                        ((g7770
                          (letrec*
                           ((x-cnd7771
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7772
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7772))
                                g7577))))
                           (if x-cnd7771
                             g7577
                             (begin
                               (write '(blame g7575 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7575)))))))
                        g7770))))
                   g7769)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7773
                     (lambda (g7578 g7579 g7580)
                       (letrec*
                        ((g7774
                          (letrec*
                           ((x-cnd7775
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7776
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7776))
                                g7580))))
                           (if x-cnd7775
                             g7580
                             (begin
                               (write '(blame g7578 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7578)))))))
                        g7774))))
                   g7773)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7777
                     (lambda (g7581 g7582 g7583)
                       (letrec*
                        ((g7778
                          (letrec*
                           ((x-cnd7779
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7780
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7780))
                                g7583))))
                           (if x-cnd7779
                             g7583
                             (begin
                               (write '(blame g7581 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7581)))))))
                        g7778))))
                   g7777)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7781
                     (lambda (g7584 g7585 g7586)
                       (letrec*
                        ((g7782
                          (letrec*
                           ((x-cnd7783
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7784
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7784))
                                g7586))))
                           (if x-cnd7783
                             g7586
                             (begin
                               (write '(blame g7584 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7584)))))))
                        g7782))))
                   g7781)))
               (meta (lambda (v) (letrec* ((g7785 v)) g7785)))
               (+
                (letrec*
                 ((xj7587
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7588
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7786
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7591 k7592 f7593)
                         (letrec*
                          ((g7788
                            (lambda (g7589 g7590)
                              (letrec*
                               ((g7789
                                 (letrec*
                                  ((x7790
                                    (letrec*
                                     ((x7792
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7591 k7592 g7589)))
                                      (x7791
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7591 k7592 g7590))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7593 x7792 x7791)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7591 k7592 x7790)))))
                               g7789))))
                          g7788))
                       xj7587
                       xk7588
                       (lambda (a b)
                         (letrec*
                          ((g7787
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7787))))))
                  g7786)))
               (-
                (letrec*
                 ((xj7594
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7595
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7793
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7598 k7599 f7600)
                         (letrec*
                          ((g7795
                            (lambda (g7596 g7597)
                              (letrec*
                               ((g7796
                                 (letrec*
                                  ((x7797
                                    (letrec*
                                     ((x7799
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7598 k7599 g7596)))
                                      (x7798
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7598 k7599 g7597))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7600 x7799 x7798)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7598 k7599 x7797)))))
                               g7796))))
                          g7795))
                       xj7594
                       xk7595
                       (lambda (a b)
                         (letrec*
                          ((g7794
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7794))))))
                  g7793)))
               (*
                (letrec*
                 ((xj7601
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7602
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7800
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7605 k7606 f7607)
                         (letrec*
                          ((g7802
                            (lambda (g7603 g7604)
                              (letrec*
                               ((g7803
                                 (letrec*
                                  ((x7804
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7605 k7606 g7603)))
                                      (x7805
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7605 k7606 g7604))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7607 x7806 x7805)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7605 k7606 x7804)))))
                               g7803))))
                          g7802))
                       xj7601
                       xk7602
                       (lambda (a b)
                         (letrec*
                          ((g7801
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7801))))))
                  g7800)))
               (<
                (letrec*
                 ((xj7608
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7609
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7807
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7612 k7613 f7614)
                         (letrec*
                          ((g7809
                            (lambda (g7610 g7611)
                              (letrec*
                               ((g7810
                                 (letrec*
                                  ((x7811
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7612 k7613 g7610)))
                                      (x7812
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7612 k7613 g7611))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7614 x7813 x7812)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7612 k7613 x7811)))))
                               g7810))))
                          g7809))
                       xj7608
                       xk7609
                       (lambda (a b)
                         (letrec*
                          ((g7808
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7808))))))
                  g7807)))
               (>
                (letrec*
                 ((xj7615
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7616
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7814
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7619 k7620 f7621)
                         (letrec*
                          ((g7816
                            (lambda (g7617 g7618)
                              (letrec*
                               ((g7817
                                 (letrec*
                                  ((x7818
                                    (letrec*
                                     ((x7820
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7619 k7620 g7617)))
                                      (x7819
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7619 k7620 g7618))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7621 x7820 x7819)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7619 k7620 x7818)))))
                               g7817))))
                          g7816))
                       xj7615
                       xk7616
                       (lambda (a b)
                         (letrec*
                          ((g7815
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7815))))))
                  g7814)))
               (<=
                (letrec*
                 ((xj7622
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7623
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7821
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7626 k7627 f7628)
                         (letrec*
                          ((g7823
                            (lambda (g7624 g7625)
                              (letrec*
                               ((g7824
                                 (letrec*
                                  ((x7825
                                    (letrec*
                                     ((x7827
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7626 k7627 g7624)))
                                      (x7826
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7626 k7627 g7625))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7628 x7827 x7826)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7626 k7627 x7825)))))
                               g7824))))
                          g7823))
                       xj7622
                       xk7623
                       (lambda (a b)
                         (letrec*
                          ((g7822
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7822))))))
                  g7821)))
               (>=
                (letrec*
                 ((xj7629
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7630
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7828
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7633 k7634 f7635)
                         (letrec*
                          ((g7830
                            (lambda (g7631 g7632)
                              (letrec*
                               ((g7831
                                 (letrec*
                                  ((x7832
                                    (letrec*
                                     ((x7834
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7633 k7634 g7631)))
                                      (x7833
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7633 k7634 g7632))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7635 x7834 x7833)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7633 k7634 x7832)))))
                               g7831))))
                          g7830))
                       xj7629
                       xk7630
                       (lambda (a b)
                         (letrec*
                          ((g7829
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7829))))))
                  g7828)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7835
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7835)))
               (/
                (letrec*
                 ((xj7636
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7637
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7836
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7640 k7641 f7642)
                         (letrec*
                          ((g7838
                            (lambda (g7638 g7639)
                              (letrec*
                               ((g7839
                                 (letrec*
                                  ((x7840
                                    (letrec*
                                     ((x7842
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7640 k7641 g7638)))
                                      (x7841
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7640 k7641 g7639))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7642 x7842 x7841)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7640 k7641 x7840)))))
                               g7839))))
                          g7838))
                       xj7636
                       xk7637
                       (lambda (a b)
                         (letrec*
                          ((g7837
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7837))))))
                  g7836)))
               (car
                (letrec*
                 ((xj7643
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7644
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7843
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7646 k7647 f7648)
                         (letrec*
                          ((g7845
                            (lambda (g7645)
                              (letrec*
                               ((g7846
                                 (letrec*
                                  ((x7847
                                    (letrec*
                                     ((x7848
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7646 k7647 g7645))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7648 x7848)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7646 k7647 x7847)))))
                               g7846))))
                          g7845))
                       xj7643
                       xk7644
                       (lambda (p)
                         (letrec*
                          ((g7844
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7844))))))
                  g7843)))
               (cdr
                (letrec*
                 ((xj7649
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7650
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7849
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7652 k7653 f7654)
                         (letrec*
                          ((g7851
                            (lambda (g7651)
                              (letrec*
                               ((g7852
                                 (letrec*
                                  ((x7853
                                    (letrec*
                                     ((x7854
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7652 k7653 g7651))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7654 x7854)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7652 k7653 x7853)))))
                               g7852))))
                          g7851))
                       xj7649
                       xk7650
                       (lambda (p)
                         (letrec*
                          ((g7850
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7850))))))
                  g7849)))
               (cons
                (letrec*
                 ((xj7655
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7656
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7855
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7659 k7660 f7661)
                         (letrec*
                          ((g7857
                            (lambda (g7657 g7658)
                              (letrec*
                               ((g7858
                                 (letrec*
                                  ((x7859
                                    (letrec*
                                     ((x7861
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7659 k7660 g7657)))
                                      (x7860
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7659 k7660 g7658))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7661 x7861 x7860)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7659 k7660 x7859)))))
                               g7858))))
                          g7857))
                       xj7655
                       xk7656
                       (lambda (a b)
                         (letrec*
                          ((g7856
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7856))))))
                  g7855)))
               (vector-ref
                (letrec*
                 ((xj7662
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7663
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7862
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7665 k7666 f7667)
                         (letrec*
                          ((g7864
                            (lambda (g7664)
                              (letrec*
                               ((g7865
                                 (letrec*
                                  ((x7866
                                    (letrec*
                                     ((x7867
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7665 k7666 g7664))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7667 x7867)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7665 k7666 x7866)))))
                               g7865))))
                          g7864))
                       xj7662
                       xk7663
                       (lambda (v i)
                         (letrec*
                          ((g7863
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7863))))))
                  g7862)))
               (vector-set!
                (letrec*
                 ((xj7668
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7669
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7868
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7672 k7673 f7674)
                         (letrec*
                          ((g7870
                            (lambda (g7670 g7671)
                              (letrec*
                               ((g7871
                                 (letrec*
                                  ((x7872
                                    (letrec*
                                     ((x7874
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7672 k7673 g7670)))
                                      (x7873
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7672 k7673 g7671))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7674 x7874 x7873)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7672 k7673 x7872)))))
                               g7871))))
                          g7870))
                       xj7668
                       xk7669
                       (lambda (vec i v)
                         (letrec*
                          ((g7869
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7869))))))
                  g7868)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (letrec*
                         ((x7877
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7881))))
                    (g7879
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7882))))
                    (g7880
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7887))))
                          (x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7885)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7886 x7884)))))))
                   g7880)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (cadadr
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
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7893)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7897)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7896)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7895)))))
                   g7894)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7901))))
                    (g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 750 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 751 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7903
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7904 res))
                       g7904))))
                   g7900)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7907)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7906)))))
                   g7905)))
               (cdaadr
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
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7911)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7910)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7909)))))
                   g7908)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7917 k)))))
                         (if x-cnd7916
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7918)))))))))
                   g7913)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7920)))))
                   g7919)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((x-cnd7924
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7924
                        ""
                        (letrec*
                         ((x7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7928))))
                          (x7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7926)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7927 x7925)))))))
                   g7922)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((val7522
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7934
                         (if val7522
                           val7522
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7934))))
                   g7931)))
               (cdddar
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
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7938)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7937)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7936)))))
                   g7935)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x-cnd7944
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7944
                        x
                        (letrec*
                         ((x7946
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7945
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7946 x7945)))))))
                   g7941)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7947
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7947)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x-cnd7949
                        (letrec*
                         ((x7950 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7950)))))
                      (if x-cnd7949
                        (letrec*
                         ((x7951 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7951)))
                        #f))))
                   g7948)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((val7523
                        (letrec*
                         ((x7953
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7953 9)))))
                      (letrec*
                       ((g7954
                         (if val7523
                           val7523
                           (letrec*
                            ((val7524
                              (letrec*
                               ((x7955
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7955 10)))))
                            (letrec*
                             ((g7956
                               (if val7524
                                 val7524
                                 (letrec*
                                  ((x7957
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7957 32))))))
                             g7956)))))
                       g7954))))
                   g7952)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (letrec*
                         ((x7960
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7960)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7959)))))
                   g7958)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7963))))
                    (g7962
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7962)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7964
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7964)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7965 #f)) g7965)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7967)))))
                   g7966)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7970))))
                    (g7969
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7971
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7969)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((val7525
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7973
                         (if val7525
                           val7525
                           (letrec*
                            ((val7526
                              (letrec*
                               ((x-cnd7974
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7974
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7975
                               (if val7526
                                 val7526
                                 (letrec*
                                  ((val7527
                                    (letrec*
                                     ((x-cnd7976
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7976
                                       (letrec*
                                        ((x-cnd7977
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7977
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7978
                                     (if val7527
                                       val7527
                                       (letrec*
                                        ((val7528
                                          (letrec*
                                           ((x-cnd7979
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7979
                                             (letrec*
                                              ((x-cnd7980
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7980
                                                (letrec*
                                                 ((x-cnd7981
                                                   (letrec*
                                                    ((x7983
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7982
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7983 x7982)))))
                                                 (if x-cnd7981
                                                   (letrec*
                                                    ((x7985
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7984
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7985 x7984)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7986
                                           (if val7528
                                             val7528
                                             (letrec*
                                              ((x-cnd7987
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7987
                                                (letrec*
                                                 ((x-cnd7988
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7988
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7989
                                                       (letrec*
                                                        ((x-cnd7990
                                                          (letrec*
                                                           ((x7991
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
                                                             (display "\n")
                                                             (= x7991 n)))))
                                                        (if x-cnd7990
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7992
                                                                  (letrec*
                                                                   ((val7529
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1003
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7993
                                                                      (if val7529
                                                                        val7529
                                                                        (letrec*
                                                                         ((x-cnd7994
                                                                           (letrec*
                                                                            ((x7996
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1012
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7995
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1016
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1019
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7996
                                                                               x7995)))))
                                                                         (if x-cnd7994
                                                                           (letrec*
                                                                            ((x7997
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1025
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1028
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7997)))
                                                                           #f)))))
                                                                    g7993))))
                                                                g7992))))
                                                           (letrec*
                                                            ((g7998
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7998))
                                                          #f))))
                                                     g7989))
                                                   #f))
                                                #f)))))
                                         g7986)))))
                                   g7978)))))
                             g7975)))))
                       g7973))))
                   g7972)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (letrec*
                         ((x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x8002)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x8001)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x8000)))))
                   g7999)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (letrec*
                            ((x8006
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x8006)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x8005)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x8004)))))
                   g8003)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8007
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g8007)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x8011))))
                    (g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x8012))))
                    (g8010
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1077 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1078 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8013
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8014 res))
                       g8014))))
                   g8010)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8015
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g8015)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x8019
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x8019))))
                    (g8017
                     (letrec*
                      ((x8020
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x8020))))
                    (g8018
                     (letrec*
                      ((val7530
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8021
                         (if val7530
                           val7530
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8021))))
                   g8018)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8023
                        (letrec*
                         ((x8024
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x8024)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x8023)))))
                   g8022)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x8026
                        (letrec*
                         ((x8027
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x8028)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8027)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x8026)))))
                   g8025)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((x8030
                        (letrec*
                         ((x8031
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x8031)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x8030)))))
                   g8029)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8033
                        (letrec*
                         ((x8034
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x8034)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x8033)))))
                   g8032)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8038
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x8038))))
                    (g8036
                     (letrec*
                      ((x8039
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x8039))))
                    (g8037
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x8040)))))
                   g8037)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x8044)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x8043)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x8042)))))
                   g8041)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x8047))))
                    (g8046
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g8046)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8048
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g8048)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8050
                        (letrec*
                         ((x8051
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x8051)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x8050)))))
                   g8049)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8052
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g8052)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x8055))))
                    (g8054
                     (letrec*
                      ((x-cnd8056
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8056
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x8059
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x8060))))
                          (x8057
                           (letrec*
                            ((x8058
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x8058)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x8059 x8057)))))))
                   g8054)))
               (caaadr
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x8064)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x8063)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x8062)))))
                   g8061)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8066
                        (letrec*
                         ((x8067
                           (letrec*
                            ((x8068
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x8068)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x8067)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x8066)))))
                   g8065)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x8071
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x8071))))
                    (g8070
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x8072)))))
                   g8070)))
               (caadar
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x8076)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x8075)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x8074)))))
                   g8073)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x8080))))
                    (g8078
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x8081))))
                    (g8079
                     (letrec*
                      ((x-cnd8082
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8082
                        (letrec*
                         ((g8083
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g8083)
                        (letrec*
                         ((x-cnd8084
                           (letrec*
                            ((x8085
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x8085)))))
                         (if x-cnd8084
                           (letrec*
                            ((g8086
                              (letrec*
                               ((x8087
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x8087)))))
                            g8086)
                           (letrec*
                            ((x-cnd8088
                              (letrec*
                               ((x8089
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x8089)))))
                            (if x-cnd8088
                              (letrec*
                               ((g8090
                                 (letrec*
                                  ((x8092
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x8091
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x8092 x8091)))))
                               g8090)
                              (letrec*
                               ((x-cnd8093
                                 (letrec*
                                  ((x8094
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x8094)))))
                               (if x-cnd8093
                                 (letrec*
                                  ((g8095
                                    (letrec*
                                     ((x8098
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x8097
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8096
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x8098 x8097 x8096)))))
                                  g8095)
                                 (letrec*
                                  ((x-cnd8099
                                    (letrec*
                                     ((x8100
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x8100)))))
                                  (if x-cnd8099
                                    (letrec*
                                     ((g8101
                                       (letrec*
                                        ((x8105
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x8104
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8103
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8102
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x8105 x8104 x8103 x8102)))))
                                     g8101)
                                    (letrec*
                                     ((x-cnd8106
                                       (letrec*
                                        ((x8107
                                          (letrec*
                                           ((x8108
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x8108)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x8107)))))
                                     (if x-cnd8106
                                       (letrec*
                                        ((g8109
                                          (letrec*
                                           ((x8115
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x8114
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8113
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8112
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8110
                                             (letrec*
                                              ((x8111
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x8111)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x8115
                                              x8114
                                              x8113
                                              x8112
                                              x8110)))))
                                        g8109)
                                       (letrec*
                                        ((x-cnd8116
                                          (letrec*
                                           ((x8117
                                             (letrec*
                                              ((x8118
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x8118)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x8117)))))
                                        (if x-cnd8116
                                          (letrec*
                                           ((g8119
                                             (letrec*
                                              ((x8127
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8126
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8125
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8124
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8122
                                                (letrec*
                                                 ((x8123
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x8123))))
                                               (x8120
                                                (letrec*
                                                 ((x8121
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x8121)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x8127
                                                 x8126
                                                 x8125
                                                 x8124
                                                 x8122
                                                 x8120)))))
                                           g8119)
                                          (letrec*
                                           ((x-cnd8128
                                             (letrec*
                                              ((x8129
                                                (letrec*
                                                 ((x8130
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x8130)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x8129)))))
                                           (if x-cnd8128
                                             (letrec*
                                              ((g8131
                                                (letrec*
                                                 ((x8141
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8140
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8139
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8138
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8136
                                                   (letrec*
                                                    ((x8137
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x8137))))
                                                  (x8134
                                                   (letrec*
                                                    ((x8135
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x8135))))
                                                  (x8132
                                                   (letrec*
                                                    ((x8133
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x8133)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x8141
                                                    x8140
                                                    x8139
                                                    x8138
                                                    x8136
                                                    x8134
                                                    x8132)))))
                                              g8131)
                                             (letrec*
                                              ((g8142
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8142)))))))))))))))))))
                   g8079)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x8145))))
                    (g8144
                     (letrec*
                      ((x-cnd8146
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8146
                        #f
                        (letrec*
                         ((x-cnd8147
                           (letrec*
                            ((x8148
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x8148 e)))))
                         (if x-cnd8147
                           l
                           (letrec*
                            ((x8149
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x8149)))))))))
                   g8144)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8151
                        (letrec*
                         ((x8152
                           (letrec*
                            ((x8153
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x8153)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x8152)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x8151)))))
                   g8150)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8155
                        (letrec*
                         ((x8156
                           (letrec*
                            ((x8157
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x8157)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x8156)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x8155)))))
                   g8154)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8158
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g8158)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x8161))))
                    (g8160
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g8160)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((val7531
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8163
                         (if val7531
                           val7531
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8163))))
                   g8162)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x8165
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x8165)))))
                   g8164)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((val7532
                        (letrec*
                         ((x-cnd8167
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8167
                           (letrec*
                            ((x8168
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x8168)))
                           #f))))
                      (letrec*
                       ((g8169
                         (if val7532
                           val7532
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g8169))))
                   g8166)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8171
                        (letrec*
                         ((x8172
                           (letrec*
                            ((x8173
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x8173)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x8172)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x8171)))))
                   g8170)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x-cnd8175
                        (letrec*
                         ((x8176 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x8176 c)))))
                      (if x-cnd8175
                        (letrec*
                         ((x8177 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x8177)))
                        #f))))
                   g8174)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8178
                     (letrec*
                      ((x8180
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8180))))
                    (g8179
                     (letrec*
                      ((x-cnd8181
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8181
                        #f
                        (letrec*
                         ((x-cnd8182
                           (letrec*
                            ((x8183
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x8183 k)))))
                         (if x-cnd8182
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8184
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x8184)))))))))
                   g8179)))
               (not (lambda (x) (letrec* ((g8185 (if x #f #t))) g8185)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8186
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g8186)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8187
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x8189))))
                    (g8188
                     (letrec*
                      ((x-cnd8190
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8190
                        #f
                        (letrec*
                         ((x-cnd8191
                           (letrec*
                            ((x8192
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x8192 e)))))
                         (if x-cnd8191
                           l
                           (letrec*
                            ((x8193
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x8193)))))))))
                   g8188)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((x8195
                        (letrec*
                         ((x8196
                           (letrec*
                            ((x8197
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x8197)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x8196)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x8195)))))
                   g8194)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x8200
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8200))))
                    (g8199
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8201
                             (letrec*
                              ((x-cnd8202
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8202
                                0
                                (letrec*
                                 ((x8203
                                   (letrec*
                                    ((x8204
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x8204)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x8203)))))))
                           g8201))))
                      (letrec*
                       ((g8205
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g8205))))
                   g8199)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8206
                     (letrec*
                      ((x8209
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8209))))
                    (g8207
                     (letrec*
                      ((x8210
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8210))))
                    (g8208
                     (letrec*
                      ((val7533
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8211
                         (if val7533
                           val7533
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8211))))
                   g8208)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8212
                     (letrec*
                      ((x8213
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x8213)))))
                   g8212)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8214
                     (letrec*
                      ((x8215
                        (letrec*
                         ((x8216
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x8216)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x8215)))))
                   g8214)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8217
                     (letrec*
                      ((x8219
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x8219))))
                    (g8218
                     (letrec*
                      ((x-cnd8220
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8220
                        #f
                        (letrec*
                         ((x-cnd8221
                           (letrec*
                            ((x8222
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x8222 k)))))
                         (if x-cnd8221
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8223
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x8223)))))))))
                   g8218)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8224
                     (letrec*
                      ((x8225
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x8225)))))
                   g8224)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8226
                     (letrec*
                      ((x8229
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8229))))
                    (g8227
                     (letrec*
                      ((x8230
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x8230))))
                    (g8228
                     (letrec*
                      ((x8231
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x8231)))))
                   g8228)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8232
                     (letrec*
                      ((val7534
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8233
                         (if val7534
                           val7534
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8233))))
                   g8232)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8234
                     (letrec*
                      ((x8237
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x8237))))
                    (g8235
                     (letrec*
                      ((x8238
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x8238))))
                    (g8236
                     (letrec*
                      ((x-cnd8239
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8239
                        #t
                        (letrec*
                         ((x-cnd8240
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8240
                           (letrec*
                            ((g8241
                              (letrec*
                               ((x8243
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x8243))))
                             (g8242
                              (letrec*
                               ((x8244
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x8244)))))
                            g8242)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g8236)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8245
                     (letrec*
                      ((x8247
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x8247))))
                    (g8246
                     (letrec*
                      ((x-cnd8248
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8248
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8246)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8249
                     (letrec*
                      ((x8252
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8252))))
                    (g8250
                     (letrec*
                      ((x8253
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8253))))
                    (g8251
                     (letrec*
                      ((val7535
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8254
                         (if val7535
                           val7535
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8254))))
                   g8251)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8255
                     (letrec*
                      ((x8256
                        (letrec*
                         ((x8257
                           (letrec*
                            ((x8258
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8258)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x8257)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x8256)))))
                   g8255)))
               (newline (lambda () (letrec* ((g8259 #f)) g8259)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8260
                     (letrec*
                      ((x8262
                        (letrec*
                         ((x8263
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8263))))
                       (x8261
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8262 x8261)))))
                   g8260)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8264
                     (letrec*
                      ((x8268
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8268))))
                    (g8265
                     (letrec*
                      ((x8269
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8269))))
                    (g8266
                     (letrec*
                      ((x8270
                        (letrec*
                         ((x8271
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8271)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8270))))
                    (g8267
                     (letrec*
                      ((x-cnd8272
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8272
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8274
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8273
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8274 x8273)))))))
                   g8267)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8275
                     (letrec*
                      ((x-cnd8276
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8276
                        a
                        (letrec*
                         ((x8277
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8277)))))))
                   g8275)))
               (member_
                (lambda (x l)
                  (letrec*
                   ((g8278
                     (letrec*
                      ((x-cnd8279
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8279
                        empty
                        (letrec*
                         ((x-cnd8280
                           (letrec*
                            ((x8281
                              (begin
                                (write '(funapp 1706 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1706 55))
                              (display "\n")
                              (equal? x x8281)))))
                         (if x-cnd8280
                           l
                           (letrec*
                            ((x8282
                              (begin
                                (write '(funapp 1709 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1709 55))
                              (display "\n")
                              (member_ x x8282)))))))))
                   g8278))))
              (letrec*
               ((g8283
                 (begin
                   (write '(funapp 1713 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1714 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8286
                          (letrec*
                           ((xj7675
                             (begin
                               (write '(funapp 1718 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1718 37))
                                  (display "\n")
                                  'module))))
                            (xk7676
                             (begin
                               (write '(funapp 1718 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1718 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8287
                              (begin
                                (write '(funapp 1721 27))
                                (display "\n")
                                ((lambda (j7679 k7680 f7681)
                                   (letrec*
                                    ((g8288
                                      (lambda (g7677 g7678)
                                        (letrec*
                                         ((g8289
                                           (letrec*
                                            ((x8294
                                              (begin
                                                (write '(funapp 1728 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8290
                                              (letrec*
                                               ((x8293
                                                 (begin
                                                   (write '(funapp 1731 50))
                                                   (display "\n")
                                                   (any/c j7679 k7680 g7677)))
                                                (x8291
                                                 (letrec*
                                                  ((x8292
                                                    (begin
                                                      (write '(funapp 1734 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1735 45))
                                                    (display "\n")
                                                    (x8292
                                                     j7679
                                                     k7680
                                                     g7678)))))
                                               (begin
                                                 (write '(funapp 1736 42))
                                                 (display "\n")
                                                 (f7681 x8293 x8291)))))
                                            (begin
                                              (write '(funapp 1737 39))
                                              (display "\n")
                                              (x8294 j7679 k7680 x8290)))))
                                         g8289))))
                                    g8288))
                                 xj7675
                                 xk7676
                                 member_))))
                            g8287)))
                         (x8285 (input))
                         (x8284 (input)))
                        (begin
                          (write '(funapp 1746 21))
                          (display "\n")
                          (x8286 x8285 x8284)))))))))
               g8283))))
           g7710))))
       g7693)))
    g7692)))
