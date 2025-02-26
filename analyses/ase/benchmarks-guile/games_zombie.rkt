(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7657 #t)) g7657)))
    (meta (lambda (v) (letrec* ((g7658 v)) g7658)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7659
          (letrec*
           ((g7660
             (letrec*
              ((x-e7661 lst))
              (letrec*
               ((v1742 x-e7661))
               (cond
                ((begin (write '(funapp 22 18)) (display "\n") (null? v1742))
                 (letrec* () #f))
                ((begin (write '(funapp 23 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 25 24)) (display "\n") (car v1742)))
                   (vs
                    (begin
                      (write '(funapp 25 41))
                      (display "\n")
                      (cdr v1742))))
                  (letrec*
                   ((x-cnd7662
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7662
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
           g7660)))
        g7659)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7663 (lambda (v) (letrec* ((g7664 v)) g7664)))) g7663)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7665
          (letrec*
           ((x7666 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7666)))))
        g7665))))
   (letrec*
    ((g7667
      (letrec*
       ((g7668
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7669
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7669)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7670
                 (letrec*
                  ((x7672
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7672))))
                (g7671
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7673
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7674 (if val7245 val7245 #f))) g7674)))))
                   g7673))))
               g7671)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7675
                 (letrec*
                  ((x7677
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7677))))
                (g7676
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7678
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7679 (if val7247 val7247 #f))) g7679)))))
                   g7678))))
               g7676)))
           (>
            (lambda (x y)
              (letrec*
               ((g7680
                 (letrec*
                  ((x7682
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7682))))
                (g7681
                 (letrec*
                  ((x7683
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7683)))))
               g7681)))
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
           ((g7684 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7685
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7686
                     (lambda (k j lst)
                       (letrec*
                        ((g7687
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7688
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7688))
                             lst))))
                        g7687))))
                   g7686)))
               (real?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7268))))
                      (if x-cnd7690
                        g7268
                        (begin
                          (write '(blame g7266 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7689)))
               (boolean?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7271))))
                      (if x-cnd7692
                        g7271
                        (begin
                          (write '(blame g7269 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7691)))
               (number?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x-cnd7694
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7274))))
                      (if x-cnd7694
                        g7274
                        (begin
                          (write '(blame g7272 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7693)))
               (any/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x-cnd7696
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7697 #t)) g7697)) g7277))))
                      (if x-cnd7696
                        g7277
                        (begin
                          (write '(blame g7275 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7695)))
               (any?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x-cnd7699
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7700 #t)) g7700)) g7280))))
                      (if x-cnd7699
                        g7280
                        (begin
                          (write '(blame g7278 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7698)))
               (cons?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x-cnd7702
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7702
                        g7283
                        (begin
                          (write '(blame g7281 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7701)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7703
                     (lambda (k j v)
                       (letrec*
                        ((g7704
                          (letrec*
                           ((x7707
                             (letrec*
                              ((x7708
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7708))))
                            (x7705
                             (letrec*
                              ((x7706
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7706)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7707 x7705)))))
                        g7704))))
                   g7703)))
               (pair?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x-cnd7710
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7286))))
                      (if x-cnd7710
                        g7286
                        (begin
                          (write '(blame g7284 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7709)))
               (integer?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x-cnd7712
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7289))))
                      (if x-cnd7712
                        g7289
                        (begin
                          (write '(blame g7287 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7711)))
               (symbol?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x-cnd7714
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7292))))
                      (if x-cnd7714
                        g7292
                        (begin
                          (write '(blame g7290 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7713)))
               (string?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x-cnd7716
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7295))))
                      (if x-cnd7716
                        g7295
                        (begin
                          (write '(blame g7293 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7715)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7717
                     (lambda (k j v)
                       (letrec*
                        ((g7718
                          (letrec*
                           ((x-cnd7719
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7719
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7718))))
                   g7717)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7720
                     (lambda (k j v)
                       (letrec*
                        ((g7721
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7722
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7722))))
                        g7721))))
                   g7720)))
               (null?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x-cnd7724
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7298))))
                      (if x-cnd7724
                        g7298
                        (begin
                          (write '(blame g7296 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7723)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7725
                     (lambda (k j v)
                       (letrec*
                        ((g7726
                          (letrec*
                           ((x-cnd7727
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7727
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7731
                                (letrec*
                                 ((x7732
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7732))))
                               (x7728
                                (letrec*
                                 ((x7730
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7729
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7730 k j x7729)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7731 x7728)))))))
                        g7726))))
                   g7725)))
               (any? (lambda (v) (letrec* ((g7733 #t)) g7733)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7735)))))
                   g7734)))
               (nonzero?/c
                (lambda (g7299 g7300 g7301)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7738
                                (letrec*
                                 ((x7739
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7739)))))
                              g7738))
                           g7301))))
                      (if x-cnd7737
                        g7301
                        (begin
                          (write '(blame g7299 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7299)))))))
                   g7736)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7740
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7741
                          (letrec*
                           ((x-cnd7742
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7743
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7743))
                                g7304))))
                           (if x-cnd7742
                             g7304
                             (begin
                               (write '(blame g7302 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7741))))
                   g7740)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7744
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7745
                          (letrec*
                           ((x-cnd7746
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7747
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7747))
                                g7307))))
                           (if x-cnd7746
                             g7307
                             (begin
                               (write '(blame g7305 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7745))))
                   g7744)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7748
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7749
                          (letrec*
                           ((x-cnd7750
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7751
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7751))
                                g7310))))
                           (if x-cnd7750
                             g7310
                             (begin
                               (write '(blame g7308 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7749))))
                   g7748)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7752
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7753
                          (letrec*
                           ((x-cnd7754
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7755
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7755))
                                g7313))))
                           (if x-cnd7754
                             g7313
                             (begin
                               (write '(blame g7311 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7753))))
                   g7752)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7756
                     (lambda (g7314 g7315 g7316)
                       (letrec*
                        ((g7757
                          (letrec*
                           ((x-cnd7758
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7759
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7759))
                                g7316))))
                           (if x-cnd7758
                             g7316
                             (begin
                               (write '(blame g7314 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7314)))))))
                        g7757))))
                   g7756)))
               (meta (lambda (v) (letrec* ((g7760 v)) g7760)))
               (+
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7761
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7763
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7764
                                 (letrec*
                                  ((x7765
                                    (letrec*
                                     ((x7767
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7766
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7323 x7767 x7766)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7765)))))
                               g7764))))
                          g7763))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7762
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7762))))))
                  g7761)))
               (-
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7768
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7770
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7771
                                 (letrec*
                                  ((x7772
                                    (letrec*
                                     ((x7774
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7773
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7330 x7774 x7773)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7772)))))
                               g7771))))
                          g7770))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7769
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7769))))))
                  g7768)))
               (*
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7775
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7777
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7778
                                 (letrec*
                                  ((x7779
                                    (letrec*
                                     ((x7781
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7780
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7337 x7781 x7780)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7335 k7336 x7779)))))
                               g7778))))
                          g7777))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7776
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7776))))))
                  g7775)))
               (<
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7782
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7784
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7785
                                 (letrec*
                                  ((x7786
                                    (letrec*
                                     ((x7788
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7787
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7344 x7788 x7787)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7786)))))
                               g7785))))
                          g7784))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7783
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7783))))))
                  g7782)))
               (>
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7789
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7791
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7792
                                 (letrec*
                                  ((x7793
                                    (letrec*
                                     ((x7795
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7794
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7351 x7795 x7794)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7793)))))
                               g7792))))
                          g7791))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7790
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7790))))))
                  g7789)))
               (<=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7796
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7798
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7799
                                 (letrec*
                                  ((x7800
                                    (letrec*
                                     ((x7802
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7801
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7358 x7802 x7801)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7800)))))
                               g7799))))
                          g7798))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7797
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7797))))))
                  g7796)))
               (>=
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7803
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7805
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7806
                                 (letrec*
                                  ((x7807
                                    (letrec*
                                     ((x7809
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7808
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7365 x7809 x7808)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7363 k7364 x7807)))))
                               g7806))))
                          g7805))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7804
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7804))))))
                  g7803)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7810
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7810)))
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7811
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7813
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7814
                                 (letrec*
                                  ((x7815
                                    (letrec*
                                     ((x7817
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7816
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7372 x7817 x7816)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7815)))))
                               g7814))))
                          g7813))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7812
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7812))))))
                  g7811)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7818
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7820
                            (lambda (g7375)
                              (letrec*
                               ((g7821
                                 (letrec*
                                  ((x7822
                                    (letrec*
                                     ((x7823
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7378 x7823)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7822)))))
                               g7821))))
                          g7820))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7819
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7819))))))
                  g7818)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7824
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7826
                            (lambda (g7381)
                              (letrec*
                               ((g7827
                                 (letrec*
                                  ((x7828
                                    (letrec*
                                     ((x7829
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7384 x7829)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7828)))))
                               g7827))))
                          g7826))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7825
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7825))))))
                  g7824)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7830
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7832
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7833
                                 (letrec*
                                  ((x7834
                                    (letrec*
                                     ((x7836
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7835
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7391 x7836 x7835)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7834)))))
                               g7833))))
                          g7832))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7831
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7831))))))
                  g7830)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7837
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7839
                            (lambda (g7394)
                              (letrec*
                               ((g7840
                                 (letrec*
                                  ((x7841
                                    (letrec*
                                     ((x7842
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7397 x7842)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7841)))))
                               g7840))))
                          g7839))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7838
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7838))))))
                  g7837)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7843
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7845
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7846
                                 (letrec*
                                  ((x7847
                                    (letrec*
                                     ((x7849
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7848
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7404 x7849 x7848)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7847)))))
                               g7846))))
                          g7845))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7844
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7844))))))
                  g7843)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7851
                        (letrec*
                         ((x7852
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7852)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7851)))))
                   g7850)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7856))))
                    (g7854
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7857))))
                    (g7855
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7858
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7862))))
                          (x7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7860)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7861 x7859)))))))
                   g7855)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7864)))))
                   g7863)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7868)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7866)))))
                   g7865)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7872)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7871)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7870)))))
                   g7869)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7876))))
                    (g7874
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7877))))
                    (g7875
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
                       ((g7878
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7879 res))
                       g7879))))
                   g7875)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7881)))))
                   g7880)))
               (cdaadr
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
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7886)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7885)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7884)))))
                   g7883)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        #f
                        (letrec*
                         ((x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7892 k)))))
                         (if x-cnd7891
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7893)))))))))
                   g7888)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7895)))))
                   g7894)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7899
                        ""
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7903))))
                          (x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7901)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7902 x7900)))))))
                   g7897)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7909
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7909))))
                   g7906)))
               (cdddar
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
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7913)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7911)))))
                   g7910)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7919
                        x
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7920
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7921 x7920)))))))
                   g7916)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7922
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7922)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x-cnd7924
                        (letrec*
                         ((x7925 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7925)))))
                      (if x-cnd7924
                        (letrec*
                         ((x7926 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7926)))
                        #f))))
                   g7923)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7928
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7928 9)))))
                      (letrec*
                       ((g7929
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7930
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7930 10)))))
                            (letrec*
                             ((g7931
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7932
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7932 32))))))
                             g7931)))))
                       g7929))))
                   g7927)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (letrec*
                         ((x7935
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7935)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7934)))))
                   g7933)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7937)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7939
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7939)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7940 #f)) g7940)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7942)))))
                   g7941)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x-cnd7946
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7946
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7944)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7948
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7949
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7949
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7950
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7951
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7951
                                       (letrec*
                                        ((x-cnd7952
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7952
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7953
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7954
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7954
                                             (letrec*
                                              ((x-cnd7955
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7955
                                                (letrec*
                                                 ((x-cnd7956
                                                   (letrec*
                                                    ((x7958
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7957
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7958 x7957)))))
                                                 (if x-cnd7956
                                                   (letrec*
                                                    ((x7960
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7959
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7960 x7959)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7961
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7962
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7962
                                                (letrec*
                                                 ((x-cnd7963
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7963
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7964
                                                       (letrec*
                                                        ((x-cnd7965
                                                          (letrec*
                                                           ((x7966
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
                                                             (= x7966 n)))))
                                                        (if x-cnd7965
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7967
                                                                  (letrec*
                                                                   ((val7256
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
                                                                    ((g7968
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7969
                                                                           (letrec*
                                                                            ((x7971
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
                                                                             (x7970
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
                                                                               x7971
                                                                               x7970)))))
                                                                         (if x-cnd7969
                                                                           (letrec*
                                                                            ((x7972
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
                                                                               x7972)))
                                                                           #f)))))
                                                                    g7968))))
                                                                g7967))))
                                                           (letrec*
                                                            ((g7973
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7973))
                                                          #f))))
                                                     g7964))
                                                   #f))
                                                #f)))))
                                         g7961)))))
                                   g7953)))))
                             g7950)))))
                       g7948))))
                   g7947)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7975
                        (letrec*
                         ((x7976
                           (letrec*
                            ((x7977
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7977)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7976)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7975)))))
                   g7974)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (letrec*
                            ((x7981
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7981)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7980)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7979)))))
                   g7978)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7982
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7982)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7987))))
                    (g7985
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
                       ((g7988
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7989 res))
                       g7989))))
                   g7985)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7990
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7990)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7995))))
                    (g7993
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7996
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7996))))
                   g7993)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7999)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7998)))))
                   g7997)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (letrec*
                            ((x8003
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x8003)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8002)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x8001)))))
                   g8000)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x8006)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x8005)))))
                   g8004)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8008
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x8009)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x8008)))))
                   g8007)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x8013))))
                    (g8011
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x8014))))
                    (g8012
                     (letrec*
                      ((x8015
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x8015)))))
                   g8012)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x8017
                        (letrec*
                         ((x8018
                           (letrec*
                            ((x8019
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x8019)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x8018)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x8017)))))
                   g8016)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x8022))))
                    (g8021
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g8021)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8023
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g8023)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x8025
                        (letrec*
                         ((x8026
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x8026)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x8025)))))
                   g8024)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8027
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g8027)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x8030))))
                    (g8029
                     (letrec*
                      ((x-cnd8031
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8031
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x8034
                           (letrec*
                            ((x8035
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x8035))))
                          (x8032
                           (letrec*
                            ((x8033
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x8033)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x8034 x8032)))))))
                   g8029)))
               (caaadr
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x8039)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x8038)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x8037)))))
                   g8036)))
               (cddadr
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
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x8043)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x8042)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x8041)))))
                   g8040)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8046
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x8046))))
                    (g8045
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x8047)))))
                   g8045)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((x8049
                        (letrec*
                         ((x8050
                           (letrec*
                            ((x8051
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x8051)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x8050)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x8049)))))
                   g8048)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8052
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x8055))))
                    (g8053
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x8056))))
                    (g8054
                     (letrec*
                      ((x-cnd8057
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8057
                        (letrec*
                         ((g8058
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g8058)
                        (letrec*
                         ((x-cnd8059
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x8060)))))
                         (if x-cnd8059
                           (letrec*
                            ((g8061
                              (letrec*
                               ((x8062
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x8062)))))
                            g8061)
                           (letrec*
                            ((x-cnd8063
                              (letrec*
                               ((x8064
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x8064)))))
                            (if x-cnd8063
                              (letrec*
                               ((g8065
                                 (letrec*
                                  ((x8067
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x8066
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x8067 x8066)))))
                               g8065)
                              (letrec*
                               ((x-cnd8068
                                 (letrec*
                                  ((x8069
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x8069)))))
                               (if x-cnd8068
                                 (letrec*
                                  ((g8070
                                    (letrec*
                                     ((x8073
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x8072
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8071
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x8073 x8072 x8071)))))
                                  g8070)
                                 (letrec*
                                  ((x-cnd8074
                                    (letrec*
                                     ((x8075
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x8075)))))
                                  (if x-cnd8074
                                    (letrec*
                                     ((g8076
                                       (letrec*
                                        ((x8080
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x8079
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8078
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8077
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x8080 x8079 x8078 x8077)))))
                                     g8076)
                                    (letrec*
                                     ((x-cnd8081
                                       (letrec*
                                        ((x8082
                                          (letrec*
                                           ((x8083
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x8083)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x8082)))))
                                     (if x-cnd8081
                                       (letrec*
                                        ((g8084
                                          (letrec*
                                           ((x8090
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x8089
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8088
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8087
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8085
                                             (letrec*
                                              ((x8086
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x8086)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x8090
                                              x8089
                                              x8088
                                              x8087
                                              x8085)))))
                                        g8084)
                                       (letrec*
                                        ((x-cnd8091
                                          (letrec*
                                           ((x8092
                                             (letrec*
                                              ((x8093
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x8093)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x8092)))))
                                        (if x-cnd8091
                                          (letrec*
                                           ((g8094
                                             (letrec*
                                              ((x8102
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8101
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8100
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8099
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8097
                                                (letrec*
                                                 ((x8098
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x8098))))
                                               (x8095
                                                (letrec*
                                                 ((x8096
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x8096)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x8102
                                                 x8101
                                                 x8100
                                                 x8099
                                                 x8097
                                                 x8095)))))
                                           g8094)
                                          (letrec*
                                           ((x-cnd8103
                                             (letrec*
                                              ((x8104
                                                (letrec*
                                                 ((x8105
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x8105)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x8104)))))
                                           (if x-cnd8103
                                             (letrec*
                                              ((g8106
                                                (letrec*
                                                 ((x8116
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8115
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8114
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8113
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8111
                                                   (letrec*
                                                    ((x8112
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x8112))))
                                                  (x8109
                                                   (letrec*
                                                    ((x8110
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x8110))))
                                                  (x8107
                                                   (letrec*
                                                    ((x8108
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x8108)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x8116
                                                    x8115
                                                    x8114
                                                    x8113
                                                    x8111
                                                    x8109
                                                    x8107)))))
                                              g8106)
                                             (letrec*
                                              ((g8117
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8117)))))))))))))))))))
                   g8054)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x8120))))
                    (g8119
                     (letrec*
                      ((x-cnd8121
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8121
                        #f
                        (letrec*
                         ((x-cnd8122
                           (letrec*
                            ((x8123
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x8123 e)))))
                         (if x-cnd8122
                           l
                           (letrec*
                            ((x8124
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x8124)))))))))
                   g8119)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8126
                        (letrec*
                         ((x8127
                           (letrec*
                            ((x8128
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x8128)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x8127)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x8126)))))
                   g8125)))
               (cadddr
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
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x8132)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x8131)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x8130)))))
                   g8129)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8133
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g8133)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x8136))))
                    (g8135
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g8135)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8137
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8138
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8138))))
                   g8137)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x8140)))))
                   g8139)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8142
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8142
                           (letrec*
                            ((x8143
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x8143)))
                           #f))))
                      (letrec*
                       ((g8144
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g8144))))
                   g8141)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8146
                        (letrec*
                         ((x8147
                           (letrec*
                            ((x8148
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x8148)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x8147)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x8146)))))
                   g8145)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x-cnd8150
                        (letrec*
                         ((x8151 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x8151 c)))))
                      (if x-cnd8150
                        (letrec*
                         ((x8152 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x8152)))
                        #f))))
                   g8149)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8155
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8155))))
                    (g8154
                     (letrec*
                      ((x-cnd8156
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8156
                        #f
                        (letrec*
                         ((x-cnd8157
                           (letrec*
                            ((x8158
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x8158 k)))))
                         (if x-cnd8157
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8159
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x8159)))))))))
                   g8154)))
               (not (lambda (x) (letrec* ((g8160 (if x #f #t))) g8160)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8161
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g8161)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x8164
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x8164))))
                    (g8163
                     (letrec*
                      ((x-cnd8165
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8165
                        #f
                        (letrec*
                         ((x-cnd8166
                           (letrec*
                            ((x8167
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x8167 e)))))
                         (if x-cnd8166
                           l
                           (letrec*
                            ((x8168
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x8168)))))))))
                   g8163)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8169
                     (letrec*
                      ((x8170
                        (letrec*
                         ((x8171
                           (letrec*
                            ((x8172
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x8172)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x8171)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x8170)))))
                   g8169)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8173
                     (letrec*
                      ((x8175
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8175))))
                    (g8174
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8176
                             (letrec*
                              ((x-cnd8177
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8177
                                0
                                (letrec*
                                 ((x8178
                                   (letrec*
                                    ((x8179
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x8179)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x8178)))))))
                           g8176))))
                      (letrec*
                       ((g8180
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g8180))))
                   g8174)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8181
                     (letrec*
                      ((x8184
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8184))))
                    (g8182
                     (letrec*
                      ((x8185
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8185))))
                    (g8183
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8186
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8186))))
                   g8183)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8187
                     (letrec*
                      ((x8188
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x8188)))))
                   g8187)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8189
                     (letrec*
                      ((x8190
                        (letrec*
                         ((x8191
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x8191)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x8190)))))
                   g8189)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8192
                     (letrec*
                      ((x8194
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x8194))))
                    (g8193
                     (letrec*
                      ((x-cnd8195
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8195
                        #f
                        (letrec*
                         ((x-cnd8196
                           (letrec*
                            ((x8197
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x8197 k)))))
                         (if x-cnd8196
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8198
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x8198)))))))))
                   g8193)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8199
                     (letrec*
                      ((x8200
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x8200)))))
                   g8199)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8201
                     (letrec*
                      ((x8204
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8204))))
                    (g8202
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x8205))))
                    (g8203
                     (letrec*
                      ((x8206
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x8206)))))
                   g8203)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8207
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8208
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8208))))
                   g8207)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8209
                     (letrec*
                      ((x8212
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x8212))))
                    (g8210
                     (letrec*
                      ((x8213
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x8213))))
                    (g8211
                     (letrec*
                      ((x-cnd8214
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8214
                        #t
                        (letrec*
                         ((x-cnd8215
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8215
                           (letrec*
                            ((g8216
                              (letrec*
                               ((x8218
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x8218))))
                             (g8217
                              (letrec*
                               ((x8219
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x8219)))))
                            g8217)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g8211)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8220
                     (letrec*
                      ((x8222
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x8222))))
                    (g8221
                     (letrec*
                      ((x-cnd8223
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8223
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8221)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8224
                     (letrec*
                      ((x8227
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8227))))
                    (g8225
                     (letrec*
                      ((x8228
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8228))))
                    (g8226
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8229
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8229))))
                   g8226)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8230
                     (letrec*
                      ((x8231
                        (letrec*
                         ((x8232
                           (letrec*
                            ((x8233
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8233)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x8232)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x8231)))))
                   g8230)))
               (newline (lambda () (letrec* ((g8234 #f)) g8234)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((x8237
                        (letrec*
                         ((x8238
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8238))))
                       (x8236
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8237 x8236)))))
                   g8235)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8239
                     (letrec*
                      ((x8243
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8243))))
                    (g8240
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8244))))
                    (g8241
                     (letrec*
                      ((x8245
                        (letrec*
                         ((x8246
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8246)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8245))))
                    (g8242
                     (letrec*
                      ((x-cnd8247
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8247
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8249
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8248
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8249 x8248)))))))
                   g8242)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8250
                     (letrec*
                      ((x-cnd8251
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8251
                        a
                        (letrec*
                         ((x8252
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8252)))))))
                   g8250)))
               (image
                (lambda ()
                  (letrec*
                   ((g8253
                     (begin
                       (write '(funapp 1697 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1697 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1697 62))
                          (display "\n")
                          '())))))
                   g8253)))
               (image?
                (lambda (image7656)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x8255
                        (begin
                          (write '(funapp 1702 39))
                          (display "\n")
                          (car image7656))))
                      (begin
                        (write '(funapp 1702 57))
                        (display "\n")
                        (eq?
                         x8255
                         (begin
                           (write '(funapp 1702 67))
                           (display "\n")
                           'image))))))
                   g8254)))
               (image/c
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8256
                     (begin
                       (write '(funapp 1706 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1706 47))
                          (display "\n")
                          '())))))
                   g8256)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8257
                     (begin (write '(funapp 1707 60)) (display "\n") (image))))
                   g8257)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8258
                     (begin (write '(funapp 1709 54)) (display "\n") (image))))
                   g8258)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8259
                     (begin (write '(funapp 1710 57)) (display "\n") (image))))
                   g8259)))
               (min
                (lambda (x y)
                  (letrec*
                   ((g8260
                     (letrec*
                      ((x-cnd8261
                        (begin
                          (write '(funapp 1715 43))
                          (display "\n")
                          (<= x y))))
                      (if x-cnd8261 x y))))
                   g8260)))
               (max
                (lambda (x y)
                  (letrec*
                   ((g8262
                     (letrec*
                      ((x-cnd8263
                        (begin
                          (write '(funapp 1721 43))
                          (display "\n")
                          (>= x y))))
                      (if x-cnd8263 x y))))
                   g8262)))
               (sqr
                (lambda (x)
                  (letrec*
                   ((g8264
                     (begin (write '(funapp 1723 50)) (display "\n") (* x x))))
                   g8264)))
               (WIDTH 400)
               (HEIGHT 400)
               (MT-SCENE
                (begin
                  (write '(funapp 1726 26))
                  (display "\n")
                  (empty-scene WIDTH HEIGHT)))
               (PLAYER-SPEED 4)
               (ZOMBIE-SPEED 2)
               (ZOMBIE-RADIUS 20)
               (PLAYER-RADIUS 20)
               (PLAYER-IMG
                (begin
                  (write '(funapp 1731 28))
                  (display "\n")
                  (circle PLAYER-RADIUS "solid" "green")))
               (posn/c
                (lambda (j7410 k7411 f7412)
                  (letrec*
                   ((g8265
                     (lambda (g7409)
                       (letrec*
                        ((g8266
                          (letrec*
                           ((x7413
                             (begin
                               (write '(funapp 1741 30))
                               (display "\n")
                               ((lambda (g7417 g7418 g7419)
                                  (letrec*
                                   ((g8267
                                     (letrec*
                                      ((x-cnd8268
                                        (begin
                                          (write '(funapp 1746 39))
                                          (display "\n")
                                          ((lambda (v7416)
                                             (letrec*
                                              ((g8269
                                                (letrec*
                                                 ((x-cnd8270
                                                   (begin
                                                     (write '(funapp 1750 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 1750 62))
                                                        (display "\n")
                                                        'x)
                                                      v7416))))
                                                 (if x-cnd8270
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8271
                                                      (begin
                                                        (write
                                                         '(funapp 1754 61))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1754 65))
                                                           (display "\n")
                                                           'y)
                                                         v7416))))
                                                    (if x-cnd8271
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8272
                                                         (begin
                                                           (write
                                                            '(funapp 1759 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1759
                                                                 58))
                                                              (display "\n")
                                                              'posn)
                                                            v7416))))
                                                       (if x-cnd8272
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8273
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1764
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1765
                                                                    57))
                                                                 (display "\n")
                                                                 'move-toward/speed)
                                                               v7416))))
                                                          (if x-cnd8273
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8274
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1771
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1772
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'draw-on/image)
                                                                  v7416))))
                                                             (if x-cnd8274
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1776
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1777
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'dist)
                                                                  v7416))))))))))))))
                                              g8269))
                                           g7419))))
                                      (if x-cnd8268
                                        g7419
                                        (begin
                                          (write '(blame g7417 1783 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7417)))))))
                                   g8267))
                                j7410
                                k7411
                                g7409))))
                           (letrec*
                            ((g8275
                              (letrec*
                               ((x8277
                                 (begin
                                   (write '(funapp 1811 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8278
                                         (letrec*
                                          ((x-cnd8279
                                            (begin
                                              (write '(funapp 1815 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 1815 64))
                                                 (display "\n")
                                                 'x)))))
                                          (if x-cnd8279
                                            (letrec*
                                             ((g8280
                                               (lambda (j7420 k7421 f7422)
                                                 (letrec*
                                                  ((g8281
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8282
                                                         (letrec*
                                                          ((x8283
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1826
                                                                 65))
                                                              (display "\n")
                                                              (f7422))))
                                                          (begin
                                                            (write
                                                             '(funapp 1827 57))
                                                            (display "\n")
                                                            (real?
                                                             j7420
                                                             k7421
                                                             x8283)))))
                                                       g8282))))
                                                  g8281))))
                                             g8280)
                                            (letrec*
                                             ((x-cnd8284
                                               (begin
                                                 (write '(funapp 1835 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 1835 67))
                                                    (display "\n")
                                                    'y)))))
                                             (if x-cnd8284
                                               (letrec*
                                                ((g8285
                                                  (lambda (j7423 k7424 f7425)
                                                    (letrec*
                                                     ((g8286
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8287
                                                            (letrec*
                                                             ((x8288
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1846
                                                                    68))
                                                                 (display "\n")
                                                                 (f7425))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1847
                                                                  60))
                                                               (display "\n")
                                                               (real?
                                                                j7423
                                                                k7424
                                                                x8288)))))
                                                          g8287))))
                                                     g8286))))
                                                g8285)
                                               (letrec*
                                                ((x-cnd8289
                                                  (begin
                                                    (write '(funapp 1855 59))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 1855 70))
                                                       (display "\n")
                                                       'posn)))))
                                                (if x-cnd8289
                                                  (letrec*
                                                   ((g8290
                                                     (lambda (j7426
                                                              k7427
                                                              f7428)
                                                       (letrec*
                                                        ((g8291
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8292
                                                               (letrec*
                                                                ((x8293
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1866
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7428))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1867
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (posn/c
                                                                   j7426
                                                                   k7427
                                                                   x8293)))))
                                                             g8292))))
                                                        g8291))))
                                                   g8290)
                                                  (letrec*
                                                   ((x-cnd8294
                                                     (begin
                                                       (write
                                                        '(funapp 1876 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 1878 52))
                                                          (display "\n")
                                                          'move-toward/speed)))))
                                                   (if x-cnd8294
                                                     (letrec*
                                                      ((g8295
                                                        (lambda (j7431
                                                                 k7432
                                                                 f7433)
                                                          (letrec*
                                                           ((g8296
                                                             (lambda (g7429
                                                                      g7430)
                                                               (letrec*
                                                                ((g8297
                                                                  (letrec*
                                                                   ((x8298
                                                                     (letrec*
                                                                      ((x8300
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1895
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7431
                                                                           k7432
                                                                           g7429)))
                                                                       (x8299
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1900
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (real?
                                                                           j7431
                                                                           k7432
                                                                           g7430))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1904
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7433
                                                                         x8300
                                                                         x8299)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1907
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (posn/c
                                                                      j7431
                                                                      k7432
                                                                      x8298)))))
                                                                g8297))))
                                                           g8296))))
                                                      g8295)
                                                     (letrec*
                                                      ((x-cnd8301
                                                        (begin
                                                          (write
                                                           '(funapp 1916 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1918
                                                                55))
                                                             (display "\n")
                                                             'draw-on/image)))))
                                                      (if x-cnd8301
                                                        (letrec*
                                                         ((g8302
                                                           (lambda (j7436
                                                                    k7437
                                                                    f7438)
                                                             (letrec*
                                                              ((g8303
                                                                (lambda (g7434
                                                                         g7435)
                                                                  (letrec*
                                                                   ((g8304
                                                                     (letrec*
                                                                      ((x8305
                                                                        (letrec*
                                                                         ((x8307
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1935
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7436
                                                                              k7437
                                                                              g7434)))
                                                                          (x8306
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1940
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7436
                                                                              k7437
                                                                              g7435))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1944
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7438
                                                                            x8307
                                                                            x8306)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1947
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (image/c
                                                                         j7436
                                                                         k7437
                                                                         x8305)))))
                                                                   g8304))))
                                                              g8303))))
                                                         g8302)
                                                        (letrec*
                                                         ((x-cnd8308
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1956
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1956
                                                                   69))
                                                                (display "\n")
                                                                'dist)))))
                                                         (if x-cnd8308
                                                           (letrec*
                                                            ((g8309
                                                              (lambda (j7440
                                                                       k7441
                                                                       f7442)
                                                                (letrec*
                                                                 ((g8310
                                                                   (lambda (g7439)
                                                                     (letrec*
                                                                      ((g8311
                                                                        (letrec*
                                                                         ((x8312
                                                                           (letrec*
                                                                            ((x8313
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1972
                                                                                   77))
                                                                                (display
                                                                                 "\n")
                                                                                (posn/c
                                                                                 j7440
                                                                                 k7441
                                                                                 g7439))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1976
                                                                                 75))
                                                                              (display
                                                                               "\n")
                                                                              (f7442
                                                                               x8313)))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1978
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (real?
                                                                            j7440
                                                                            k7441
                                                                            x8312)))))
                                                                      g8311))))
                                                                 g8310))))
                                                            g8309)
                                                           (letrec*
                                                            ((g8314 "error"))
                                                            g8314)))))))))))))))
                                       g8278))
                                    x7413)))
                                (x8276
                                 (begin
                                   (write '(funapp 1990 40))
                                   (display "\n")
                                   (f7412 x7413))))
                               (begin
                                 (write '(funapp 1991 32))
                                 (display "\n")
                                 (x8277 j7410 k7411 x8276)))))
                            g8275))))
                        g8266))))
                   g8265)))
               (player/c
                (lambda (j7444 k7445 f7446)
                  (letrec*
                   ((g8315
                     (lambda (g7443)
                       (letrec*
                        ((g8316
                          (letrec*
                           ((x7447
                             (begin
                               (write '(funapp 2004 30))
                               (display "\n")
                               ((lambda (g7451 g7452 g7453)
                                  (letrec*
                                   ((g8317
                                     (letrec*
                                      ((x-cnd8318
                                        (begin
                                          (write '(funapp 2009 39))
                                          (display "\n")
                                          ((lambda (v7450)
                                             (letrec*
                                              ((g8319
                                                (letrec*
                                                 ((x-cnd8320
                                                   (begin
                                                     (write '(funapp 2013 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2013 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7450))))
                                                 (if x-cnd8320
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8321
                                                      (begin
                                                        (write
                                                         '(funapp 2018 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2018 55))
                                                           (display "\n")
                                                           'move-toward)
                                                         v7450))))
                                                    (if x-cnd8321
                                                      #t
                                                      (begin
                                                        (write
                                                         '(funapp 2021 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2021 55))
                                                           (display "\n")
                                                           'draw-on)
                                                         v7450))))))))
                                              g8319))
                                           g7453))))
                                      (if x-cnd8318
                                        g7453
                                        (begin
                                          (write '(blame g7451 2026 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7451)))))))
                                   g8317))
                                j7444
                                k7445
                                g7443))))
                           (letrec*
                            ((g8322
                              (letrec*
                               ((x8324
                                 (begin
                                   (write '(funapp 2042 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8325
                                         (letrec*
                                          ((x-cnd8326
                                            (begin
                                              (write '(funapp 2046 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2046 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8326
                                            (letrec*
                                             ((g8327
                                               (lambda (j7454 k7455 f7456)
                                                 (letrec*
                                                  ((g8328
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8329
                                                         (letrec*
                                                          ((x8330
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2057
                                                                 65))
                                                              (display "\n")
                                                              (f7456))))
                                                          (begin
                                                            (write
                                                             '(funapp 2058 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7454
                                                             k7455
                                                             x8330)))))
                                                       g8329))))
                                                  g8328))))
                                             g8327)
                                            (letrec*
                                             ((x-cnd8331
                                               (begin
                                                 (write '(funapp 2067 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2067 57))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (if x-cnd8331
                                               (letrec*
                                                ((g8332
                                                  (lambda (j7458 k7459 f7460)
                                                    (letrec*
                                                     ((g8333
                                                       (lambda (g7457)
                                                         (letrec*
                                                          ((g8334
                                                            (letrec*
                                                             ((x8335
                                                               (letrec*
                                                                ((x8336
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2081
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (posn/c
                                                                     j7458
                                                                     k7459
                                                                     g7457))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2085
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7460
                                                                   x8336)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2086
                                                                  60))
                                                               (display "\n")
                                                               (player/c
                                                                j7458
                                                                k7459
                                                                x8335)))))
                                                          g8334))))
                                                     g8333))))
                                                g8332)
                                               (letrec*
                                                ((x-cnd8337
                                                  (begin
                                                    (write '(funapp 2095 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2095 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8337
                                                  (letrec*
                                                   ((g8338
                                                     (lambda (j7462
                                                              k7463
                                                              f7464)
                                                       (letrec*
                                                        ((g8339
                                                          (lambda (g7461)
                                                            (letrec*
                                                             ((g8340
                                                               (letrec*
                                                                ((x8341
                                                                  (letrec*
                                                                   ((x8342
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2109
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (image/c
                                                                        j7462
                                                                        k7463
                                                                        g7461))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2113
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7464
                                                                      x8342)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2115
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7462
                                                                   k7463
                                                                   x8341)))))
                                                             g8340))))
                                                        g8339))))
                                                   g8338)
                                                  (letrec*
                                                   ((g8343 "error"))
                                                   g8343)))))))))
                                       g8325))
                                    x7447)))
                                (x8323
                                 (begin
                                   (write '(funapp 2127 40))
                                   (display "\n")
                                   (f7446 x7447))))
                               (begin
                                 (write '(funapp 2128 32))
                                 (display "\n")
                                 (x8324 j7444 k7445 x8323)))))
                            g8322))))
                        g8316))))
                   g8315)))
               (zombie/c
                (lambda (j7466 k7467 f7468)
                  (letrec*
                   ((g8344
                     (lambda (g7465)
                       (letrec*
                        ((g8345
                          (letrec*
                           ((x7469
                             (begin
                               (write '(funapp 2141 30))
                               (display "\n")
                               ((lambda (g7473 g7474 g7475)
                                  (letrec*
                                   ((g8346
                                     (letrec*
                                      ((x-cnd8347
                                        (begin
                                          (write '(funapp 2146 39))
                                          (display "\n")
                                          ((lambda (v7472)
                                             (letrec*
                                              ((g8348
                                                (letrec*
                                                 ((x-cnd8349
                                                   (begin
                                                     (write '(funapp 2150 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2150 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7472))))
                                                 (if x-cnd8349
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8350
                                                      (begin
                                                        (write
                                                         '(funapp 2155 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2155 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7472))))
                                                    (if x-cnd8350
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8351
                                                         (begin
                                                           (write
                                                            '(funapp 2160 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2160
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7472))))
                                                       (if x-cnd8351
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2163 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2164
                                                                 54))
                                                              (display "\n")
                                                              'move-toward)
                                                            v7472))))))))))
                                              g8348))
                                           g7475))))
                                      (if x-cnd8347
                                        g7475
                                        (begin
                                          (write '(blame g7473 2170 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7473)))))))
                                   g8346))
                                j7466
                                k7467
                                g7465))))
                           (letrec*
                            ((g8352
                              (letrec*
                               ((x8354
                                 (begin
                                   (write '(funapp 2190 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8355
                                         (letrec*
                                          ((x-cnd8356
                                            (begin
                                              (write '(funapp 2194 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2194 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8356
                                            (letrec*
                                             ((g8357
                                               (lambda (j7476 k7477 f7478)
                                                 (letrec*
                                                  ((g8358
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8359
                                                         (letrec*
                                                          ((x8360
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2205
                                                                 65))
                                                              (display "\n")
                                                              (f7478))))
                                                          (begin
                                                            (write
                                                             '(funapp 2206 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7476
                                                             k7477
                                                             x8360)))))
                                                       g8359))))
                                                  g8358))))
                                             g8357)
                                            (letrec*
                                             ((x-cnd8361
                                               (begin
                                                 (write '(funapp 2215 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2215 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8361
                                               (letrec*
                                                ((g8362
                                                  (lambda (j7481 k7482 f7483)
                                                    (letrec*
                                                     ((g8363
                                                       (lambda (g7479 g7480)
                                                         (letrec*
                                                          ((g8364
                                                            (letrec*
                                                             ((x8365
                                                               (letrec*
                                                                ((x8367
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2229
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7481
                                                                     k7482
                                                                     g7479)))
                                                                 (x8366
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2234
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (image/c
                                                                     j7481
                                                                     k7482
                                                                     g7480))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2238
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7483
                                                                   x8367
                                                                   x8366)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2241
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7481
                                                                k7482
                                                                x8365)))))
                                                          g8364))))
                                                     g8363))))
                                                g8362)
                                               (letrec*
                                                ((x-cnd8368
                                                  (begin
                                                    (write '(funapp 2250 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2250 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8368
                                                  (letrec*
                                                   ((g8369
                                                     (lambda (j7485
                                                              k7486
                                                              f7487)
                                                       (letrec*
                                                        ((g8370
                                                          (lambda (g7484)
                                                            (letrec*
                                                             ((g8371
                                                               (letrec*
                                                                ((x8372
                                                                  (letrec*
                                                                   ((x8373
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2264
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (posn/c
                                                                        j7485
                                                                        k7486
                                                                        g7484))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2268
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7487
                                                                      x8373)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2270
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7485
                                                                   k7486
                                                                   x8372)))))
                                                             g8371))))
                                                        g8370))))
                                                   g8369)
                                                  (letrec*
                                                   ((x-cnd8374
                                                     (begin
                                                       (write
                                                        '(funapp 2279 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2279 63))
                                                          (display "\n")
                                                          'move-toward)))))
                                                   (if x-cnd8374
                                                     (letrec*
                                                      ((g8375
                                                        (lambda (j7489
                                                                 k7490
                                                                 f7491)
                                                          (letrec*
                                                           ((g8376
                                                             (lambda (g7488)
                                                               (letrec*
                                                                ((g8377
                                                                  (letrec*
                                                                   ((x8378
                                                                     (letrec*
                                                                      ((x8379
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2295
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7489
                                                                           k7490
                                                                           g7488))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2299
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7491
                                                                         x8379)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2301
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (zombie/c
                                                                      j7489
                                                                      k7490
                                                                      x8378)))))
                                                                g8377))))
                                                           g8376))))
                                                      g8375)
                                                     (letrec*
                                                      ((g8380 "error"))
                                                      g8380)))))))))))
                                       g8355))
                                    x7469)))
                                (x8353
                                 (begin
                                   (write '(funapp 2313 40))
                                   (display "\n")
                                   (f7468 x7469))))
                               (begin
                                 (write '(funapp 2314 32))
                                 (display "\n")
                                 (x8354 j7466 k7467 x8353)))))
                            g8352))))
                        g8345))))
                   g8344)))
               (horde/c
                (lambda (j7493 k7494 f7495)
                  (letrec*
                   ((g8381
                     (lambda (g7492)
                       (letrec*
                        ((g8382
                          (letrec*
                           ((x7496
                             (begin
                               (write '(funapp 2327 30))
                               (display "\n")
                               ((lambda (g7500 g7501 g7502)
                                  (letrec*
                                   ((g8383
                                     (letrec*
                                      ((x-cnd8384
                                        (begin
                                          (write '(funapp 2332 39))
                                          (display "\n")
                                          ((lambda (v7499)
                                             (letrec*
                                              ((g8385
                                                (letrec*
                                                 ((x-cnd8386
                                                   (begin
                                                     (write '(funapp 2336 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2336 62))
                                                        (display "\n")
                                                        'dead)
                                                      v7499))))
                                                 (if x-cnd8386
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8387
                                                      (begin
                                                        (write
                                                         '(funapp 2341 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2341 55))
                                                           (display "\n")
                                                           'undead)
                                                         v7499))))
                                                    (if x-cnd8387
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8388
                                                         (begin
                                                           (write
                                                            '(funapp 2346 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2346
                                                                 58))
                                                              (display "\n")
                                                              'draw-on)
                                                            v7499))))
                                                       (if x-cnd8388
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8389
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2351
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2352
                                                                    57))
                                                                 (display "\n")
                                                                 'touching?)
                                                               v7499))))
                                                          (if x-cnd8389
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8390
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2358
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2359
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'move-toward)
                                                                  v7499))))
                                                             (if x-cnd8390
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2363
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2364
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'eat-brains)
                                                                  v7499))))))))))))))
                                              g8385))
                                           g7502))))
                                      (if x-cnd8384
                                        g7502
                                        (begin
                                          (write '(blame g7500 2370 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7500)))))))
                                   g8383))
                                j7493
                                k7494
                                g7492))))
                           (letrec*
                            ((g8391
                              (letrec*
                               ((x8393
                                 (begin
                                   (write '(funapp 2394 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8394
                                         (letrec*
                                          ((x-cnd8395
                                            (begin
                                              (write '(funapp 2398 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2398 64))
                                                 (display "\n")
                                                 'dead)))))
                                          (if x-cnd8395
                                            (letrec*
                                             ((g8396
                                               (lambda (j7503 k7504 f7505)
                                                 (letrec*
                                                  ((g8397
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8398
                                                         (letrec*
                                                          ((x8399
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2409
                                                                 65))
                                                              (display "\n")
                                                              (f7505))))
                                                          (begin
                                                            (write
                                                             '(funapp 2410 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7503
                                                             k7504
                                                             x8399)))))
                                                       g8398))))
                                                  g8397))))
                                             g8396)
                                            (letrec*
                                             ((x-cnd8400
                                               (begin
                                                 (write '(funapp 2418 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2418 67))
                                                    (display "\n")
                                                    'undead)))))
                                             (if x-cnd8400
                                               (letrec*
                                                ((g8401
                                                  (lambda (j7506 k7507 f7508)
                                                    (letrec*
                                                     ((g8402
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8403
                                                            (letrec*
                                                             ((x8404
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2429
                                                                    68))
                                                                 (display "\n")
                                                                 (f7508))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2430
                                                                  60))
                                                               (display "\n")
                                                               (zombies/c
                                                                j7506
                                                                k7507
                                                                x8404)))))
                                                          g8403))))
                                                     g8402))))
                                                g8401)
                                               (letrec*
                                                ((x-cnd8405
                                                  (begin
                                                    (write '(funapp 2439 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2439 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8405
                                                  (letrec*
                                                   ((g8406
                                                     (lambda (j7510
                                                              k7511
                                                              f7512)
                                                       (letrec*
                                                        ((g8407
                                                          (lambda (g7509)
                                                            (letrec*
                                                             ((g8408
                                                               (letrec*
                                                                ((x8409
                                                                  (letrec*
                                                                   ((x8410
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2453
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (image/c
                                                                        j7510
                                                                        k7511
                                                                        g7509))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2457
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7512
                                                                      x8410)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2459
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7510
                                                                   k7511
                                                                   x8409)))))
                                                             g8408))))
                                                        g8407))))
                                                   g8406)
                                                  (letrec*
                                                   ((x-cnd8411
                                                     (begin
                                                       (write
                                                        '(funapp 2468 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2468 63))
                                                          (display "\n")
                                                          'touching?)))))
                                                   (if x-cnd8411
                                                     (letrec*
                                                      ((g8412
                                                        (lambda (j7514
                                                                 k7515
                                                                 f7516)
                                                          (letrec*
                                                           ((g8413
                                                             (lambda (g7513)
                                                               (letrec*
                                                                ((g8414
                                                                  (letrec*
                                                                   ((x8415
                                                                     (letrec*
                                                                      ((x8416
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2484
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7514
                                                                           k7515
                                                                           g7513))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2488
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7516
                                                                         x8416)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2490
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7514
                                                                      k7515
                                                                      x8415)))))
                                                                g8414))))
                                                           g8413))))
                                                      g8412)
                                                     (letrec*
                                                      ((x-cnd8417
                                                        (begin
                                                          (write
                                                           '(funapp 2499 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2501
                                                                55))
                                                             (display "\n")
                                                             'move-toward)))))
                                                      (if x-cnd8417
                                                        (letrec*
                                                         ((g8418
                                                           (lambda (j7518
                                                                    k7519
                                                                    f7520)
                                                             (letrec*
                                                              ((g8419
                                                                (lambda (g7517)
                                                                  (letrec*
                                                                   ((g8420
                                                                     (letrec*
                                                                      ((x8421
                                                                        (letrec*
                                                                         ((x8422
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2517
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (posn/c
                                                                              j7518
                                                                              k7519
                                                                              g7517))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2521
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7520
                                                                            x8422)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2523
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (horde/c
                                                                         j7518
                                                                         k7519
                                                                         x8421)))))
                                                                   g8420))))
                                                              g8419))))
                                                         g8418)
                                                        (letrec*
                                                         ((x-cnd8423
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2532
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   2534
                                                                   58))
                                                                (display "\n")
                                                                'eat-brains)))))
                                                         (if x-cnd8423
                                                           (letrec*
                                                            ((g8424
                                                              (lambda (j7521
                                                                       k7522
                                                                       f7523)
                                                                (letrec*
                                                                 ((g8425
                                                                   (lambda ()
                                                                     (letrec*
                                                                      ((g8426
                                                                        (letrec*
                                                                         ((x8427
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2548
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (f7523))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2549
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (horde/c
                                                                            j7521
                                                                            k7522
                                                                            x8427)))))
                                                                      g8426))))
                                                                 g8425))))
                                                            g8424)
                                                           (letrec*
                                                            ((g8428 "error"))
                                                            g8428)))))))))))))))
                                       g8394))
                                    x7496)))
                                (x8392
                                 (begin
                                   (write '(funapp 2561 40))
                                   (display "\n")
                                   (f7495 x7496))))
                               (begin
                                 (write '(funapp 2562 32))
                                 (display "\n")
                                 (x8393 j7493 k7494 x8392)))))
                            g8391))))
                        g8382))))
                   g8381)))
               (zombies/c
                (lambda (j7525 k7526 f7527)
                  (letrec*
                   ((g8429
                     (lambda (g7524)
                       (letrec*
                        ((g8430
                          (letrec*
                           ((x7528
                             (begin
                               (write '(funapp 2575 30))
                               (display "\n")
                               ((lambda (g7532 g7533 g7534)
                                  (letrec*
                                   ((g8431
                                     (letrec*
                                      ((x-cnd8432
                                        (begin
                                          (write '(funapp 2580 39))
                                          (display "\n")
                                          ((lambda (v7531)
                                             (letrec*
                                              ((g8433
                                                (letrec*
                                                 ((x-cnd8434
                                                   (begin
                                                     (write '(funapp 2585 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2585 52))
                                                        (display "\n")
                                                        'move-toward)
                                                      v7531))))
                                                 (if x-cnd8434
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8435
                                                      (begin
                                                        (write
                                                         '(funapp 2590 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2590 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7531))))
                                                    (if x-cnd8435
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8436
                                                         (begin
                                                           (write
                                                            '(funapp 2595 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2595
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7531))))
                                                       (if x-cnd8436
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2598 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2599
                                                                 54))
                                                              (display "\n")
                                                              'kill-all)
                                                            v7531))))))))))
                                              g8433))
                                           g7534))))
                                      (if x-cnd8432
                                        g7534
                                        (begin
                                          (write '(blame g7532 2605 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7532)))))))
                                   g8431))
                                j7525
                                k7526
                                g7524))))
                           (letrec*
                            ((g8437
                              (letrec*
                               ((x8439
                                 (begin
                                   (write '(funapp 2623 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8440
                                         (letrec*
                                          ((x-cnd8441
                                            (begin
                                              (write '(funapp 2627 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2627 64))
                                                 (display "\n")
                                                 'move-toward)))))
                                          (if x-cnd8441
                                            (letrec*
                                             ((g8442
                                               (lambda (j7536 k7537 f7538)
                                                 (letrec*
                                                  ((g8443
                                                    (lambda (g7535)
                                                      (letrec*
                                                       ((g8444
                                                         (letrec*
                                                          ((x8445
                                                            (letrec*
                                                             ((x8446
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2641
                                                                    62))
                                                                 (display "\n")
                                                                 (posn/c
                                                                  j7536
                                                                  k7537
                                                                  g7535))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2645
                                                                  60))
                                                               (display "\n")
                                                               (f7538
                                                                x8446)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2646 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7536
                                                             k7537
                                                             x8445)))))
                                                       g8444))))
                                                  g8443))))
                                             g8442)
                                            (letrec*
                                             ((x-cnd8447
                                               (begin
                                                 (write '(funapp 2655 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2655 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8447
                                               (letrec*
                                                ((g8448
                                                  (lambda (j7541 k7542 f7543)
                                                    (letrec*
                                                     ((g8449
                                                       (lambda (g7539 g7540)
                                                         (letrec*
                                                          ((g8450
                                                            (letrec*
                                                             ((x8451
                                                               (letrec*
                                                                ((x8453
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2669
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7541
                                                                     k7542
                                                                     g7539)))
                                                                 (x8452
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2674
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (image/c
                                                                     j7541
                                                                     k7542
                                                                     g7540))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2678
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7543
                                                                   x8453
                                                                   x8452)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2681
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7541
                                                                k7542
                                                                x8451)))))
                                                          g8450))))
                                                     g8449))))
                                                g8448)
                                               (letrec*
                                                ((x-cnd8454
                                                  (begin
                                                    (write '(funapp 2690 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2690 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8454
                                                  (letrec*
                                                   ((g8455
                                                     (lambda (j7545
                                                              k7546
                                                              f7547)
                                                       (letrec*
                                                        ((g8456
                                                          (lambda (g7544)
                                                            (letrec*
                                                             ((g8457
                                                               (letrec*
                                                                ((x8458
                                                                  (letrec*
                                                                   ((x8459
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2704
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (posn/c
                                                                        j7545
                                                                        k7546
                                                                        g7544))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2708
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7547
                                                                      x8459)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2710
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7545
                                                                   k7546
                                                                   x8458)))))
                                                             g8457))))
                                                        g8456))))
                                                   g8455)
                                                  (letrec*
                                                   ((x-cnd8460
                                                     (begin
                                                       (write
                                                        '(funapp 2719 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2719 63))
                                                          (display "\n")
                                                          'kill-all)))))
                                                   (if x-cnd8460
                                                     (letrec*
                                                      ((g8461
                                                        (lambda (j7549
                                                                 k7550
                                                                 f7551)
                                                          (letrec*
                                                           ((g8462
                                                             (lambda (g7548)
                                                               (letrec*
                                                                ((g8463
                                                                  (letrec*
                                                                   ((x8464
                                                                     (letrec*
                                                                      ((x8465
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2735
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (zombies/c
                                                                           j7549
                                                                           k7550
                                                                           g7548))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2739
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7551
                                                                         x8465)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2741
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (horde/c
                                                                      j7549
                                                                      k7550
                                                                      x8464)))))
                                                                g8463))))
                                                           g8462))))
                                                      g8461)
                                                     (letrec*
                                                      ((g8466 "error"))
                                                      g8466)))))))))))
                                       g8440))
                                    x7528)))
                                (x8438
                                 (begin
                                   (write '(funapp 2753 40))
                                   (display "\n")
                                   (f7527 x7528))))
                               (begin
                                 (write '(funapp 2754 32))
                                 (display "\n")
                                 (x8439 j7525 k7526 x8438)))))
                            g8437))))
                        g8430))))
                   g8429)))
               (world/c
                (lambda (j7553 k7554 f7555)
                  (letrec*
                   ((g8467
                     (lambda (g7552)
                       (letrec*
                        ((g8468
                          (letrec*
                           ((x7556
                             (begin
                               (write '(funapp 2767 30))
                               (display "\n")
                               ((lambda (g7560 g7561 g7562)
                                  (letrec*
                                   ((g8469
                                     (letrec*
                                      ((x-cnd8470
                                        (begin
                                          (write '(funapp 2772 39))
                                          (display "\n")
                                          ((lambda (v7559)
                                             (letrec*
                                              ((g8471
                                                (letrec*
                                                 ((x-cnd8472
                                                   (begin
                                                     (write '(funapp 2777 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2777 52))
                                                        (display "\n")
                                                        'on-mouse)
                                                      v7559))))
                                                 (if x-cnd8472
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8473
                                                      (begin
                                                        (write
                                                         '(funapp 2782 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2782 55))
                                                           (display "\n")
                                                           'on-tick)
                                                         v7559))))
                                                    (if x-cnd8473
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8474
                                                         (begin
                                                           (write
                                                            '(funapp 2787 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2787
                                                                 58))
                                                              (display "\n")
                                                              'to-draw)
                                                            v7559))))
                                                       (if x-cnd8474
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2790 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2791
                                                                 54))
                                                              (display "\n")
                                                              'stop-when)
                                                            v7559))))))))))
                                              g8471))
                                           g7562))))
                                      (if x-cnd8470
                                        g7562
                                        (begin
                                          (write '(blame g7560 2797 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7560)))))))
                                   g8469))
                                j7553
                                k7554
                                g7552))))
                           (letrec*
                            ((g8475
                              (letrec*
                               ((x8477
                                 (begin
                                   (write '(funapp 2815 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8478
                                         (letrec*
                                          ((x-cnd8479
                                            (begin
                                              (write '(funapp 2819 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2819 64))
                                                 (display "\n")
                                                 'on-mouse)))))
                                          (if x-cnd8479
                                            (letrec*
                                             ((g8480
                                               (lambda (j7566 k7567 f7568)
                                                 (letrec*
                                                  ((g8481
                                                    (lambda (g7563 g7564 g7565)
                                                      (letrec*
                                                       ((g8482
                                                         (letrec*
                                                          ((x8483
                                                            (letrec*
                                                             ((x8486
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2833
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7563)))
                                                              (x8485
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2838
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7564)))
                                                              (x8484
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2843
                                                                    62))
                                                                 (display "\n")
                                                                 (string?
                                                                  j7566
                                                                  k7567
                                                                  g7565))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2847
                                                                  60))
                                                               (display "\n")
                                                               (f7568
                                                                x8486
                                                                x8485
                                                                x8484)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2851 57))
                                                            (display "\n")
                                                            (world/c
                                                             j7566
                                                             k7567
                                                             x8483)))))
                                                       g8482))))
                                                  g8481))))
                                             g8480)
                                            (letrec*
                                             ((x-cnd8487
                                               (begin
                                                 (write '(funapp 2859 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2859 67))
                                                    (display "\n")
                                                    'on-tick)))))
                                             (if x-cnd8487
                                               (letrec*
                                                ((g8488
                                                  (lambda (j7569 k7570 f7571)
                                                    (letrec*
                                                     ((g8489
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8490
                                                            (letrec*
                                                             ((x8491
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2870
                                                                    68))
                                                                 (display "\n")
                                                                 (f7571))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2871
                                                                  60))
                                                               (display "\n")
                                                               (world/c
                                                                j7569
                                                                k7570
                                                                x8491)))))
                                                          g8490))))
                                                     g8489))))
                                                g8488)
                                               (letrec*
                                                ((x-cnd8492
                                                  (begin
                                                    (write '(funapp 2880 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2880 60))
                                                       (display "\n")
                                                       'to-draw)))))
                                                (if x-cnd8492
                                                  (letrec*
                                                   ((g8493
                                                     (lambda (j7572
                                                              k7573
                                                              f7574)
                                                       (letrec*
                                                        ((g8494
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8495
                                                               (letrec*
                                                                ((x8496
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2891
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7574))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2892
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7572
                                                                   k7573
                                                                   x8496)))))
                                                             g8495))))
                                                        g8494))))
                                                   g8493)
                                                  (letrec*
                                                   ((x-cnd8497
                                                     (begin
                                                       (write
                                                        '(funapp 2901 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2901 63))
                                                          (display "\n")
                                                          'stop-when)))))
                                                   (if x-cnd8497
                                                     (letrec*
                                                      ((g8498
                                                        (lambda (j7575
                                                                 k7576
                                                                 f7577)
                                                          (letrec*
                                                           ((g8499
                                                             (lambda ()
                                                               (letrec*
                                                                ((g8500
                                                                  (letrec*
                                                                   ((x8501
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2915
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (f7577))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2916
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7575
                                                                      k7576
                                                                      x8501)))))
                                                                g8500))))
                                                           g8499))))
                                                      g8498)
                                                     (letrec*
                                                      ((g8502 "error"))
                                                      g8502)))))))))))
                                       g8478))
                                    x7556)))
                                (x8476
                                 (begin
                                   (write '(funapp 2928 40))
                                   (display "\n")
                                   (f7555 x7556))))
                               (begin
                                 (write '(funapp 2929 32))
                                 (display "\n")
                                 (x8477 j7553 k7554 x8476)))))
                            g8475))))
                        g8468))))
                   g8467)))
               (new-world
                (lambda (player mouse zombies)
                  (letrec*
                   ((g8503
                     (lambda (msg)
                       (letrec*
                        ((g8504
                          (letrec*
                           ((x-cnd8505
                             (begin
                               (write '(funapp 2941 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 2941 51))
                                  (display "\n")
                                  'on-mouse)))))
                           (if x-cnd8505
                             (letrec*
                              ((g8506
                                (lambda (x y me)
                                  (letrec*
                                   ((g8507
                                     (letrec*
                                      ((x8508
                                        (letrec*
                                         ((x-cnd8509
                                           (begin
                                             (write '(funapp 2951 54))
                                             (display "\n")
                                             (equal? me "leave"))))
                                         (if x-cnd8509
                                           (letrec*
                                            ((x8510
                                              (begin
                                                (write '(funapp 2954 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2954 60))
                                                   (display "\n")
                                                   'posn)))))
                                            (begin
                                              (write '(funapp 2955 45))
                                              (display "\n")
                                              (x8510)))
                                           (begin
                                             (write '(funapp 2956 44))
                                             (display "\n")
                                             (new-posn x y))))))
                                      (begin
                                        (write '(funapp 2957 39))
                                        (display "\n")
                                        (new-world player x8508 zombies)))))
                                   g8507))))
                              g8506)
                             (letrec*
                              ((x-cnd8511
                                (begin
                                  (write '(funapp 2961 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 2961 54))
                                     (display "\n")
                                     'on-tick)))))
                              (if x-cnd8511
                                (letrec*
                                 ((g8512
                                   (lambda ()
                                     (letrec*
                                      ((g8513
                                        (letrec*
                                         ((x8520
                                           (letrec*
                                            ((x8521
                                              (begin
                                                (write '(funapp 2971 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2971 60))
                                                   (display "\n")
                                                   'move-toward)))))
                                            (begin
                                              (write '(funapp 2972 45))
                                              (display "\n")
                                              (x8521 mouse))))
                                          (x8514
                                           (letrec*
                                            ((x8517
                                              (letrec*
                                               ((x8518
                                                 (letrec*
                                                  ((x8519
                                                    (begin
                                                      (write '(funapp 2980 53))
                                                      (display "\n")
                                                      (zombies
                                                       (begin
                                                         (write
                                                          '(funapp 2980 61))
                                                         (display "\n")
                                                         'eat-brains)))))
                                                  (begin
                                                    (write '(funapp 2981 51))
                                                    (display "\n")
                                                    (x8519)))))
                                               (begin
                                                 (write '(funapp 2982 48))
                                                 (display "\n")
                                                 (x8518
                                                  (begin
                                                    (write '(funapp 2982 54))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (x8515
                                              (letrec*
                                               ((x8516
                                                 (begin
                                                   (write '(funapp 2985 56))
                                                   (display "\n")
                                                   (player
                                                    (begin
                                                      (write '(funapp 2985 63))
                                                      (display "\n")
                                                      'posn)))))
                                               (begin
                                                 (write '(funapp 2986 48))
                                                 (display "\n")
                                                 (x8516)))))
                                            (begin
                                              (write '(funapp 2987 45))
                                              (display "\n")
                                              (x8517 x8515)))))
                                         (begin
                                           (write '(funapp 2988 42))
                                           (display "\n")
                                           (new-world x8520 mouse x8514)))))
                                      g8513))))
                                 g8512)
                                (letrec*
                                 ((x-cnd8522
                                   (begin
                                     (write '(funapp 2992 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 2992 57))
                                        (display "\n")
                                        'to-draw)))))
                                 (if x-cnd8522
                                   (letrec*
                                    ((g8523
                                      (lambda ()
                                        (letrec*
                                         ((g8524
                                           (letrec*
                                            ((x8527
                                              (begin
                                                (write '(funapp 3000 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 3000 60))
                                                   (display "\n")
                                                   'draw-on))))
                                             (x8525
                                              (letrec*
                                               ((x8526
                                                 (begin
                                                   (write '(funapp 3003 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3003 64))
                                                      (display "\n")
                                                      'draw-on)))))
                                               (begin
                                                 (write '(funapp 3004 48))
                                                 (display "\n")
                                                 (x8526 MT-SCENE)))))
                                            (begin
                                              (write '(funapp 3005 45))
                                              (display "\n")
                                              (x8527 x8525)))))
                                         g8524))))
                                    g8523)
                                   (letrec*
                                    ((x-cnd8528
                                      (begin
                                        (write '(funapp 3009 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3009 60))
                                           (display "\n")
                                           'stop-when)))))
                                    (if x-cnd8528
                                      (letrec*
                                       ((g8529
                                         (lambda ()
                                           (letrec*
                                            ((g8530
                                              (letrec*
                                               ((x8533
                                                 (begin
                                                   (write '(funapp 3017 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3017 64))
                                                      (display "\n")
                                                      'touching?))))
                                                (x8531
                                                 (letrec*
                                                  ((x8532
                                                    (begin
                                                      (write '(funapp 3020 59))
                                                      (display "\n")
                                                      (player
                                                       (begin
                                                         (write
                                                          '(funapp 3020 66))
                                                         (display "\n")
                                                         'posn)))))
                                                  (begin
                                                    (write '(funapp 3021 51))
                                                    (display "\n")
                                                    (x8532)))))
                                               (begin
                                                 (write '(funapp 3022 48))
                                                 (display "\n")
                                                 (x8533 x8531)))))
                                            g8530))))
                                       g8529)
                                      (letrec*
                                       ((g8534 "unknown message"))
                                       g8534)))))))))))
                        g8504))))
                   g8503)))
               (new-player
                (lambda (p)
                  (letrec*
                   ((g8535
                     (lambda (msg)
                       (letrec*
                        ((g8536
                          (letrec*
                           ((x-cnd8537
                             (begin
                               (write '(funapp 3038 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3038 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8537
                             (letrec*
                              ((g8538 (lambda () (letrec* ((g8539 p)) g8539))))
                              g8538)
                             (letrec*
                              ((x-cnd8540
                                (begin
                                  (write '(funapp 3044 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3044 54))
                                     (display "\n")
                                     'move-toward)))))
                              (if x-cnd8540
                                (letrec*
                                 ((g8541
                                   (lambda (q)
                                     (letrec*
                                      ((g8542
                                        (letrec*
                                         ((x8543
                                           (letrec*
                                            ((x8544
                                              (begin
                                                (write '(funapp 3054 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3054 55))
                                                   (display "\n")
                                                   'move-toward/speed)))))
                                            (begin
                                              (write '(funapp 3055 45))
                                              (display "\n")
                                              (x8544 q PLAYER-SPEED)))))
                                         (begin
                                           (write '(funapp 3056 42))
                                           (display "\n")
                                           (new-player x8543)))))
                                      g8542))))
                                 g8541)
                                (letrec*
                                 ((x-cnd8545
                                   (begin
                                     (write '(funapp 3060 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3060 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8545
                                   (letrec*
                                    ((g8546
                                      (lambda (scn)
                                        (letrec*
                                         ((g8547
                                           (letrec*
                                            ((x8548
                                              (begin
                                                (write '(funapp 3068 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3068 55))
                                                   (display "\n")
                                                   'draw-on/image)))))
                                            (begin
                                              (write '(funapp 3069 45))
                                              (display "\n")
                                              (x8548 PLAYER-IMG scn)))))
                                         g8547))))
                                    g8546)
                                   (letrec*
                                    ((g8549 "unknown message"))
                                    g8549)))))))))
                        g8536))))
                   g8535)))
               (new-horde
                (lambda (undead dead)
                  (letrec*
                   ((g8550
                     (lambda (msg)
                       (letrec*
                        ((g8551
                          (letrec*
                           ((x-cnd8552
                             (begin
                               (write '(funapp 3085 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3085 51))
                                  (display "\n")
                                  'dead)))))
                           (if x-cnd8552
                             (letrec*
                              ((g8553
                                (lambda () (letrec* ((g8554 dead)) g8554))))
                              g8553)
                             (letrec*
                              ((x-cnd8555
                                (begin
                                  (write '(funapp 3092 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3092 54))
                                     (display "\n")
                                     'undead)))))
                              (if x-cnd8555
                                (letrec*
                                 ((g8556
                                   (lambda ()
                                     (letrec* ((g8557 undead)) g8557))))
                                 g8556)
                                (letrec*
                                 ((x-cnd8558
                                   (begin
                                     (write '(funapp 3100 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3100 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8558
                                   (letrec*
                                    ((g8559
                                      (lambda (scn)
                                        (letrec*
                                         ((g8560
                                           (letrec*
                                            ((x8563
                                              (begin
                                                (write '(funapp 3108 53))
                                                (display "\n")
                                                (undead
                                                 (begin
                                                   (write '(funapp 3108 60))
                                                   (display "\n")
                                                   'draw-on/color))))
                                             (x8561
                                              (letrec*
                                               ((x8562
                                                 (begin
                                                   (write '(funapp 3111 56))
                                                   (display "\n")
                                                   (dead
                                                    (begin
                                                      (write '(funapp 3111 61))
                                                      (display "\n")
                                                      'draw-on/color)))))
                                               (begin
                                                 (write '(funapp 3112 48))
                                                 (display "\n")
                                                 (x8562 "black" scn)))))
                                            (begin
                                              (write '(funapp 3113 45))
                                              (display "\n")
                                              (x8563 "yellow" x8561)))))
                                         g8560))))
                                    g8559)
                                   (letrec*
                                    ((x-cnd8564
                                      (begin
                                        (write '(funapp 3117 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3117 60))
                                           (display "\n")
                                           'touching?)))))
                                    (if x-cnd8564
                                      (letrec*
                                       ((g8565
                                         (lambda (p)
                                           (letrec*
                                            ((g8566
                                              (letrec*
                                               ((val7263
                                                 (letrec*
                                                  ((x8567
                                                    (begin
                                                      (write '(funapp 3127 59))
                                                      (display "\n")
                                                      (undead
                                                       (begin
                                                         (write
                                                          '(funapp 3127 66))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3128 51))
                                                    (display "\n")
                                                    (x8567 p)))))
                                               (letrec*
                                                ((g8568
                                                  (if val7263
                                                    val7263
                                                    (letrec*
                                                     ((x8569
                                                       (begin
                                                         (write
                                                          '(funapp 3135 56))
                                                         (display "\n")
                                                         (dead
                                                          (begin
                                                            (write
                                                             '(funapp 3135 61))
                                                            (display "\n")
                                                            'touching?)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3136 54))
                                                       (display "\n")
                                                       (x8569 p))))))
                                                g8568))))
                                            g8566))))
                                       g8565)
                                      (letrec*
                                       ((x-cnd8570
                                         (begin
                                           (write '(funapp 3141 52))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3141 63))
                                              (display "\n")
                                              'move-toward)))))
                                       (if x-cnd8570
                                         (letrec*
                                          ((g8571
                                            (lambda (p)
                                              (letrec*
                                               ((g8572
                                                 (letrec*
                                                  ((x8573
                                                    (letrec*
                                                     ((x8574
                                                       (begin
                                                         (write
                                                          '(funapp 3152 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3152 63))
                                                            (display "\n")
                                                            'move-toward)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3153 54))
                                                       (display "\n")
                                                       (x8574 p)))))
                                                  (begin
                                                    (write '(funapp 3154 51))
                                                    (display "\n")
                                                    (new-horde x8573 dead)))))
                                               g8572))))
                                          g8571)
                                         (letrec*
                                          ((x-cnd8575
                                            (begin
                                              (write '(funapp 3159 45))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3159 56))
                                                 (display "\n")
                                                 'eat-brains)))))
                                          (if x-cnd8575
                                            (letrec*
                                             ((g8576
                                               (lambda ()
                                                 (letrec*
                                                  ((g8577
                                                    (letrec*
                                                     ((x8578
                                                       (begin
                                                         (write
                                                          '(funapp 3168 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3168 63))
                                                            (display "\n")
                                                            'kill-all)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3169 54))
                                                       (display "\n")
                                                       (x8578 dead)))))
                                                  g8577))))
                                             g8576)
                                            (letrec*
                                             ((g8579 "unknown message"))
                                             g8579)))))))))))))))
                        g8551))))
                   g8550)))
               (new-cons-zombies
                (lambda (z r)
                  (letrec*
                   ((g8580
                     (lambda (msg)
                       (letrec*
                        ((g8581
                          (letrec*
                           ((x-cnd8582
                             (begin
                               (write '(funapp 3185 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3185 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8582
                             (letrec*
                              ((g8583
                                (lambda (p)
                                  (letrec*
                                   ((g8584
                                     (letrec*
                                      ((x8587
                                        (letrec*
                                         ((x8588
                                           (begin
                                             (write '(funapp 3195 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3195 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3196 42))
                                           (display "\n")
                                           (x8588 p))))
                                       (x8585
                                        (letrec*
                                         ((x8586
                                           (begin
                                             (write '(funapp 3199 50))
                                             (display "\n")
                                             (r
                                              (begin
                                                (write '(funapp 3199 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3200 42))
                                           (display "\n")
                                           (x8586 p)))))
                                      (begin
                                        (write '(funapp 3201 39))
                                        (display "\n")
                                        (new-cons-zombies x8587 x8585)))))
                                   g8584))))
                              g8583)
                             (letrec*
                              ((x-cnd8589
                                (begin
                                  (write '(funapp 3205 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3205 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8589
                                (letrec*
                                 ((g8590
                                   (lambda (c s)
                                     (letrec*
                                      ((g8591
                                        (letrec*
                                         ((x8594
                                           (begin
                                             (write '(funapp 3213 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3213 52))
                                                (display "\n")
                                                'draw-on/color))))
                                          (x8592
                                           (letrec*
                                            ((x8593
                                              (begin
                                                (write '(funapp 3216 53))
                                                (display "\n")
                                                (r
                                                 (begin
                                                   (write '(funapp 3216 55))
                                                   (display "\n")
                                                   'draw-on/color)))))
                                            (begin
                                              (write '(funapp 3217 45))
                                              (display "\n")
                                              (x8593 c s)))))
                                         (begin
                                           (write '(funapp 3218 42))
                                           (display "\n")
                                           (x8594 c x8592)))))
                                      g8591))))
                                 g8590)
                                (letrec*
                                 ((x-cnd8595
                                   (begin
                                     (write '(funapp 3222 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3222 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8595
                                   (letrec*
                                    ((g8596
                                      (lambda (p)
                                        (letrec*
                                         ((g8597
                                           (letrec*
                                            ((val7264
                                              (letrec*
                                               ((x8598
                                                 (begin
                                                   (write '(funapp 3232 56))
                                                   (display "\n")
                                                   (z
                                                    (begin
                                                      (write '(funapp 3232 58))
                                                      (display "\n")
                                                      'touching?)))))
                                               (begin
                                                 (write '(funapp 3233 48))
                                                 (display "\n")
                                                 (x8598 p)))))
                                            (letrec*
                                             ((g8599
                                               (if val7264
                                                 val7264
                                                 (letrec*
                                                  ((x8600
                                                    (begin
                                                      (write '(funapp 3239 59))
                                                      (display "\n")
                                                      (r
                                                       (begin
                                                         (write
                                                          '(funapp 3239 61))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3240 51))
                                                    (display "\n")
                                                    (x8600 p))))))
                                             g8599))))
                                         g8597))))
                                    g8596)
                                   (letrec*
                                    ((x-cnd8601
                                      (begin
                                        (write '(funapp 3245 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3245 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8601
                                      (letrec*
                                       ((g8602
                                         (lambda (dead)
                                           (letrec*
                                            ((g8603
                                              (letrec*
                                               ((x-cnd8604
                                                 (letrec*
                                                  ((val7265
                                                    (letrec*
                                                     ((x8607
                                                       (begin
                                                         (write
                                                          '(funapp 3257 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3257 64))
                                                            (display "\n")
                                                            'touching?))))
                                                      (x8605
                                                       (letrec*
                                                        ((x8606
                                                          (begin
                                                            (write
                                                             '(funapp 3260 65))
                                                            (display "\n")
                                                            (z
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3260
                                                                  67))
                                                               (display "\n")
                                                               'posn)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3261 57))
                                                          (display "\n")
                                                          (x8606)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3262 54))
                                                       (display "\n")
                                                       (x8607 x8605)))))
                                                  (letrec*
                                                   ((g8608
                                                     (if val7265
                                                       val7265
                                                       (letrec*
                                                        ((x8611
                                                          (begin
                                                            (write
                                                             '(funapp 3269 59))
                                                            (display "\n")
                                                            (dead
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3269
                                                                  64))
                                                               (display "\n")
                                                               'touching?))))
                                                         (x8609
                                                          (letrec*
                                                           ((x8610
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3272
                                                                  68))
                                                               (display "\n")
                                                               (z
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     3272
                                                                     70))
                                                                  (display
                                                                   "\n")
                                                                  'posn)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3273
                                                                60))
                                                             (display "\n")
                                                             (x8610)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3274 57))
                                                          (display "\n")
                                                          (x8611 x8609))))))
                                                   g8608))))
                                               (if x-cnd8604
                                                 (letrec*
                                                  ((g8612
                                                    (letrec*
                                                     ((x8614
                                                       (begin
                                                         (write
                                                          '(funapp 3280 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3280 64))
                                                            (display "\n")
                                                            'kill-all))))
                                                      (x8613
                                                       (begin
                                                         (write
                                                          '(funapp 3282 56))
                                                         (display "\n")
                                                         (new-cons-zombies
                                                          z
                                                          dead))))
                                                     (begin
                                                       (write
                                                        '(funapp 3285 54))
                                                       (display "\n")
                                                       (x8614 x8613)))))
                                                  g8612)
                                                 (letrec*
                                                  ((g8615
                                                    (letrec*
                                                     ((res
                                                       (letrec*
                                                        ((x8616
                                                          (begin
                                                            (write
                                                             '(funapp 3292 65))
                                                            (display "\n")
                                                            (r
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3292
                                                                  67))
                                                               (display "\n")
                                                               'kill-all)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3293 57))
                                                          (display "\n")
                                                          (x8616 dead)))))
                                                     (letrec*
                                                      ((g8617
                                                        (letrec*
                                                         ((x8620
                                                           (letrec*
                                                            ((x8621
                                                              (letrec*
                                                               ((x8622
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3302
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (res
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3303
                                                                         66))
                                                                      (display
                                                                       "\n")
                                                                      'undead)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    3304
                                                                    64))
                                                                 (display "\n")
                                                                 (x8622)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3305
                                                                 61))
                                                              (display "\n")
                                                              (new-cons-zombies
                                                               z
                                                               x8621))))
                                                          (x8618
                                                           (letrec*
                                                            ((x8619
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3311
                                                                   63))
                                                                (display "\n")
                                                                (res
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3311
                                                                      67))
                                                                   (display
                                                                    "\n")
                                                                   'dead)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3312
                                                                 61))
                                                              (display "\n")
                                                              (x8619)))))
                                                         (begin
                                                           (write
                                                            '(funapp 3313 58))
                                                           (display "\n")
                                                           (new-horde
                                                            x8620
                                                            x8618)))))
                                                      g8617))))
                                                  g8615)))))
                                            g8603))))
                                       g8602)
                                      (letrec*
                                       ((g8623 "unknown message"))
                                       g8623)))))))))))
                        g8581))))
                   g8580)))
               (new-mt-zombies
                (lambda ()
                  (letrec*
                   ((g8624
                     (lambda (msg)
                       (letrec*
                        ((g8625
                          (letrec*
                           ((x-cnd8626
                             (begin
                               (write '(funapp 3333 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3333 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8626
                             (letrec*
                              ((g8627
                                (lambda (p)
                                  (letrec*
                                   ((g8628
                                     (begin
                                       (write '(funapp 3338 52))
                                       (display "\n")
                                       (new-mt-zombies))))
                                   g8628))))
                              g8627)
                             (letrec*
                              ((x-cnd8629
                                (begin
                                  (write '(funapp 3341 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3341 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8629
                                (letrec*
                                 ((g8630
                                   (lambda (c s) (letrec* ((g8631 s)) g8631))))
                                 g8630)
                                (letrec*
                                 ((x-cnd8632
                                   (begin
                                     (write '(funapp 3348 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3348 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8632
                                   (letrec*
                                    ((g8633
                                      (lambda (p)
                                        (letrec* ((g8634 #f)) g8634))))
                                    g8633)
                                   (letrec*
                                    ((x-cnd8635
                                      (begin
                                        (write '(funapp 3356 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3356 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8635
                                      (letrec*
                                       ((g8636
                                         (lambda (dead)
                                           (letrec*
                                            ((g8637
                                              (letrec*
                                               ((x8638
                                                 (begin
                                                   (write '(funapp 3364 56))
                                                   (display "\n")
                                                   (new-mt-zombies))))
                                               (begin
                                                 (write '(funapp 3365 48))
                                                 (display "\n")
                                                 (new-horde x8638 dead)))))
                                            g8637))))
                                       g8636)
                                      (letrec*
                                       ((g8639 "unknown message"))
                                       g8639)))))))))))
                        g8625))))
                   g8624)))
               (new-zombie
                (lambda (p)
                  (letrec*
                   ((g8640
                     (lambda (msg)
                       (letrec*
                        ((g8641
                          (letrec*
                           ((x-cnd8642
                             (begin
                               (write '(funapp 3381 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3381 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8642
                             (letrec*
                              ((g8643 (lambda () (letrec* ((g8644 p)) g8644))))
                              g8643)
                             (letrec*
                              ((x-cnd8645
                                (begin
                                  (write '(funapp 3387 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3387 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8645
                                (letrec*
                                 ((g8646
                                   (lambda (c s)
                                     (letrec*
                                      ((g8647
                                        (letrec*
                                         ((x8649
                                           (begin
                                             (write '(funapp 3395 50))
                                             (display "\n")
                                             (p
                                              (begin
                                                (write '(funapp 3395 52))
                                                (display "\n")
                                                'draw-on/image))))
                                          (x8648
                                           (begin
                                             (write '(funapp 3397 44))
                                             (display "\n")
                                             (circle
                                              ZOMBIE-RADIUS
                                              "solid"
                                              c))))
                                         (begin
                                           (write '(funapp 3398 42))
                                           (display "\n")
                                           (x8649 x8648 s)))))
                                      g8647))))
                                 g8646)
                                (letrec*
                                 ((x-cnd8650
                                   (begin
                                     (write '(funapp 3402 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3402 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8650
                                   (letrec*
                                    ((g8651
                                      (lambda (q)
                                        (letrec*
                                         ((g8652
                                           (letrec*
                                            ((x8653
                                              (letrec*
                                               ((x8654
                                                 (begin
                                                   (write '(funapp 3412 56))
                                                   (display "\n")
                                                   (p
                                                    (begin
                                                      (write '(funapp 3412 58))
                                                      (display "\n")
                                                      'dist)))))
                                               (begin
                                                 (write '(funapp 3413 48))
                                                 (display "\n")
                                                 (x8654 q)))))
                                            (begin
                                              (write '(funapp 3414 45))
                                              (display "\n")
                                              (<= x8653 ZOMBIE-RADIUS)))))
                                         g8652))))
                                    g8651)
                                   (letrec*
                                    ((x-cnd8655
                                      (begin
                                        (write '(funapp 3418 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3418 60))
                                           (display "\n")
                                           'move-toward)))))
                                    (if x-cnd8655
                                      (letrec*
                                       ((g8656
                                         (lambda (q)
                                           (letrec*
                                            ((g8657
                                              (letrec*
                                               ((x8658
                                                 (letrec*
                                                  ((x8659
                                                    (begin
                                                      (write '(funapp 3429 53))
                                                      (display "\n")
                                                      (p
                                                       (begin
                                                         (write
                                                          '(funapp 3429 55))
                                                         (display "\n")
                                                         'move-toward/speed)))))
                                                  (begin
                                                    (write '(funapp 3430 51))
                                                    (display "\n")
                                                    (x8659 q ZOMBIE-SPEED)))))
                                               (begin
                                                 (write '(funapp 3431 48))
                                                 (display "\n")
                                                 (new-zombie x8658)))))
                                            g8657))))
                                       g8656)
                                      (letrec*
                                       ((g8660 "unknown message"))
                                       g8660)))))))))))
                        g8641))))
                   g8640)))
               (new-posn
                (lambda (x y)
                  (letrec*
                   ((g8661
                     (letrec*
                      ((this
                        (lambda (msg)
                          (letrec*
                           ((g8662
                             (letrec*
                              ((x-cnd8663
                                (begin
                                  (write '(funapp 3449 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3449 54))
                                     (display "\n")
                                     'x)))))
                              (if x-cnd8663
                                (letrec*
                                 ((g8664
                                   (lambda () (letrec* ((g8665 x)) g8665))))
                                 g8664)
                                (letrec*
                                 ((x-cnd8666
                                   (begin
                                     (write '(funapp 3456 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3456 57))
                                        (display "\n")
                                        'y)))))
                                 (if x-cnd8666
                                   (letrec*
                                    ((g8667
                                      (lambda () (letrec* ((g8668 y)) g8668))))
                                    g8667)
                                   (letrec*
                                    ((x-cnd8669
                                      (begin
                                        (write '(funapp 3463 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3463 60))
                                           (display "\n")
                                           'posn)))))
                                    (if x-cnd8669
                                      (letrec*
                                       ((g8670
                                         (lambda ()
                                           (letrec* ((g8671 this)) g8671))))
                                       g8670)
                                      (letrec*
                                       ((x-cnd8672
                                         (begin
                                           (write '(funapp 3472 42))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3472 53))
                                              (display "\n")
                                              'move-toward/speed)))))
                                       (if x-cnd8672
                                         (letrec*
                                          ((g8673
                                            (lambda (p speed)
                                              (letrec*
                                               ((g8674
                                                 (letrec*
                                                  ((δx
                                                    (letrec*
                                                     ((x8675
                                                       (letrec*
                                                        ((x8676
                                                          (begin
                                                            (write
                                                             '(funapp 3484 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3484
                                                                  67))
                                                               (display "\n")
                                                               'x)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3485 57))
                                                          (display "\n")
                                                          (x8676)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3486 54))
                                                       (display "\n")
                                                       (- x8675 x))))
                                                   (δy
                                                    (letrec*
                                                     ((x8677
                                                       (letrec*
                                                        ((x8678
                                                          (begin
                                                            (write
                                                             '(funapp 3491 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3491
                                                                  67))
                                                               (display "\n")
                                                               'y)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3492 57))
                                                          (display "\n")
                                                          (x8678)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3493 54))
                                                       (display "\n")
                                                       (- x8677 y))))
                                                   (move-distance
                                                    (letrec*
                                                     ((x8679
                                                       (letrec*
                                                        ((x8681
                                                          (begin
                                                            (write
                                                             '(funapp 3498 65))
                                                            (display "\n")
                                                            (abs δx)))
                                                         (x8680
                                                          (begin
                                                            (write
                                                             '(funapp 3499 65))
                                                            (display "\n")
                                                            (abs δy))))
                                                        (begin
                                                          (write
                                                           '(funapp 3500 57))
                                                          (display "\n")
                                                          (max x8681 x8680)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3501 54))
                                                       (display "\n")
                                                       (min speed x8679)))))
                                                  (letrec*
                                                   ((g8682
                                                     (letrec*
                                                      ((x-cnd8683
                                                        (letrec*
                                                         ((x8685
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3507
                                                                66))
                                                             (display "\n")
                                                             (abs δx)))
                                                          (x8684
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3508
                                                                66))
                                                             (display "\n")
                                                             (abs δy))))
                                                         (begin
                                                           (write
                                                            '(funapp 3509 58))
                                                           (display "\n")
                                                           (< x8685 x8684)))))
                                                      (if x-cnd8683
                                                        (letrec*
                                                         ((g8686
                                                           (letrec*
                                                            ((x8689
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3515
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3515
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8687
                                                              (letrec*
                                                               ((x-cnd8688
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3519
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δy))))
                                                               (if x-cnd8688
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3523
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3526
                                                                 61))
                                                              (display "\n")
                                                              (x8689
                                                               0
                                                               x8687)))))
                                                         g8686)
                                                        (letrec*
                                                         ((g8690
                                                           (letrec*
                                                            ((x8693
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3532
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3532
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8691
                                                              (letrec*
                                                               ((x-cnd8692
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3536
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δx))))
                                                               (if x-cnd8692
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3540
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3543
                                                                 61))
                                                              (display "\n")
                                                              (x8693
                                                               x8691
                                                               0)))))
                                                         g8690)))))
                                                   g8682))))
                                               g8674))))
                                          g8673)
                                         (letrec*
                                          ((x-cnd8694
                                            (begin
                                              (write '(funapp 3549 55))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3549 66))
                                                 (display "\n")
                                                 'move)))))
                                          (if x-cnd8694
                                            (letrec*
                                             ((g8695
                                               (lambda (δx δy)
                                                 (letrec*
                                                  ((g8696
                                                    (letrec*
                                                     ((x8698
                                                       (begin
                                                         (write
                                                          '(funapp 3557 62))
                                                         (display "\n")
                                                         (+ x δx)))
                                                      (x8697
                                                       (begin
                                                         (write
                                                          '(funapp 3558 62))
                                                         (display "\n")
                                                         (+ y δy))))
                                                     (begin
                                                       (write
                                                        '(funapp 3559 54))
                                                       (display "\n")
                                                       (new-posn
                                                        x8698
                                                        x8697)))))
                                                  g8696))))
                                             g8695)
                                            (letrec*
                                             ((x-cnd8699
                                               (begin
                                                 (write '(funapp 3564 48))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 3564 59))
                                                    (display "\n")
                                                    'draw-on/image)))))
                                             (if x-cnd8699
                                               (letrec*
                                                ((g8700
                                                  (lambda (img scn)
                                                    (letrec*
                                                     ((g8701
                                                       (begin
                                                         (write
                                                          '(funapp 3571 56))
                                                         (display "\n")
                                                         (place-image
                                                          img
                                                          x
                                                          y
                                                          scn))))
                                                     g8701))))
                                                g8700)
                                               (letrec*
                                                ((x-cnd8702
                                                  (begin
                                                    (write '(funapp 3580 51))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 3580 62))
                                                       (display "\n")
                                                       'dist)))))
                                                (if x-cnd8702
                                                  (letrec*
                                                   ((g8703
                                                     (lambda (p)
                                                       (letrec*
                                                        ((g8704
                                                          (letrec*
                                                           ((x8705
                                                             (letrec*
                                                              ((x8710
                                                                (letrec*
                                                                 ((x8711
                                                                   (letrec*
                                                                    ((x8712
                                                                      (letrec*
                                                                       ((x8713
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3597
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3598
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'y)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3599
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8713)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3600
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8712
                                                                       y)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3603
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8711))))
                                                               (x8706
                                                                (letrec*
                                                                 ((x8707
                                                                   (letrec*
                                                                    ((x8708
                                                                      (letrec*
                                                                       ((x8709
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3611
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3612
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'x)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3613
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8709)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3614
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8708
                                                                       x)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3617
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8707)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3618
                                                                   63))
                                                                (display "\n")
                                                                (+
                                                                 x8710
                                                                 x8706)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3621
                                                                60))
                                                             (display "\n")
                                                             (sqrt x8705)))))
                                                        g8704))))
                                                   g8703)
                                                  (letrec*
                                                   ((g8714 "unknown message"))
                                                   g8714)))))))))))))))))
                           g8662))))
                      (letrec* ((g8715 this)) g8715))))
                   g8661)))
               (w0
                (letrec*
                 ((x8729
                   (letrec*
                    ((x8730
                      (begin
                        (write '(funapp 3632 43))
                        (display "\n")
                        (new-posn 0 0))))
                    (begin
                      (write '(funapp 3632 60))
                      (display "\n")
                      (new-player x8730))))
                  (x8728
                   (begin
                     (write '(funapp 3633 26))
                     (display "\n")
                     (new-posn 0 0)))
                  (x8716
                   (letrec*
                    ((x8721
                      (letrec*
                       ((x8726
                         (letrec*
                          ((x8727
                            (begin
                              (write '(funapp 3640 35))
                              (display "\n")
                              (new-posn 100 300))))
                          (begin
                            (write '(funapp 3641 27))
                            (display "\n")
                            (new-zombie x8727))))
                        (x8722
                         (letrec*
                          ((x8724
                            (letrec*
                             ((x8725
                               (begin
                                 (write '(funapp 3646 38))
                                 (display "\n")
                                 (new-posn 100 200))))
                             (begin
                               (write '(funapp 3647 30))
                               (display "\n")
                               (new-zombie x8725))))
                           (x8723
                            (begin
                              (write '(funapp 3648 35))
                              (display "\n")
                              (new-mt-zombies))))
                          (begin
                            (write '(funapp 3649 27))
                            (display "\n")
                            (new-cons-zombies x8724 x8723)))))
                       (begin
                         (write '(funapp 3650 24))
                         (display "\n")
                         (new-cons-zombies x8726 x8722))))
                     (x8717
                      (letrec*
                       ((x8719
                         (letrec*
                          ((x8720
                            (begin
                              (write '(funapp 3655 35))
                              (display "\n")
                              (new-posn 200 200))))
                          (begin
                            (write '(funapp 3656 27))
                            (display "\n")
                            (new-zombie x8720))))
                        (x8718
                         (begin
                           (write '(funapp 3657 32))
                           (display "\n")
                           (new-mt-zombies))))
                       (begin
                         (write '(funapp 3658 24))
                         (display "\n")
                         (new-cons-zombies x8719 x8718)))))
                    (begin
                      (write '(funapp 3659 21))
                      (display "\n")
                      (new-horde x8721 x8717)))))
                 (begin
                   (write '(funapp 3660 18))
                   (display "\n")
                   (new-world x8729 x8728 x8716)))))
              (letrec*
               ((g8731
                 (begin
                   (write '(funapp 3663 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 3664 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8733
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3668 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3668 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3668 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3668 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8734
                              (begin
                                (write '(funapp 3671 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8735
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8736
                                           (letrec*
                                            ((x8737
                                              (letrec*
                                               ((x8738
                                                 (begin
                                                   (write '(funapp 3680 50))
                                                   (display "\n")
                                                   (any/c j7581 k7582 g7580))))
                                               (begin
                                                 (write '(funapp 3681 42))
                                                 (display "\n")
                                                 (f7583 x8738)))))
                                            (begin
                                              (write '(funapp 3682 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7581
                                               k7582
                                               x8737)))))
                                         g8736))))
                                    g8735))
                                 xj7578
                                 xk7579
                                 image/c))))
                            g8734)))
                         (x8732 (input)))
                        (begin
                          (write '(funapp 3690 21))
                          (display "\n")
                          (x8733 x8732)))
                       (letrec*
                        ((x8741
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3694 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3694 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3694 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3694 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8742
                              (begin
                                (write '(funapp 3697 27))
                                (display "\n")
                                ((lambda (j7588 k7589 f7590)
                                   (letrec*
                                    ((g8743
                                      (lambda (g7586 g7587)
                                        (letrec*
                                         ((g8744
                                           (letrec*
                                            ((x8745
                                              (letrec*
                                               ((x8747
                                                 (begin
                                                   (write '(funapp 3706 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7586)))
                                                (x8746
                                                 (begin
                                                   (write '(funapp 3707 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7587))))
                                               (begin
                                                 (write '(funapp 3708 42))
                                                 (display "\n")
                                                 (f7590 x8747 x8746)))))
                                            (begin
                                              (write '(funapp 3709 39))
                                              (display "\n")
                                              (image/c j7588 k7589 x8745)))))
                                         g8744))))
                                    g8743))
                                 xj7584
                                 xk7585
                                 empty-scene))))
                            g8742)))
                         (x8740 (input))
                         (x8739 (input)))
                        (begin
                          (write '(funapp 3718 21))
                          (display "\n")
                          (x8741 x8740 x8739)))
                       (letrec*
                        ((x8752
                          (letrec*
                           ((xj7591
                             (begin
                               (write '(funapp 3722 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3722 37))
                                  (display "\n")
                                  'module))))
                            (xk7592
                             (begin
                               (write '(funapp 3722 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3722 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8753
                              (begin
                                (write '(funapp 3725 27))
                                (display "\n")
                                ((lambda (j7597 k7598 f7599)
                                   (letrec*
                                    ((g8754
                                      (lambda (g7593 g7594 g7595 g7596)
                                        (letrec*
                                         ((g8755
                                           (letrec*
                                            ((x8756
                                              (letrec*
                                               ((x8760
                                                 (begin
                                                   (write '(funapp 3734 50))
                                                   (display "\n")
                                                   (image/c/c
                                                    j7597
                                                    k7598
                                                    g7593)))
                                                (x8759
                                                 (begin
                                                   (write '(funapp 3735 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7594)))
                                                (x8758
                                                 (begin
                                                   (write '(funapp 3736 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7595)))
                                                (x8757
                                                 (begin
                                                   (write '(funapp 3737 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7597
                                                    k7598
                                                    g7596))))
                                               (begin
                                                 (write '(funapp 3738 42))
                                                 (display "\n")
                                                 (f7599
                                                  x8760
                                                  x8759
                                                  x8758
                                                  x8757)))))
                                            (begin
                                              (write '(funapp 3739 39))
                                              (display "\n")
                                              (image/c j7597 k7598 x8756)))))
                                         g8755))))
                                    g8754))
                                 xj7591
                                 xk7592
                                 place-image))))
                            g8753)))
                         (x8751 (input))
                         (x8750 (input))
                         (x8749 (input))
                         (x8748
                          (begin
                            (write '(funapp 3749 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3749 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3749 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3750 21))
                          (display "\n")
                          (x8752 x8751 x8750 x8749 x8748)))
                       (letrec*
                        ((x8764
                          (letrec*
                           ((xj7600
                             (begin
                               (write '(funapp 3754 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3754 37))
                                  (display "\n")
                                  'module))))
                            (xk7601
                             (begin
                               (write '(funapp 3754 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3754 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8765
                              (begin
                                (write '(funapp 3757 27))
                                (display "\n")
                                ((lambda (j7605 k7606 f7607)
                                   (letrec*
                                    ((g8766
                                      (lambda (g7602 g7603 g7604)
                                        (letrec*
                                         ((g8767
                                           (letrec*
                                            ((x8768
                                              (letrec*
                                               ((x8771
                                                 (begin
                                                   (write '(funapp 3766 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7605
                                                    k7606
                                                    g7602)))
                                                (x8770
                                                 (begin
                                                   (write '(funapp 3767 50))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7603)))
                                                (x8769
                                                 (begin
                                                   (write '(funapp 3769 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7604))))
                                               (begin
                                                 (write '(funapp 3770 42))
                                                 (display "\n")
                                                 (f7607 x8771 x8770 x8769)))))
                                            (begin
                                              (write '(funapp 3771 39))
                                              (display "\n")
                                              (image/c j7605 k7606 x8768)))))
                                         g8767))))
                                    g8766))
                                 xj7600
                                 xk7601
                                 circle))))
                            g8765)))
                         (x8763 (input))
                         (x8762 (input))
                         (x8761 (input)))
                        (begin
                          (write '(funapp 3781 21))
                          (display "\n")
                          (x8764 x8763 x8762 x8761)))
                       (letrec*
                        ((x8775
                          (letrec*
                           ((xj7608
                             (begin
                               (write '(funapp 3785 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3785 37))
                                  (display "\n")
                                  'module))))
                            (xk7609
                             (begin
                               (write '(funapp 3785 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3785 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8776
                              (begin
                                (write '(funapp 3788 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g8777
                                      (lambda (g7610 g7611 g7612)
                                        (letrec*
                                         ((g8778
                                           (letrec*
                                            ((x8779
                                              (letrec*
                                               ((x8782
                                                 (begin
                                                   (write '(funapp 3797 50))
                                                   (display "\n")
                                                   (player/c
                                                    j7613
                                                    k7614
                                                    g7610)))
                                                (x8781
                                                 (begin
                                                   (write '(funapp 3798 50))
                                                   (display "\n")
                                                   (posn/c j7613 k7614 g7611)))
                                                (x8780
                                                 (begin
                                                   (write '(funapp 3799 50))
                                                   (display "\n")
                                                   (horde/c
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3800 42))
                                                 (display "\n")
                                                 (f7615 x8782 x8781 x8780)))))
                                            (begin
                                              (write '(funapp 3801 39))
                                              (display "\n")
                                              (world/c j7613 k7614 x8779)))))
                                         g8778))))
                                    g8777))
                                 xj7608
                                 xk7609
                                 new-world))))
                            g8776)))
                         (x8774 (input))
                         (x8773 (input))
                         (x8772 (input)))
                        (begin
                          (write '(funapp 3811 21))
                          (display "\n")
                          (x8775 x8774 x8773 x8772)))
                       (letrec*
                        ((x8784
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3815 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3815 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3815 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3815 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8785
                              (begin
                                (write '(funapp 3818 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g8786
                                      (lambda (g7618)
                                        (letrec*
                                         ((g8787
                                           (letrec*
                                            ((x8788
                                              (letrec*
                                               ((x8789
                                                 (begin
                                                   (write '(funapp 3827 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3828 42))
                                                 (display "\n")
                                                 (f7621 x8789)))))
                                            (begin
                                              (write '(funapp 3829 39))
                                              (display "\n")
                                              (player/c j7619 k7620 x8788)))))
                                         g8787))))
                                    g8786))
                                 xj7616
                                 xk7617
                                 new-player))))
                            g8785)))
                         (x8783 (input)))
                        (begin
                          (write '(funapp 3837 21))
                          (display "\n")
                          (x8784 x8783)))
                       (letrec*
                        ((x8792
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3841 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3841 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3841 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3841 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8793
                              (begin
                                (write '(funapp 3844 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g8794
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g8795
                                           (letrec*
                                            ((x8796
                                              (letrec*
                                               ((x8798
                                                 (begin
                                                   (write '(funapp 3853 50))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x8797
                                                 (begin
                                                   (write '(funapp 3855 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3856 42))
                                                 (display "\n")
                                                 (f7628 x8798 x8797)))))
                                            (begin
                                              (write '(funapp 3857 39))
                                              (display "\n")
                                              (horde/c j7626 k7627 x8796)))))
                                         g8795))))
                                    g8794))
                                 xj7622
                                 xk7623
                                 new-horde))))
                            g8793)))
                         (x8791 (input))
                         (x8790 (input)))
                        (begin
                          (write '(funapp 3866 21))
                          (display "\n")
                          (x8792 x8791 x8790)))
                       (letrec*
                        ((x8801
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3870 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3870 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3870 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3870 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8802
                              (begin
                                (write '(funapp 3873 27))
                                (display "\n")
                                ((lambda (j7633 k7634 f7635)
                                   (letrec*
                                    ((g8803
                                      (lambda (g7631 g7632)
                                        (letrec*
                                         ((g8804
                                           (letrec*
                                            ((x8805
                                              (letrec*
                                               ((x8807
                                                 (begin
                                                   (write '(funapp 3882 50))
                                                   (display "\n")
                                                   (zombie/c
                                                    j7633
                                                    k7634
                                                    g7631)))
                                                (x8806
                                                 (begin
                                                   (write '(funapp 3884 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7633
                                                    k7634
                                                    g7632))))
                                               (begin
                                                 (write '(funapp 3885 42))
                                                 (display "\n")
                                                 (f7635 x8807 x8806)))))
                                            (begin
                                              (write '(funapp 3886 39))
                                              (display "\n")
                                              (zombies/c j7633 k7634 x8805)))))
                                         g8804))))
                                    g8803))
                                 xj7629
                                 xk7630
                                 new-cons-zombies))))
                            g8802)))
                         (x8800 (input))
                         (x8799 (input)))
                        (begin
                          (write '(funapp 3895 21))
                          (display "\n")
                          (x8801 x8800 x8799)))
                       (letrec*
                        ((xj7636
                          (begin
                            (write '(funapp 3897 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3897 34))
                               (display "\n")
                               'module))))
                         (xk7637
                          (begin
                            (write '(funapp 3897 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3897 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8808
                           (begin
                             (write '(funapp 3900 24))
                             (display "\n")
                             ((lambda (j7638 k7639 f7640)
                                (letrec*
                                 ((g8809
                                   (lambda ()
                                     (letrec*
                                      ((g8810
                                        (letrec*
                                         ((x8811
                                           (begin
                                             (write '(funapp 3907 44))
                                             (display "\n")
                                             (f7640))))
                                         (begin
                                           (write '(funapp 3908 36))
                                           (display "\n")
                                           (zombies/c j7638 k7639 x8811)))))
                                      g8810))))
                                 g8809))
                              xj7636
                              xk7637
                              new-mt-zombies))))
                         g8808))
                       (letrec*
                        ((x8813
                          (letrec*
                           ((xj7641
                             (begin
                               (write '(funapp 3918 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3918 37))
                                  (display "\n")
                                  'module))))
                            (xk7642
                             (begin
                               (write '(funapp 3918 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3918 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8814
                              (begin
                                (write '(funapp 3921 27))
                                (display "\n")
                                ((lambda (j7644 k7645 f7646)
                                   (letrec*
                                    ((g8815
                                      (lambda (g7643)
                                        (letrec*
                                         ((g8816
                                           (letrec*
                                            ((x8817
                                              (letrec*
                                               ((x8818
                                                 (begin
                                                   (write '(funapp 3930 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7644
                                                    k7645
                                                    g7643))))
                                               (begin
                                                 (write '(funapp 3931 42))
                                                 (display "\n")
                                                 (f7646 x8818)))))
                                            (begin
                                              (write '(funapp 3932 39))
                                              (display "\n")
                                              (zombie/c j7644 k7645 x8817)))))
                                         g8816))))
                                    g8815))
                                 xj7641
                                 xk7642
                                 new-zombie))))
                            g8814)))
                         (x8812 (input)))
                        (begin
                          (write '(funapp 3940 21))
                          (display "\n")
                          (x8813 x8812)))
                       (letrec*
                        ((x8821
                          (letrec*
                           ((xj7647
                             (begin
                               (write '(funapp 3944 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3944 37))
                                  (display "\n")
                                  'module))))
                            (xk7648
                             (begin
                               (write '(funapp 3944 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3944 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8822
                              (begin
                                (write '(funapp 3947 27))
                                (display "\n")
                                ((lambda (j7651 k7652 f7653)
                                   (letrec*
                                    ((g8823
                                      (lambda (g7649 g7650)
                                        (letrec*
                                         ((g8824
                                           (letrec*
                                            ((x8825
                                              (letrec*
                                               ((x8827
                                                 (begin
                                                   (write '(funapp 3956 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7649)))
                                                (x8826
                                                 (begin
                                                   (write '(funapp 3957 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7650))))
                                               (begin
                                                 (write '(funapp 3958 42))
                                                 (display "\n")
                                                 (f7653 x8827 x8826)))))
                                            (begin
                                              (write '(funapp 3959 39))
                                              (display "\n")
                                              (posn/c j7651 k7652 x8825)))))
                                         g8824))))
                                    g8823))
                                 xj7647
                                 xk7648
                                 new-posn))))
                            g8822)))
                         (x8820 (input))
                         (x8819 (input)))
                        (begin
                          (write '(funapp 3968 21))
                          (display "\n")
                          (x8821 x8820 x8819)))
                       (letrec*
                        ((xj7654
                          (begin
                            (write '(funapp 3970 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3970 34))
                               (display "\n")
                               'module))))
                         (xk7655
                          (begin
                            (write '(funapp 3970 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3970 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8828
                           (begin
                             (write '(funapp 3971 38))
                             (display "\n")
                             (world/c xj7654 xk7655 w0))))
                         g8828))))))))
               g8731))))
           g7685))))
       g7668)))
    g7667)))
