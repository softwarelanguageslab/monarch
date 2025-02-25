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
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7810
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7812
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7813
                                 (letrec*
                                  ((x7814
                                    (letrec*
                                     ((x7816
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7815
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7372 x7816 x7815)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7814)))))
                               g7813))))
                          g7812))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7811
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7811))))))
                  g7810)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7817
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7819
                            (lambda (g7375)
                              (letrec*
                               ((g7820
                                 (letrec*
                                  ((x7821
                                    (letrec*
                                     ((x7822
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7378 x7822)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7821)))))
                               g7820))))
                          g7819))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7818
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7818))))))
                  g7817)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7823
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7825
                            (lambda (g7381)
                              (letrec*
                               ((g7826
                                 (letrec*
                                  ((x7827
                                    (letrec*
                                     ((x7828
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7384 x7828)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7827)))))
                               g7826))))
                          g7825))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7824
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7824))))))
                  g7823)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7829
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7831
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7832
                                 (letrec*
                                  ((x7833
                                    (letrec*
                                     ((x7835
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7834
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7391 x7835 x7834)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7833)))))
                               g7832))))
                          g7831))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7830
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7830))))))
                  g7829)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7836
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7838
                            (lambda (g7394)
                              (letrec*
                               ((g7839
                                 (letrec*
                                  ((x7840
                                    (letrec*
                                     ((x7841
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7397 x7841)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7840)))))
                               g7839))))
                          g7838))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7837
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7837))))))
                  g7836)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7842
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7844
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7845
                                 (letrec*
                                  ((x7846
                                    (letrec*
                                     ((x7848
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7847
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7404 x7848 x7847)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7846)))))
                               g7845))))
                          g7844))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7843
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7843))))))
                  g7842)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7850)))))
                   g7849)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7855))))
                    (g7853
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7856))))
                    (g7854
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7857
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7861))))
                          (x7858
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7859)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7860 x7858)))))))
                   g7854)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7863)))))
                   g7862)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7867)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (cdadar
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7870)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7869)))))
                   g7868)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7875))))
                    (g7873
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7876))))
                    (g7874
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 749 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 750 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7877
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7878 res))
                       g7878))))
                   g7874)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7885)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7884)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7883)))))
                   g7882)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7891 k)))))
                         (if x-cnd7890
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7892)))))))))
                   g7887)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7894)))))
                   g7893)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        ""
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7902))))
                          (x7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7900)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7901 x7899)))))))
                   g7896)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7908
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7908))))
                   g7905)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7912)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7910)))))
                   g7909)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7916))))
                    (g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x-cnd7918
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7918
                        x
                        (letrec*
                         ((x7920
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7919
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7920 x7919)))))))
                   g7915)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7921
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7921)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x-cnd7923
                        (letrec*
                         ((x7924 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7924)))))
                      (if x-cnd7923
                        (letrec*
                         ((x7925 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7925)))
                        #f))))
                   g7922)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7927
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7927 9)))))
                      (letrec*
                       ((g7928
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7929
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7929 10)))))
                            (letrec*
                             ((g7930
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7931
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7931 32))))))
                             g7930)))))
                       g7928))))
                   g7926)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7934)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7933)))))
                   g7932)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7936)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7938
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7938)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7939 #f)) g7939)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7941)))))
                   g7940)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7945
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7943)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7947
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7948
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7948
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7949
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7950
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7950
                                       (letrec*
                                        ((x-cnd7951
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7951
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7952
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7953
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7953
                                             (letrec*
                                              ((x-cnd7954
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7954
                                                (letrec*
                                                 ((x-cnd7955
                                                   (letrec*
                                                    ((x7957
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7956
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7957 x7956)))))
                                                 (if x-cnd7955
                                                   (letrec*
                                                    ((x7959
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7958
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7959 x7958)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7960
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7961
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7961
                                                (letrec*
                                                 ((x-cnd7962
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7962
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7963
                                                       (letrec*
                                                        ((x-cnd7964
                                                          (letrec*
                                                           ((x7965
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
                                                             (display "\n")
                                                             (= x7965 n)))))
                                                        (if x-cnd7964
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7966
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1002
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7967
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7968
                                                                           (letrec*
                                                                            ((x7970
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1011
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7969
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1015
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1018
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7970
                                                                               x7969)))))
                                                                         (if x-cnd7968
                                                                           (letrec*
                                                                            ((x7971
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1024
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1027
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7971)))
                                                                           #f)))))
                                                                    g7967))))
                                                                g7966))))
                                                           (letrec*
                                                            ((g7972
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7972))
                                                          #f))))
                                                     g7963))
                                                   #f))
                                                #f)))))
                                         g7960)))))
                                   g7952)))))
                             g7949)))))
                       g7947))))
                   g7946)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7976)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7975)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7974)))))
                   g7973)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (letrec*
                            ((x7980
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7980)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7979)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7978)))))
                   g7977)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7981
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7981)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1076 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1077 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7987
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7988 res))
                       g7988))))
                   g7984)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7989
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7989)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7993))))
                    (g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7995
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7995))))
                   g7992)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7998)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7997)))))
                   g7996)))
               (cdaddr
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
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x8002)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x8001)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x8000)))))
                   g7999)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x8005)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x8004)))))
                   g8003)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8007
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x8008)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x8007)))))
                   g8006)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x8012))))
                    (g8010
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x8014)))))
                   g8011)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x8016
                        (letrec*
                         ((x8017
                           (letrec*
                            ((x8018
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x8018)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x8017)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x8016)))))
                   g8015)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x8021
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x8021))))
                    (g8020
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g8020)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8022
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g8022)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x8024
                        (letrec*
                         ((x8025
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x8025)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x8024)))))
                   g8023)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8026
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g8026)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x8029
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x8029))))
                    (g8028
                     (letrec*
                      ((x-cnd8030
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8030
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x8033
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x8034))))
                          (x8031
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x8032)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x8033 x8031)))))))
                   g8028)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x8038)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x8037)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x8036)))))
                   g8035)))
               (cddadr
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x8042)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x8041)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x8040)))))
                   g8039)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((x8045
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x8045))))
                    (g8044
                     (letrec*
                      ((x8046
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x8046)))))
                   g8044)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x8048
                        (letrec*
                         ((x8049
                           (letrec*
                            ((x8050
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x8050)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x8049)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x8048)))))
                   g8047)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x8054))))
                    (g8052
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x8055))))
                    (g8053
                     (letrec*
                      ((x-cnd8056
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8056
                        (letrec*
                         ((g8057
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g8057)
                        (letrec*
                         ((x-cnd8058
                           (letrec*
                            ((x8059
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x8059)))))
                         (if x-cnd8058
                           (letrec*
                            ((g8060
                              (letrec*
                               ((x8061
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x8061)))))
                            g8060)
                           (letrec*
                            ((x-cnd8062
                              (letrec*
                               ((x8063
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x8063)))))
                            (if x-cnd8062
                              (letrec*
                               ((g8064
                                 (letrec*
                                  ((x8066
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x8065
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x8066 x8065)))))
                               g8064)
                              (letrec*
                               ((x-cnd8067
                                 (letrec*
                                  ((x8068
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x8068)))))
                               (if x-cnd8067
                                 (letrec*
                                  ((g8069
                                    (letrec*
                                     ((x8072
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x8071
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8070
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x8072 x8071 x8070)))))
                                  g8069)
                                 (letrec*
                                  ((x-cnd8073
                                    (letrec*
                                     ((x8074
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x8074)))))
                                  (if x-cnd8073
                                    (letrec*
                                     ((g8075
                                       (letrec*
                                        ((x8079
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x8078
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8077
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8076
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x8079 x8078 x8077 x8076)))))
                                     g8075)
                                    (letrec*
                                     ((x-cnd8080
                                       (letrec*
                                        ((x8081
                                          (letrec*
                                           ((x8082
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x8082)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x8081)))))
                                     (if x-cnd8080
                                       (letrec*
                                        ((g8083
                                          (letrec*
                                           ((x8089
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x8088
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8087
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8086
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8084
                                             (letrec*
                                              ((x8085
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x8085)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x8089
                                              x8088
                                              x8087
                                              x8086
                                              x8084)))))
                                        g8083)
                                       (letrec*
                                        ((x-cnd8090
                                          (letrec*
                                           ((x8091
                                             (letrec*
                                              ((x8092
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x8092)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x8091)))))
                                        (if x-cnd8090
                                          (letrec*
                                           ((g8093
                                             (letrec*
                                              ((x8101
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8100
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8099
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8098
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8096
                                                (letrec*
                                                 ((x8097
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x8097))))
                                               (x8094
                                                (letrec*
                                                 ((x8095
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x8095)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x8101
                                                 x8100
                                                 x8099
                                                 x8098
                                                 x8096
                                                 x8094)))))
                                           g8093)
                                          (letrec*
                                           ((x-cnd8102
                                             (letrec*
                                              ((x8103
                                                (letrec*
                                                 ((x8104
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x8104)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x8103)))))
                                           (if x-cnd8102
                                             (letrec*
                                              ((g8105
                                                (letrec*
                                                 ((x8115
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8114
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8113
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8112
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8110
                                                   (letrec*
                                                    ((x8111
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x8111))))
                                                  (x8108
                                                   (letrec*
                                                    ((x8109
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x8109))))
                                                  (x8106
                                                   (letrec*
                                                    ((x8107
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x8107)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x8115
                                                    x8114
                                                    x8113
                                                    x8112
                                                    x8110
                                                    x8108
                                                    x8106)))))
                                              g8105)
                                             (letrec*
                                              ((g8116
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8116)))))))))))))))))))
                   g8053)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x8119))))
                    (g8118
                     (letrec*
                      ((x-cnd8120
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8120
                        #f
                        (letrec*
                         ((x-cnd8121
                           (letrec*
                            ((x8122
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x8122 e)))))
                         (if x-cnd8121
                           l
                           (letrec*
                            ((x8123
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x8123)))))))))
                   g8118)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8125
                        (letrec*
                         ((x8126
                           (letrec*
                            ((x8127
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x8127)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x8126)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x8125)))))
                   g8124)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8128
                     (letrec*
                      ((x8129
                        (letrec*
                         ((x8130
                           (letrec*
                            ((x8131
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x8131)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x8130)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x8129)))))
                   g8128)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8132
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g8132)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8133
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x8135))))
                    (g8134
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g8134)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8137
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8137))))
                   g8136)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x8139)))))
                   g8138)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8141
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8141
                           (letrec*
                            ((x8142
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x8142)))
                           #f))))
                      (letrec*
                       ((g8143
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g8143))))
                   g8140)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8145
                        (letrec*
                         ((x8146
                           (letrec*
                            ((x8147
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x8147)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x8146)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x8145)))))
                   g8144)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x-cnd8149
                        (letrec*
                         ((x8150 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x8150 c)))))
                      (if x-cnd8149
                        (letrec*
                         ((x8151 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x8151)))
                        #f))))
                   g8148)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x8154))))
                    (g8153
                     (letrec*
                      ((x-cnd8155
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8155
                        #f
                        (letrec*
                         ((x-cnd8156
                           (letrec*
                            ((x8157
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x8157 k)))))
                         (if x-cnd8156
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8158
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x8158)))))))))
                   g8153)))
               (not (lambda (x) (letrec* ((g8159 (if x #f #t))) g8159)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8160
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g8160)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((x8163
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x8163))))
                    (g8162
                     (letrec*
                      ((x-cnd8164
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8164
                        #f
                        (letrec*
                         ((x-cnd8165
                           (letrec*
                            ((x8166
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x8166 e)))))
                         (if x-cnd8165
                           l
                           (letrec*
                            ((x8167
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x8167)))))))))
                   g8162)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x8169
                        (letrec*
                         ((x8170
                           (letrec*
                            ((x8171
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x8171)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x8170)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x8169)))))
                   g8168)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8172
                     (letrec*
                      ((x8174
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x8174))))
                    (g8173
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8175
                             (letrec*
                              ((x-cnd8176
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8176
                                0
                                (letrec*
                                 ((x8177
                                   (letrec*
                                    ((x8178
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x8178)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x8177)))))))
                           g8175))))
                      (letrec*
                       ((g8179
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g8179))))
                   g8173)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8180
                     (letrec*
                      ((x8183
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x8183))))
                    (g8181
                     (letrec*
                      ((x8184
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8184))))
                    (g8182
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8185
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8185))))
                   g8182)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8186
                     (letrec*
                      ((x8187
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x8187)))))
                   g8186)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((x8189
                        (letrec*
                         ((x8190
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x8190)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x8189)))))
                   g8188)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8191
                     (letrec*
                      ((x8193
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x8193))))
                    (g8192
                     (letrec*
                      ((x-cnd8194
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8194
                        #f
                        (letrec*
                         ((x-cnd8195
                           (letrec*
                            ((x8196
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x8196 k)))))
                         (if x-cnd8195
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8197
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x8197)))))))))
                   g8192)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x8199
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x8199)))))
                   g8198)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8200
                     (letrec*
                      ((x8203
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8203))))
                    (g8201
                     (letrec*
                      ((x8204
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x8205)))))
                   g8202)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8206
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8207
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8207))))
                   g8206)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8208
                     (letrec*
                      ((x8211
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x8211))))
                    (g8209
                     (letrec*
                      ((x8212
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x8212))))
                    (g8210
                     (letrec*
                      ((x-cnd8213
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8213
                        #t
                        (letrec*
                         ((x-cnd8214
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8214
                           (letrec*
                            ((g8215
                              (letrec*
                               ((x8217
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x8217))))
                             (g8216
                              (letrec*
                               ((x8218
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x8218)))))
                            g8216)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g8210)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8219
                     (letrec*
                      ((x8221
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x8221))))
                    (g8220
                     (letrec*
                      ((x-cnd8222
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8222
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8220)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8223
                     (letrec*
                      ((x8226
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x8226))))
                    (g8224
                     (letrec*
                      ((x8227
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8227))))
                    (g8225
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8228
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8228))))
                   g8225)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8229
                     (letrec*
                      ((x8230
                        (letrec*
                         ((x8231
                           (letrec*
                            ((x8232
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x8232)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x8231)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x8230)))))
                   g8229)))
               (newline (lambda () (letrec* ((g8233 #f)) g8233)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8234
                     (letrec*
                      ((x8236
                        (letrec*
                         ((x8237
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8237))))
                       (x8235
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8236 x8235)))))
                   g8234)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((x8242
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8242))))
                    (g8239
                     (letrec*
                      ((x8243
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8243))))
                    (g8240
                     (letrec*
                      ((x8244
                        (letrec*
                         ((x8245
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8245)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8244))))
                    (g8241
                     (letrec*
                      ((x-cnd8246
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8246
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8248
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8247
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8248 x8247)))))))
                   g8241)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8249
                     (letrec*
                      ((x-cnd8250
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8250
                        a
                        (letrec*
                         ((x8251
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8251)))))))
                   g8249)))
               (image
                (lambda ()
                  (letrec*
                   ((g8252
                     (begin
                       (write '(funapp 1696 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1696 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1696 62))
                          (display "\n")
                          '())))))
                   g8252)))
               (image?
                (lambda (image7656)
                  (letrec*
                   ((g8253
                     (letrec*
                      ((x8254
                        (begin
                          (write '(funapp 1701 39))
                          (display "\n")
                          (car image7656))))
                      (begin
                        (write '(funapp 1701 57))
                        (display "\n")
                        (eq?
                         x8254
                         (begin
                           (write '(funapp 1701 67))
                           (display "\n")
                           'image))))))
                   g8253)))
               (image/c
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8255
                     (begin
                       (write '(funapp 1705 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1705 47))
                          (display "\n")
                          '())))))
                   g8255)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8256
                     (begin (write '(funapp 1706 60)) (display "\n") (image))))
                   g8256)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8257
                     (begin (write '(funapp 1708 54)) (display "\n") (image))))
                   g8257)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8258
                     (begin (write '(funapp 1709 57)) (display "\n") (image))))
                   g8258)))
               (min
                (lambda (x y)
                  (letrec*
                   ((g8259
                     (letrec*
                      ((x-cnd8260
                        (begin
                          (write '(funapp 1714 43))
                          (display "\n")
                          (<= x y))))
                      (if x-cnd8260 x y))))
                   g8259)))
               (max
                (lambda (x y)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x-cnd8262
                        (begin
                          (write '(funapp 1720 43))
                          (display "\n")
                          (>= x y))))
                      (if x-cnd8262 x y))))
                   g8261)))
               (sqr
                (lambda (x)
                  (letrec*
                   ((g8263
                     (begin (write '(funapp 1722 50)) (display "\n") (* x x))))
                   g8263)))
               (WIDTH 400)
               (HEIGHT 400)
               (MT-SCENE
                (begin
                  (write '(funapp 1725 26))
                  (display "\n")
                  (empty-scene WIDTH HEIGHT)))
               (PLAYER-SPEED 4)
               (ZOMBIE-SPEED 2)
               (ZOMBIE-RADIUS 20)
               (PLAYER-RADIUS 20)
               (PLAYER-IMG
                (begin
                  (write '(funapp 1730 28))
                  (display "\n")
                  (circle PLAYER-RADIUS "solid" "green")))
               (posn/c
                (lambda (j7410 k7411 f7412)
                  (letrec*
                   ((g8264
                     (lambda (g7409)
                       (letrec*
                        ((g8265
                          (letrec*
                           ((x7413
                             (begin
                               (write '(funapp 1740 30))
                               (display "\n")
                               ((lambda (g7417 g7418 g7419)
                                  (letrec*
                                   ((g8266
                                     (letrec*
                                      ((x-cnd8267
                                        (begin
                                          (write '(funapp 1745 39))
                                          (display "\n")
                                          ((lambda (v7416)
                                             (letrec*
                                              ((g8268
                                                (letrec*
                                                 ((x-cnd8269
                                                   (begin
                                                     (write '(funapp 1749 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 1749 62))
                                                        (display "\n")
                                                        'x)
                                                      v7416))))
                                                 (if x-cnd8269
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8270
                                                      (begin
                                                        (write
                                                         '(funapp 1753 61))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1753 65))
                                                           (display "\n")
                                                           'y)
                                                         v7416))))
                                                    (if x-cnd8270
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8271
                                                         (begin
                                                           (write
                                                            '(funapp 1758 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1758
                                                                 58))
                                                              (display "\n")
                                                              'posn)
                                                            v7416))))
                                                       (if x-cnd8271
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8272
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1763
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1764
                                                                    57))
                                                                 (display "\n")
                                                                 'move-toward/speed)
                                                               v7416))))
                                                          (if x-cnd8272
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8273
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1770
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1771
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'draw-on/image)
                                                                  v7416))))
                                                             (if x-cnd8273
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1775
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1776
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'dist)
                                                                  v7416))))))))))))))
                                              g8268))
                                           g7419))))
                                      (if x-cnd8267
                                        g7419
                                        (begin
                                          (write '(blame g7417 1782 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7417)))))))
                                   g8266))
                                j7410
                                k7411
                                g7409))))
                           (letrec*
                            ((g8274
                              (letrec*
                               ((x8276
                                 (begin
                                   (write '(funapp 1810 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8277
                                         (letrec*
                                          ((x-cnd8278
                                            (begin
                                              (write '(funapp 1814 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 1814 64))
                                                 (display "\n")
                                                 'x)))))
                                          (if x-cnd8278
                                            (letrec*
                                             ((g8279
                                               (lambda (j7420 k7421 f7422)
                                                 (letrec*
                                                  ((g8280
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8281
                                                         (letrec*
                                                          ((x8282
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1825
                                                                 65))
                                                              (display "\n")
                                                              (f7422))))
                                                          (begin
                                                            (write
                                                             '(funapp 1826 57))
                                                            (display "\n")
                                                            (real?
                                                             j7420
                                                             k7421
                                                             x8282)))))
                                                       g8281))))
                                                  g8280))))
                                             g8279)
                                            (letrec*
                                             ((x-cnd8283
                                               (begin
                                                 (write '(funapp 1834 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 1834 67))
                                                    (display "\n")
                                                    'y)))))
                                             (if x-cnd8283
                                               (letrec*
                                                ((g8284
                                                  (lambda (j7423 k7424 f7425)
                                                    (letrec*
                                                     ((g8285
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8286
                                                            (letrec*
                                                             ((x8287
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1845
                                                                    68))
                                                                 (display "\n")
                                                                 (f7425))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1846
                                                                  60))
                                                               (display "\n")
                                                               (real?
                                                                j7423
                                                                k7424
                                                                x8287)))))
                                                          g8286))))
                                                     g8285))))
                                                g8284)
                                               (letrec*
                                                ((x-cnd8288
                                                  (begin
                                                    (write '(funapp 1854 59))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 1854 70))
                                                       (display "\n")
                                                       'posn)))))
                                                (if x-cnd8288
                                                  (letrec*
                                                   ((g8289
                                                     (lambda (j7426
                                                              k7427
                                                              f7428)
                                                       (letrec*
                                                        ((g8290
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8291
                                                               (letrec*
                                                                ((x8292
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1865
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7428))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1866
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (posn/c
                                                                   j7426
                                                                   k7427
                                                                   x8292)))))
                                                             g8291))))
                                                        g8290))))
                                                   g8289)
                                                  (letrec*
                                                   ((x-cnd8293
                                                     (begin
                                                       (write
                                                        '(funapp 1875 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 1877 52))
                                                          (display "\n")
                                                          'move-toward/speed)))))
                                                   (if x-cnd8293
                                                     (letrec*
                                                      ((g8294
                                                        (lambda (j7431
                                                                 k7432
                                                                 f7433)
                                                          (letrec*
                                                           ((g8295
                                                             (lambda (g7429
                                                                      g7430)
                                                               (letrec*
                                                                ((g8296
                                                                  (letrec*
                                                                   ((x8297
                                                                     (letrec*
                                                                      ((x8299
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1894
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7431
                                                                           k7432
                                                                           g7429)))
                                                                       (x8298
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1899
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
                                                                           1903
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7433
                                                                         x8299
                                                                         x8298)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1906
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (posn/c
                                                                      j7431
                                                                      k7432
                                                                      x8297)))))
                                                                g8296))))
                                                           g8295))))
                                                      g8294)
                                                     (letrec*
                                                      ((x-cnd8300
                                                        (begin
                                                          (write
                                                           '(funapp 1915 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1917
                                                                55))
                                                             (display "\n")
                                                             'draw-on/image)))))
                                                      (if x-cnd8300
                                                        (letrec*
                                                         ((g8301
                                                           (lambda (j7436
                                                                    k7437
                                                                    f7438)
                                                             (letrec*
                                                              ((g8302
                                                                (lambda (g7434
                                                                         g7435)
                                                                  (letrec*
                                                                   ((g8303
                                                                     (letrec*
                                                                      ((x8304
                                                                        (letrec*
                                                                         ((x8306
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1934
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7436
                                                                              k7437
                                                                              g7434)))
                                                                          (x8305
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1939
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
                                                                              1943
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7438
                                                                            x8306
                                                                            x8305)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1946
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (image/c
                                                                         j7436
                                                                         k7437
                                                                         x8304)))))
                                                                   g8303))))
                                                              g8302))))
                                                         g8301)
                                                        (letrec*
                                                         ((x-cnd8307
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1955
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1955
                                                                   69))
                                                                (display "\n")
                                                                'dist)))))
                                                         (if x-cnd8307
                                                           (letrec*
                                                            ((g8308
                                                              (lambda (j7440
                                                                       k7441
                                                                       f7442)
                                                                (letrec*
                                                                 ((g8309
                                                                   (lambda (g7439)
                                                                     (letrec*
                                                                      ((g8310
                                                                        (letrec*
                                                                         ((x8311
                                                                           (letrec*
                                                                            ((x8312
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1971
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
                                                                                 1975
                                                                                 75))
                                                                              (display
                                                                               "\n")
                                                                              (f7442
                                                                               x8312)))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1977
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (real?
                                                                            j7440
                                                                            k7441
                                                                            x8311)))))
                                                                      g8310))))
                                                                 g8309))))
                                                            g8308)
                                                           (letrec*
                                                            ((g8313 "error"))
                                                            g8313)))))))))))))))
                                       g8277))
                                    x7413)))
                                (x8275
                                 (begin
                                   (write '(funapp 1989 40))
                                   (display "\n")
                                   (f7412 x7413))))
                               (begin
                                 (write '(funapp 1990 32))
                                 (display "\n")
                                 (x8276 j7410 k7411 x8275)))))
                            g8274))))
                        g8265))))
                   g8264)))
               (player/c
                (lambda (j7444 k7445 f7446)
                  (letrec*
                   ((g8314
                     (lambda (g7443)
                       (letrec*
                        ((g8315
                          (letrec*
                           ((x7447
                             (begin
                               (write '(funapp 2003 30))
                               (display "\n")
                               ((lambda (g7451 g7452 g7453)
                                  (letrec*
                                   ((g8316
                                     (letrec*
                                      ((x-cnd8317
                                        (begin
                                          (write '(funapp 2008 39))
                                          (display "\n")
                                          ((lambda (v7450)
                                             (letrec*
                                              ((g8318
                                                (letrec*
                                                 ((x-cnd8319
                                                   (begin
                                                     (write '(funapp 2012 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2012 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7450))))
                                                 (if x-cnd8319
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8320
                                                      (begin
                                                        (write
                                                         '(funapp 2017 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2017 55))
                                                           (display "\n")
                                                           'move-toward)
                                                         v7450))))
                                                    (if x-cnd8320
                                                      #t
                                                      (begin
                                                        (write
                                                         '(funapp 2020 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2020 55))
                                                           (display "\n")
                                                           'draw-on)
                                                         v7450))))))))
                                              g8318))
                                           g7453))))
                                      (if x-cnd8317
                                        g7453
                                        (begin
                                          (write '(blame g7451 2025 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7451)))))))
                                   g8316))
                                j7444
                                k7445
                                g7443))))
                           (letrec*
                            ((g8321
                              (letrec*
                               ((x8323
                                 (begin
                                   (write '(funapp 2041 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8324
                                         (letrec*
                                          ((x-cnd8325
                                            (begin
                                              (write '(funapp 2045 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2045 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8325
                                            (letrec*
                                             ((g8326
                                               (lambda (j7454 k7455 f7456)
                                                 (letrec*
                                                  ((g8327
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8328
                                                         (letrec*
                                                          ((x8329
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2056
                                                                 65))
                                                              (display "\n")
                                                              (f7456))))
                                                          (begin
                                                            (write
                                                             '(funapp 2057 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7454
                                                             k7455
                                                             x8329)))))
                                                       g8328))))
                                                  g8327))))
                                             g8326)
                                            (letrec*
                                             ((x-cnd8330
                                               (begin
                                                 (write '(funapp 2066 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2066 57))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (if x-cnd8330
                                               (letrec*
                                                ((g8331
                                                  (lambda (j7458 k7459 f7460)
                                                    (letrec*
                                                     ((g8332
                                                       (lambda (g7457)
                                                         (letrec*
                                                          ((g8333
                                                            (letrec*
                                                             ((x8334
                                                               (letrec*
                                                                ((x8335
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2080
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
                                                                     2084
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7460
                                                                   x8335)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2085
                                                                  60))
                                                               (display "\n")
                                                               (player/c
                                                                j7458
                                                                k7459
                                                                x8334)))))
                                                          g8333))))
                                                     g8332))))
                                                g8331)
                                               (letrec*
                                                ((x-cnd8336
                                                  (begin
                                                    (write '(funapp 2094 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2094 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8336
                                                  (letrec*
                                                   ((g8337
                                                     (lambda (j7462
                                                              k7463
                                                              f7464)
                                                       (letrec*
                                                        ((g8338
                                                          (lambda (g7461)
                                                            (letrec*
                                                             ((g8339
                                                               (letrec*
                                                                ((x8340
                                                                  (letrec*
                                                                   ((x8341
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2108
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
                                                                        2112
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7464
                                                                      x8341)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2114
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7462
                                                                   k7463
                                                                   x8340)))))
                                                             g8339))))
                                                        g8338))))
                                                   g8337)
                                                  (letrec*
                                                   ((g8342 "error"))
                                                   g8342)))))))))
                                       g8324))
                                    x7447)))
                                (x8322
                                 (begin
                                   (write '(funapp 2126 40))
                                   (display "\n")
                                   (f7446 x7447))))
                               (begin
                                 (write '(funapp 2127 32))
                                 (display "\n")
                                 (x8323 j7444 k7445 x8322)))))
                            g8321))))
                        g8315))))
                   g8314)))
               (zombie/c
                (lambda (j7466 k7467 f7468)
                  (letrec*
                   ((g8343
                     (lambda (g7465)
                       (letrec*
                        ((g8344
                          (letrec*
                           ((x7469
                             (begin
                               (write '(funapp 2140 30))
                               (display "\n")
                               ((lambda (g7473 g7474 g7475)
                                  (letrec*
                                   ((g8345
                                     (letrec*
                                      ((x-cnd8346
                                        (begin
                                          (write '(funapp 2145 39))
                                          (display "\n")
                                          ((lambda (v7472)
                                             (letrec*
                                              ((g8347
                                                (letrec*
                                                 ((x-cnd8348
                                                   (begin
                                                     (write '(funapp 2149 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2149 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7472))))
                                                 (if x-cnd8348
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8349
                                                      (begin
                                                        (write
                                                         '(funapp 2154 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2154 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7472))))
                                                    (if x-cnd8349
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8350
                                                         (begin
                                                           (write
                                                            '(funapp 2159 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2159
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7472))))
                                                       (if x-cnd8350
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2162 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2163
                                                                 54))
                                                              (display "\n")
                                                              'move-toward)
                                                            v7472))))))))))
                                              g8347))
                                           g7475))))
                                      (if x-cnd8346
                                        g7475
                                        (begin
                                          (write '(blame g7473 2169 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7473)))))))
                                   g8345))
                                j7466
                                k7467
                                g7465))))
                           (letrec*
                            ((g8351
                              (letrec*
                               ((x8353
                                 (begin
                                   (write '(funapp 2189 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8354
                                         (letrec*
                                          ((x-cnd8355
                                            (begin
                                              (write '(funapp 2193 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2193 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8355
                                            (letrec*
                                             ((g8356
                                               (lambda (j7476 k7477 f7478)
                                                 (letrec*
                                                  ((g8357
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8358
                                                         (letrec*
                                                          ((x8359
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2204
                                                                 65))
                                                              (display "\n")
                                                              (f7478))))
                                                          (begin
                                                            (write
                                                             '(funapp 2205 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7476
                                                             k7477
                                                             x8359)))))
                                                       g8358))))
                                                  g8357))))
                                             g8356)
                                            (letrec*
                                             ((x-cnd8360
                                               (begin
                                                 (write '(funapp 2214 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2214 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8360
                                               (letrec*
                                                ((g8361
                                                  (lambda (j7481 k7482 f7483)
                                                    (letrec*
                                                     ((g8362
                                                       (lambda (g7479 g7480)
                                                         (letrec*
                                                          ((g8363
                                                            (letrec*
                                                             ((x8364
                                                               (letrec*
                                                                ((x8366
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2228
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7481
                                                                     k7482
                                                                     g7479)))
                                                                 (x8365
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2233
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
                                                                     2237
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7483
                                                                   x8366
                                                                   x8365)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2240
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7481
                                                                k7482
                                                                x8364)))))
                                                          g8363))))
                                                     g8362))))
                                                g8361)
                                               (letrec*
                                                ((x-cnd8367
                                                  (begin
                                                    (write '(funapp 2249 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2249 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8367
                                                  (letrec*
                                                   ((g8368
                                                     (lambda (j7485
                                                              k7486
                                                              f7487)
                                                       (letrec*
                                                        ((g8369
                                                          (lambda (g7484)
                                                            (letrec*
                                                             ((g8370
                                                               (letrec*
                                                                ((x8371
                                                                  (letrec*
                                                                   ((x8372
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2263
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
                                                                        2267
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7487
                                                                      x8372)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2269
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7485
                                                                   k7486
                                                                   x8371)))))
                                                             g8370))))
                                                        g8369))))
                                                   g8368)
                                                  (letrec*
                                                   ((x-cnd8373
                                                     (begin
                                                       (write
                                                        '(funapp 2278 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2278 63))
                                                          (display "\n")
                                                          'move-toward)))))
                                                   (if x-cnd8373
                                                     (letrec*
                                                      ((g8374
                                                        (lambda (j7489
                                                                 k7490
                                                                 f7491)
                                                          (letrec*
                                                           ((g8375
                                                             (lambda (g7488)
                                                               (letrec*
                                                                ((g8376
                                                                  (letrec*
                                                                   ((x8377
                                                                     (letrec*
                                                                      ((x8378
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2294
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
                                                                           2298
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7491
                                                                         x8378)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2300
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (zombie/c
                                                                      j7489
                                                                      k7490
                                                                      x8377)))))
                                                                g8376))))
                                                           g8375))))
                                                      g8374)
                                                     (letrec*
                                                      ((g8379 "error"))
                                                      g8379)))))))))))
                                       g8354))
                                    x7469)))
                                (x8352
                                 (begin
                                   (write '(funapp 2312 40))
                                   (display "\n")
                                   (f7468 x7469))))
                               (begin
                                 (write '(funapp 2313 32))
                                 (display "\n")
                                 (x8353 j7466 k7467 x8352)))))
                            g8351))))
                        g8344))))
                   g8343)))
               (horde/c
                (lambda (j7493 k7494 f7495)
                  (letrec*
                   ((g8380
                     (lambda (g7492)
                       (letrec*
                        ((g8381
                          (letrec*
                           ((x7496
                             (begin
                               (write '(funapp 2326 30))
                               (display "\n")
                               ((lambda (g7500 g7501 g7502)
                                  (letrec*
                                   ((g8382
                                     (letrec*
                                      ((x-cnd8383
                                        (begin
                                          (write '(funapp 2331 39))
                                          (display "\n")
                                          ((lambda (v7499)
                                             (letrec*
                                              ((g8384
                                                (letrec*
                                                 ((x-cnd8385
                                                   (begin
                                                     (write '(funapp 2335 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2335 62))
                                                        (display "\n")
                                                        'dead)
                                                      v7499))))
                                                 (if x-cnd8385
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8386
                                                      (begin
                                                        (write
                                                         '(funapp 2340 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2340 55))
                                                           (display "\n")
                                                           'undead)
                                                         v7499))))
                                                    (if x-cnd8386
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8387
                                                         (begin
                                                           (write
                                                            '(funapp 2345 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2345
                                                                 58))
                                                              (display "\n")
                                                              'draw-on)
                                                            v7499))))
                                                       (if x-cnd8387
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8388
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2350
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2351
                                                                    57))
                                                                 (display "\n")
                                                                 'touching?)
                                                               v7499))))
                                                          (if x-cnd8388
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8389
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2357
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2358
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'move-toward)
                                                                  v7499))))
                                                             (if x-cnd8389
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2362
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2363
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'eat-brains)
                                                                  v7499))))))))))))))
                                              g8384))
                                           g7502))))
                                      (if x-cnd8383
                                        g7502
                                        (begin
                                          (write '(blame g7500 2369 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7500)))))))
                                   g8382))
                                j7493
                                k7494
                                g7492))))
                           (letrec*
                            ((g8390
                              (letrec*
                               ((x8392
                                 (begin
                                   (write '(funapp 2393 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8393
                                         (letrec*
                                          ((x-cnd8394
                                            (begin
                                              (write '(funapp 2397 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2397 64))
                                                 (display "\n")
                                                 'dead)))))
                                          (if x-cnd8394
                                            (letrec*
                                             ((g8395
                                               (lambda (j7503 k7504 f7505)
                                                 (letrec*
                                                  ((g8396
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8397
                                                         (letrec*
                                                          ((x8398
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2408
                                                                 65))
                                                              (display "\n")
                                                              (f7505))))
                                                          (begin
                                                            (write
                                                             '(funapp 2409 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7503
                                                             k7504
                                                             x8398)))))
                                                       g8397))))
                                                  g8396))))
                                             g8395)
                                            (letrec*
                                             ((x-cnd8399
                                               (begin
                                                 (write '(funapp 2417 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2417 67))
                                                    (display "\n")
                                                    'undead)))))
                                             (if x-cnd8399
                                               (letrec*
                                                ((g8400
                                                  (lambda (j7506 k7507 f7508)
                                                    (letrec*
                                                     ((g8401
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8402
                                                            (letrec*
                                                             ((x8403
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2428
                                                                    68))
                                                                 (display "\n")
                                                                 (f7508))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2429
                                                                  60))
                                                               (display "\n")
                                                               (zombies/c
                                                                j7506
                                                                k7507
                                                                x8403)))))
                                                          g8402))))
                                                     g8401))))
                                                g8400)
                                               (letrec*
                                                ((x-cnd8404
                                                  (begin
                                                    (write '(funapp 2438 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2438 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8404
                                                  (letrec*
                                                   ((g8405
                                                     (lambda (j7510
                                                              k7511
                                                              f7512)
                                                       (letrec*
                                                        ((g8406
                                                          (lambda (g7509)
                                                            (letrec*
                                                             ((g8407
                                                               (letrec*
                                                                ((x8408
                                                                  (letrec*
                                                                   ((x8409
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2452
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
                                                                        2456
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7512
                                                                      x8409)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2458
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7510
                                                                   k7511
                                                                   x8408)))))
                                                             g8407))))
                                                        g8406))))
                                                   g8405)
                                                  (letrec*
                                                   ((x-cnd8410
                                                     (begin
                                                       (write
                                                        '(funapp 2467 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2467 63))
                                                          (display "\n")
                                                          'touching?)))))
                                                   (if x-cnd8410
                                                     (letrec*
                                                      ((g8411
                                                        (lambda (j7514
                                                                 k7515
                                                                 f7516)
                                                          (letrec*
                                                           ((g8412
                                                             (lambda (g7513)
                                                               (letrec*
                                                                ((g8413
                                                                  (letrec*
                                                                   ((x8414
                                                                     (letrec*
                                                                      ((x8415
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2483
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
                                                                           2487
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7516
                                                                         x8415)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2489
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7514
                                                                      k7515
                                                                      x8414)))))
                                                                g8413))))
                                                           g8412))))
                                                      g8411)
                                                     (letrec*
                                                      ((x-cnd8416
                                                        (begin
                                                          (write
                                                           '(funapp 2498 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2500
                                                                55))
                                                             (display "\n")
                                                             'move-toward)))))
                                                      (if x-cnd8416
                                                        (letrec*
                                                         ((g8417
                                                           (lambda (j7518
                                                                    k7519
                                                                    f7520)
                                                             (letrec*
                                                              ((g8418
                                                                (lambda (g7517)
                                                                  (letrec*
                                                                   ((g8419
                                                                     (letrec*
                                                                      ((x8420
                                                                        (letrec*
                                                                         ((x8421
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2516
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
                                                                              2520
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7520
                                                                            x8421)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2522
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (horde/c
                                                                         j7518
                                                                         k7519
                                                                         x8420)))))
                                                                   g8419))))
                                                              g8418))))
                                                         g8417)
                                                        (letrec*
                                                         ((x-cnd8422
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2531
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   2533
                                                                   58))
                                                                (display "\n")
                                                                'eat-brains)))))
                                                         (if x-cnd8422
                                                           (letrec*
                                                            ((g8423
                                                              (lambda (j7521
                                                                       k7522
                                                                       f7523)
                                                                (letrec*
                                                                 ((g8424
                                                                   (lambda ()
                                                                     (letrec*
                                                                      ((g8425
                                                                        (letrec*
                                                                         ((x8426
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2547
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (f7523))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2548
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (horde/c
                                                                            j7521
                                                                            k7522
                                                                            x8426)))))
                                                                      g8425))))
                                                                 g8424))))
                                                            g8423)
                                                           (letrec*
                                                            ((g8427 "error"))
                                                            g8427)))))))))))))))
                                       g8393))
                                    x7496)))
                                (x8391
                                 (begin
                                   (write '(funapp 2560 40))
                                   (display "\n")
                                   (f7495 x7496))))
                               (begin
                                 (write '(funapp 2561 32))
                                 (display "\n")
                                 (x8392 j7493 k7494 x8391)))))
                            g8390))))
                        g8381))))
                   g8380)))
               (zombies/c
                (lambda (j7525 k7526 f7527)
                  (letrec*
                   ((g8428
                     (lambda (g7524)
                       (letrec*
                        ((g8429
                          (letrec*
                           ((x7528
                             (begin
                               (write '(funapp 2574 30))
                               (display "\n")
                               ((lambda (g7532 g7533 g7534)
                                  (letrec*
                                   ((g8430
                                     (letrec*
                                      ((x-cnd8431
                                        (begin
                                          (write '(funapp 2579 39))
                                          (display "\n")
                                          ((lambda (v7531)
                                             (letrec*
                                              ((g8432
                                                (letrec*
                                                 ((x-cnd8433
                                                   (begin
                                                     (write '(funapp 2584 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2584 52))
                                                        (display "\n")
                                                        'move-toward)
                                                      v7531))))
                                                 (if x-cnd8433
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8434
                                                      (begin
                                                        (write
                                                         '(funapp 2589 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2589 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7531))))
                                                    (if x-cnd8434
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8435
                                                         (begin
                                                           (write
                                                            '(funapp 2594 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2594
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7531))))
                                                       (if x-cnd8435
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2597 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2598
                                                                 54))
                                                              (display "\n")
                                                              'kill-all)
                                                            v7531))))))))))
                                              g8432))
                                           g7534))))
                                      (if x-cnd8431
                                        g7534
                                        (begin
                                          (write '(blame g7532 2604 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7532)))))))
                                   g8430))
                                j7525
                                k7526
                                g7524))))
                           (letrec*
                            ((g8436
                              (letrec*
                               ((x8438
                                 (begin
                                   (write '(funapp 2622 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8439
                                         (letrec*
                                          ((x-cnd8440
                                            (begin
                                              (write '(funapp 2626 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2626 64))
                                                 (display "\n")
                                                 'move-toward)))))
                                          (if x-cnd8440
                                            (letrec*
                                             ((g8441
                                               (lambda (j7536 k7537 f7538)
                                                 (letrec*
                                                  ((g8442
                                                    (lambda (g7535)
                                                      (letrec*
                                                       ((g8443
                                                         (letrec*
                                                          ((x8444
                                                            (letrec*
                                                             ((x8445
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2640
                                                                    62))
                                                                 (display "\n")
                                                                 (posn/c
                                                                  j7536
                                                                  k7537
                                                                  g7535))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2644
                                                                  60))
                                                               (display "\n")
                                                               (f7538
                                                                x8445)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2645 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7536
                                                             k7537
                                                             x8444)))))
                                                       g8443))))
                                                  g8442))))
                                             g8441)
                                            (letrec*
                                             ((x-cnd8446
                                               (begin
                                                 (write '(funapp 2654 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2654 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8446
                                               (letrec*
                                                ((g8447
                                                  (lambda (j7541 k7542 f7543)
                                                    (letrec*
                                                     ((g8448
                                                       (lambda (g7539 g7540)
                                                         (letrec*
                                                          ((g8449
                                                            (letrec*
                                                             ((x8450
                                                               (letrec*
                                                                ((x8452
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2668
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7541
                                                                     k7542
                                                                     g7539)))
                                                                 (x8451
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2673
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
                                                                     2677
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7543
                                                                   x8452
                                                                   x8451)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2680
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7541
                                                                k7542
                                                                x8450)))))
                                                          g8449))))
                                                     g8448))))
                                                g8447)
                                               (letrec*
                                                ((x-cnd8453
                                                  (begin
                                                    (write '(funapp 2689 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2689 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8453
                                                  (letrec*
                                                   ((g8454
                                                     (lambda (j7545
                                                              k7546
                                                              f7547)
                                                       (letrec*
                                                        ((g8455
                                                          (lambda (g7544)
                                                            (letrec*
                                                             ((g8456
                                                               (letrec*
                                                                ((x8457
                                                                  (letrec*
                                                                   ((x8458
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2703
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
                                                                        2707
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7547
                                                                      x8458)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2709
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7545
                                                                   k7546
                                                                   x8457)))))
                                                             g8456))))
                                                        g8455))))
                                                   g8454)
                                                  (letrec*
                                                   ((x-cnd8459
                                                     (begin
                                                       (write
                                                        '(funapp 2718 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2718 63))
                                                          (display "\n")
                                                          'kill-all)))))
                                                   (if x-cnd8459
                                                     (letrec*
                                                      ((g8460
                                                        (lambda (j7549
                                                                 k7550
                                                                 f7551)
                                                          (letrec*
                                                           ((g8461
                                                             (lambda (g7548)
                                                               (letrec*
                                                                ((g8462
                                                                  (letrec*
                                                                   ((x8463
                                                                     (letrec*
                                                                      ((x8464
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2734
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
                                                                           2738
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7551
                                                                         x8464)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2740
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (horde/c
                                                                      j7549
                                                                      k7550
                                                                      x8463)))))
                                                                g8462))))
                                                           g8461))))
                                                      g8460)
                                                     (letrec*
                                                      ((g8465 "error"))
                                                      g8465)))))))))))
                                       g8439))
                                    x7528)))
                                (x8437
                                 (begin
                                   (write '(funapp 2752 40))
                                   (display "\n")
                                   (f7527 x7528))))
                               (begin
                                 (write '(funapp 2753 32))
                                 (display "\n")
                                 (x8438 j7525 k7526 x8437)))))
                            g8436))))
                        g8429))))
                   g8428)))
               (world/c
                (lambda (j7553 k7554 f7555)
                  (letrec*
                   ((g8466
                     (lambda (g7552)
                       (letrec*
                        ((g8467
                          (letrec*
                           ((x7556
                             (begin
                               (write '(funapp 2766 30))
                               (display "\n")
                               ((lambda (g7560 g7561 g7562)
                                  (letrec*
                                   ((g8468
                                     (letrec*
                                      ((x-cnd8469
                                        (begin
                                          (write '(funapp 2771 39))
                                          (display "\n")
                                          ((lambda (v7559)
                                             (letrec*
                                              ((g8470
                                                (letrec*
                                                 ((x-cnd8471
                                                   (begin
                                                     (write '(funapp 2776 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2776 52))
                                                        (display "\n")
                                                        'on-mouse)
                                                      v7559))))
                                                 (if x-cnd8471
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8472
                                                      (begin
                                                        (write
                                                         '(funapp 2781 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2781 55))
                                                           (display "\n")
                                                           'on-tick)
                                                         v7559))))
                                                    (if x-cnd8472
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8473
                                                         (begin
                                                           (write
                                                            '(funapp 2786 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2786
                                                                 58))
                                                              (display "\n")
                                                              'to-draw)
                                                            v7559))))
                                                       (if x-cnd8473
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2789 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2790
                                                                 54))
                                                              (display "\n")
                                                              'stop-when)
                                                            v7559))))))))))
                                              g8470))
                                           g7562))))
                                      (if x-cnd8469
                                        g7562
                                        (begin
                                          (write '(blame g7560 2796 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7560)))))))
                                   g8468))
                                j7553
                                k7554
                                g7552))))
                           (letrec*
                            ((g8474
                              (letrec*
                               ((x8476
                                 (begin
                                   (write '(funapp 2814 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8477
                                         (letrec*
                                          ((x-cnd8478
                                            (begin
                                              (write '(funapp 2818 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2818 64))
                                                 (display "\n")
                                                 'on-mouse)))))
                                          (if x-cnd8478
                                            (letrec*
                                             ((g8479
                                               (lambda (j7566 k7567 f7568)
                                                 (letrec*
                                                  ((g8480
                                                    (lambda (g7563 g7564 g7565)
                                                      (letrec*
                                                       ((g8481
                                                         (letrec*
                                                          ((x8482
                                                            (letrec*
                                                             ((x8485
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2832
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7563)))
                                                              (x8484
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2837
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7564)))
                                                              (x8483
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2842
                                                                    62))
                                                                 (display "\n")
                                                                 (string?
                                                                  j7566
                                                                  k7567
                                                                  g7565))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2846
                                                                  60))
                                                               (display "\n")
                                                               (f7568
                                                                x8485
                                                                x8484
                                                                x8483)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2850 57))
                                                            (display "\n")
                                                            (world/c
                                                             j7566
                                                             k7567
                                                             x8482)))))
                                                       g8481))))
                                                  g8480))))
                                             g8479)
                                            (letrec*
                                             ((x-cnd8486
                                               (begin
                                                 (write '(funapp 2858 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2858 67))
                                                    (display "\n")
                                                    'on-tick)))))
                                             (if x-cnd8486
                                               (letrec*
                                                ((g8487
                                                  (lambda (j7569 k7570 f7571)
                                                    (letrec*
                                                     ((g8488
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8489
                                                            (letrec*
                                                             ((x8490
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2869
                                                                    68))
                                                                 (display "\n")
                                                                 (f7571))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2870
                                                                  60))
                                                               (display "\n")
                                                               (world/c
                                                                j7569
                                                                k7570
                                                                x8490)))))
                                                          g8489))))
                                                     g8488))))
                                                g8487)
                                               (letrec*
                                                ((x-cnd8491
                                                  (begin
                                                    (write '(funapp 2879 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2879 60))
                                                       (display "\n")
                                                       'to-draw)))))
                                                (if x-cnd8491
                                                  (letrec*
                                                   ((g8492
                                                     (lambda (j7572
                                                              k7573
                                                              f7574)
                                                       (letrec*
                                                        ((g8493
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8494
                                                               (letrec*
                                                                ((x8495
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2890
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7574))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2891
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7572
                                                                   k7573
                                                                   x8495)))))
                                                             g8494))))
                                                        g8493))))
                                                   g8492)
                                                  (letrec*
                                                   ((x-cnd8496
                                                     (begin
                                                       (write
                                                        '(funapp 2900 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2900 63))
                                                          (display "\n")
                                                          'stop-when)))))
                                                   (if x-cnd8496
                                                     (letrec*
                                                      ((g8497
                                                        (lambda (j7575
                                                                 k7576
                                                                 f7577)
                                                          (letrec*
                                                           ((g8498
                                                             (lambda ()
                                                               (letrec*
                                                                ((g8499
                                                                  (letrec*
                                                                   ((x8500
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2914
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (f7577))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2915
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7575
                                                                      k7576
                                                                      x8500)))))
                                                                g8499))))
                                                           g8498))))
                                                      g8497)
                                                     (letrec*
                                                      ((g8501 "error"))
                                                      g8501)))))))))))
                                       g8477))
                                    x7556)))
                                (x8475
                                 (begin
                                   (write '(funapp 2927 40))
                                   (display "\n")
                                   (f7555 x7556))))
                               (begin
                                 (write '(funapp 2928 32))
                                 (display "\n")
                                 (x8476 j7553 k7554 x8475)))))
                            g8474))))
                        g8467))))
                   g8466)))
               (new-world
                (lambda (player mouse zombies)
                  (letrec*
                   ((g8502
                     (lambda (msg)
                       (letrec*
                        ((g8503
                          (letrec*
                           ((x-cnd8504
                             (begin
                               (write '(funapp 2940 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 2940 51))
                                  (display "\n")
                                  'on-mouse)))))
                           (if x-cnd8504
                             (letrec*
                              ((g8505
                                (lambda (x y me)
                                  (letrec*
                                   ((g8506
                                     (letrec*
                                      ((x8507
                                        (letrec*
                                         ((x-cnd8508
                                           (begin
                                             (write '(funapp 2950 54))
                                             (display "\n")
                                             (equal? me "leave"))))
                                         (if x-cnd8508
                                           (letrec*
                                            ((x8509
                                              (begin
                                                (write '(funapp 2953 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2953 60))
                                                   (display "\n")
                                                   'posn)))))
                                            (begin
                                              (write '(funapp 2954 45))
                                              (display "\n")
                                              (x8509)))
                                           (begin
                                             (write '(funapp 2955 44))
                                             (display "\n")
                                             (new-posn x y))))))
                                      (begin
                                        (write '(funapp 2956 39))
                                        (display "\n")
                                        (new-world player x8507 zombies)))))
                                   g8506))))
                              g8505)
                             (letrec*
                              ((x-cnd8510
                                (begin
                                  (write '(funapp 2960 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 2960 54))
                                     (display "\n")
                                     'on-tick)))))
                              (if x-cnd8510
                                (letrec*
                                 ((g8511
                                   (lambda ()
                                     (letrec*
                                      ((g8512
                                        (letrec*
                                         ((x8519
                                           (letrec*
                                            ((x8520
                                              (begin
                                                (write '(funapp 2970 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2970 60))
                                                   (display "\n")
                                                   'move-toward)))))
                                            (begin
                                              (write '(funapp 2971 45))
                                              (display "\n")
                                              (x8520 mouse))))
                                          (x8513
                                           (letrec*
                                            ((x8516
                                              (letrec*
                                               ((x8517
                                                 (letrec*
                                                  ((x8518
                                                    (begin
                                                      (write '(funapp 2979 53))
                                                      (display "\n")
                                                      (zombies
                                                       (begin
                                                         (write
                                                          '(funapp 2979 61))
                                                         (display "\n")
                                                         'eat-brains)))))
                                                  (begin
                                                    (write '(funapp 2980 51))
                                                    (display "\n")
                                                    (x8518)))))
                                               (begin
                                                 (write '(funapp 2981 48))
                                                 (display "\n")
                                                 (x8517
                                                  (begin
                                                    (write '(funapp 2981 54))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (x8514
                                              (letrec*
                                               ((x8515
                                                 (begin
                                                   (write '(funapp 2984 56))
                                                   (display "\n")
                                                   (player
                                                    (begin
                                                      (write '(funapp 2984 63))
                                                      (display "\n")
                                                      'posn)))))
                                               (begin
                                                 (write '(funapp 2985 48))
                                                 (display "\n")
                                                 (x8515)))))
                                            (begin
                                              (write '(funapp 2986 45))
                                              (display "\n")
                                              (x8516 x8514)))))
                                         (begin
                                           (write '(funapp 2987 42))
                                           (display "\n")
                                           (new-world x8519 mouse x8513)))))
                                      g8512))))
                                 g8511)
                                (letrec*
                                 ((x-cnd8521
                                   (begin
                                     (write '(funapp 2991 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 2991 57))
                                        (display "\n")
                                        'to-draw)))))
                                 (if x-cnd8521
                                   (letrec*
                                    ((g8522
                                      (lambda ()
                                        (letrec*
                                         ((g8523
                                           (letrec*
                                            ((x8526
                                              (begin
                                                (write '(funapp 2999 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2999 60))
                                                   (display "\n")
                                                   'draw-on))))
                                             (x8524
                                              (letrec*
                                               ((x8525
                                                 (begin
                                                   (write '(funapp 3002 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3002 64))
                                                      (display "\n")
                                                      'draw-on)))))
                                               (begin
                                                 (write '(funapp 3003 48))
                                                 (display "\n")
                                                 (x8525 MT-SCENE)))))
                                            (begin
                                              (write '(funapp 3004 45))
                                              (display "\n")
                                              (x8526 x8524)))))
                                         g8523))))
                                    g8522)
                                   (letrec*
                                    ((x-cnd8527
                                      (begin
                                        (write '(funapp 3008 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3008 60))
                                           (display "\n")
                                           'stop-when)))))
                                    (if x-cnd8527
                                      (letrec*
                                       ((g8528
                                         (lambda ()
                                           (letrec*
                                            ((g8529
                                              (letrec*
                                               ((x8532
                                                 (begin
                                                   (write '(funapp 3016 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3016 64))
                                                      (display "\n")
                                                      'touching?))))
                                                (x8530
                                                 (letrec*
                                                  ((x8531
                                                    (begin
                                                      (write '(funapp 3019 59))
                                                      (display "\n")
                                                      (player
                                                       (begin
                                                         (write
                                                          '(funapp 3019 66))
                                                         (display "\n")
                                                         'posn)))))
                                                  (begin
                                                    (write '(funapp 3020 51))
                                                    (display "\n")
                                                    (x8531)))))
                                               (begin
                                                 (write '(funapp 3021 48))
                                                 (display "\n")
                                                 (x8532 x8530)))))
                                            g8529))))
                                       g8528)
                                      (letrec*
                                       ((g8533 "unknown message"))
                                       g8533)))))))))))
                        g8503))))
                   g8502)))
               (new-player
                (lambda (p)
                  (letrec*
                   ((g8534
                     (lambda (msg)
                       (letrec*
                        ((g8535
                          (letrec*
                           ((x-cnd8536
                             (begin
                               (write '(funapp 3037 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3037 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8536
                             (letrec*
                              ((g8537 (lambda () (letrec* ((g8538 p)) g8538))))
                              g8537)
                             (letrec*
                              ((x-cnd8539
                                (begin
                                  (write '(funapp 3043 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3043 54))
                                     (display "\n")
                                     'move-toward)))))
                              (if x-cnd8539
                                (letrec*
                                 ((g8540
                                   (lambda (q)
                                     (letrec*
                                      ((g8541
                                        (letrec*
                                         ((x8542
                                           (letrec*
                                            ((x8543
                                              (begin
                                                (write '(funapp 3053 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3053 55))
                                                   (display "\n")
                                                   'move-toward/speed)))))
                                            (begin
                                              (write '(funapp 3054 45))
                                              (display "\n")
                                              (x8543 q PLAYER-SPEED)))))
                                         (begin
                                           (write '(funapp 3055 42))
                                           (display "\n")
                                           (new-player x8542)))))
                                      g8541))))
                                 g8540)
                                (letrec*
                                 ((x-cnd8544
                                   (begin
                                     (write '(funapp 3059 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3059 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8544
                                   (letrec*
                                    ((g8545
                                      (lambda (scn)
                                        (letrec*
                                         ((g8546
                                           (letrec*
                                            ((x8547
                                              (begin
                                                (write '(funapp 3067 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3067 55))
                                                   (display "\n")
                                                   'draw-on/image)))))
                                            (begin
                                              (write '(funapp 3068 45))
                                              (display "\n")
                                              (x8547 PLAYER-IMG scn)))))
                                         g8546))))
                                    g8545)
                                   (letrec*
                                    ((g8548 "unknown message"))
                                    g8548)))))))))
                        g8535))))
                   g8534)))
               (new-horde
                (lambda (undead dead)
                  (letrec*
                   ((g8549
                     (lambda (msg)
                       (letrec*
                        ((g8550
                          (letrec*
                           ((x-cnd8551
                             (begin
                               (write '(funapp 3084 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3084 51))
                                  (display "\n")
                                  'dead)))))
                           (if x-cnd8551
                             (letrec*
                              ((g8552
                                (lambda () (letrec* ((g8553 dead)) g8553))))
                              g8552)
                             (letrec*
                              ((x-cnd8554
                                (begin
                                  (write '(funapp 3091 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3091 54))
                                     (display "\n")
                                     'undead)))))
                              (if x-cnd8554
                                (letrec*
                                 ((g8555
                                   (lambda ()
                                     (letrec* ((g8556 undead)) g8556))))
                                 g8555)
                                (letrec*
                                 ((x-cnd8557
                                   (begin
                                     (write '(funapp 3099 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3099 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8557
                                   (letrec*
                                    ((g8558
                                      (lambda (scn)
                                        (letrec*
                                         ((g8559
                                           (letrec*
                                            ((x8562
                                              (begin
                                                (write '(funapp 3107 53))
                                                (display "\n")
                                                (undead
                                                 (begin
                                                   (write '(funapp 3107 60))
                                                   (display "\n")
                                                   'draw-on/color))))
                                             (x8560
                                              (letrec*
                                               ((x8561
                                                 (begin
                                                   (write '(funapp 3110 56))
                                                   (display "\n")
                                                   (dead
                                                    (begin
                                                      (write '(funapp 3110 61))
                                                      (display "\n")
                                                      'draw-on/color)))))
                                               (begin
                                                 (write '(funapp 3111 48))
                                                 (display "\n")
                                                 (x8561 "black" scn)))))
                                            (begin
                                              (write '(funapp 3112 45))
                                              (display "\n")
                                              (x8562 "yellow" x8560)))))
                                         g8559))))
                                    g8558)
                                   (letrec*
                                    ((x-cnd8563
                                      (begin
                                        (write '(funapp 3116 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3116 60))
                                           (display "\n")
                                           'touching?)))))
                                    (if x-cnd8563
                                      (letrec*
                                       ((g8564
                                         (lambda (p)
                                           (letrec*
                                            ((g8565
                                              (letrec*
                                               ((val7263
                                                 (letrec*
                                                  ((x8566
                                                    (begin
                                                      (write '(funapp 3126 59))
                                                      (display "\n")
                                                      (undead
                                                       (begin
                                                         (write
                                                          '(funapp 3126 66))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3127 51))
                                                    (display "\n")
                                                    (x8566 p)))))
                                               (letrec*
                                                ((g8567
                                                  (if val7263
                                                    val7263
                                                    (letrec*
                                                     ((x8568
                                                       (begin
                                                         (write
                                                          '(funapp 3134 56))
                                                         (display "\n")
                                                         (dead
                                                          (begin
                                                            (write
                                                             '(funapp 3134 61))
                                                            (display "\n")
                                                            'touching?)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3135 54))
                                                       (display "\n")
                                                       (x8568 p))))))
                                                g8567))))
                                            g8565))))
                                       g8564)
                                      (letrec*
                                       ((x-cnd8569
                                         (begin
                                           (write '(funapp 3140 52))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3140 63))
                                              (display "\n")
                                              'move-toward)))))
                                       (if x-cnd8569
                                         (letrec*
                                          ((g8570
                                            (lambda (p)
                                              (letrec*
                                               ((g8571
                                                 (letrec*
                                                  ((x8572
                                                    (letrec*
                                                     ((x8573
                                                       (begin
                                                         (write
                                                          '(funapp 3151 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3151 63))
                                                            (display "\n")
                                                            'move-toward)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3152 54))
                                                       (display "\n")
                                                       (x8573 p)))))
                                                  (begin
                                                    (write '(funapp 3153 51))
                                                    (display "\n")
                                                    (new-horde x8572 dead)))))
                                               g8571))))
                                          g8570)
                                         (letrec*
                                          ((x-cnd8574
                                            (begin
                                              (write '(funapp 3158 45))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3158 56))
                                                 (display "\n")
                                                 'eat-brains)))))
                                          (if x-cnd8574
                                            (letrec*
                                             ((g8575
                                               (lambda ()
                                                 (letrec*
                                                  ((g8576
                                                    (letrec*
                                                     ((x8577
                                                       (begin
                                                         (write
                                                          '(funapp 3167 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3167 63))
                                                            (display "\n")
                                                            'kill-all)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3168 54))
                                                       (display "\n")
                                                       (x8577 dead)))))
                                                  g8576))))
                                             g8575)
                                            (letrec*
                                             ((g8578 "unknown message"))
                                             g8578)))))))))))))))
                        g8550))))
                   g8549)))
               (new-cons-zombies
                (lambda (z r)
                  (letrec*
                   ((g8579
                     (lambda (msg)
                       (letrec*
                        ((g8580
                          (letrec*
                           ((x-cnd8581
                             (begin
                               (write '(funapp 3184 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3184 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8581
                             (letrec*
                              ((g8582
                                (lambda (p)
                                  (letrec*
                                   ((g8583
                                     (letrec*
                                      ((x8586
                                        (letrec*
                                         ((x8587
                                           (begin
                                             (write '(funapp 3194 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3194 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3195 42))
                                           (display "\n")
                                           (x8587 p))))
                                       (x8584
                                        (letrec*
                                         ((x8585
                                           (begin
                                             (write '(funapp 3198 50))
                                             (display "\n")
                                             (r
                                              (begin
                                                (write '(funapp 3198 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3199 42))
                                           (display "\n")
                                           (x8585 p)))))
                                      (begin
                                        (write '(funapp 3200 39))
                                        (display "\n")
                                        (new-cons-zombies x8586 x8584)))))
                                   g8583))))
                              g8582)
                             (letrec*
                              ((x-cnd8588
                                (begin
                                  (write '(funapp 3204 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3204 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8588
                                (letrec*
                                 ((g8589
                                   (lambda (c s)
                                     (letrec*
                                      ((g8590
                                        (letrec*
                                         ((x8593
                                           (begin
                                             (write '(funapp 3212 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3212 52))
                                                (display "\n")
                                                'draw-on/color))))
                                          (x8591
                                           (letrec*
                                            ((x8592
                                              (begin
                                                (write '(funapp 3215 53))
                                                (display "\n")
                                                (r
                                                 (begin
                                                   (write '(funapp 3215 55))
                                                   (display "\n")
                                                   'draw-on/color)))))
                                            (begin
                                              (write '(funapp 3216 45))
                                              (display "\n")
                                              (x8592 c s)))))
                                         (begin
                                           (write '(funapp 3217 42))
                                           (display "\n")
                                           (x8593 c x8591)))))
                                      g8590))))
                                 g8589)
                                (letrec*
                                 ((x-cnd8594
                                   (begin
                                     (write '(funapp 3221 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3221 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8594
                                   (letrec*
                                    ((g8595
                                      (lambda (p)
                                        (letrec*
                                         ((g8596
                                           (letrec*
                                            ((val7264
                                              (letrec*
                                               ((x8597
                                                 (begin
                                                   (write '(funapp 3231 56))
                                                   (display "\n")
                                                   (z
                                                    (begin
                                                      (write '(funapp 3231 58))
                                                      (display "\n")
                                                      'touching?)))))
                                               (begin
                                                 (write '(funapp 3232 48))
                                                 (display "\n")
                                                 (x8597 p)))))
                                            (letrec*
                                             ((g8598
                                               (if val7264
                                                 val7264
                                                 (letrec*
                                                  ((x8599
                                                    (begin
                                                      (write '(funapp 3238 59))
                                                      (display "\n")
                                                      (r
                                                       (begin
                                                         (write
                                                          '(funapp 3238 61))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3239 51))
                                                    (display "\n")
                                                    (x8599 p))))))
                                             g8598))))
                                         g8596))))
                                    g8595)
                                   (letrec*
                                    ((x-cnd8600
                                      (begin
                                        (write '(funapp 3244 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3244 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8600
                                      (letrec*
                                       ((g8601
                                         (lambda (dead)
                                           (letrec*
                                            ((g8602
                                              (letrec*
                                               ((x-cnd8603
                                                 (letrec*
                                                  ((val7265
                                                    (letrec*
                                                     ((x8606
                                                       (begin
                                                         (write
                                                          '(funapp 3256 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3256 64))
                                                            (display "\n")
                                                            'touching?))))
                                                      (x8604
                                                       (letrec*
                                                        ((x8605
                                                          (begin
                                                            (write
                                                             '(funapp 3259 65))
                                                            (display "\n")
                                                            (z
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3259
                                                                  67))
                                                               (display "\n")
                                                               'posn)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3260 57))
                                                          (display "\n")
                                                          (x8605)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3261 54))
                                                       (display "\n")
                                                       (x8606 x8604)))))
                                                  (letrec*
                                                   ((g8607
                                                     (if val7265
                                                       val7265
                                                       (letrec*
                                                        ((x8610
                                                          (begin
                                                            (write
                                                             '(funapp 3268 59))
                                                            (display "\n")
                                                            (dead
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3268
                                                                  64))
                                                               (display "\n")
                                                               'touching?))))
                                                         (x8608
                                                          (letrec*
                                                           ((x8609
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3271
                                                                  68))
                                                               (display "\n")
                                                               (z
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     3271
                                                                     70))
                                                                  (display
                                                                   "\n")
                                                                  'posn)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3272
                                                                60))
                                                             (display "\n")
                                                             (x8609)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3273 57))
                                                          (display "\n")
                                                          (x8610 x8608))))))
                                                   g8607))))
                                               (if x-cnd8603
                                                 (letrec*
                                                  ((g8611
                                                    (letrec*
                                                     ((x8613
                                                       (begin
                                                         (write
                                                          '(funapp 3279 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3279 64))
                                                            (display "\n")
                                                            'kill-all))))
                                                      (x8612
                                                       (begin
                                                         (write
                                                          '(funapp 3281 56))
                                                         (display "\n")
                                                         (new-cons-zombies
                                                          z
                                                          dead))))
                                                     (begin
                                                       (write
                                                        '(funapp 3284 54))
                                                       (display "\n")
                                                       (x8613 x8612)))))
                                                  g8611)
                                                 (letrec*
                                                  ((g8614
                                                    (letrec*
                                                     ((res
                                                       (letrec*
                                                        ((x8615
                                                          (begin
                                                            (write
                                                             '(funapp 3291 65))
                                                            (display "\n")
                                                            (r
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3291
                                                                  67))
                                                               (display "\n")
                                                               'kill-all)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3292 57))
                                                          (display "\n")
                                                          (x8615 dead)))))
                                                     (letrec*
                                                      ((g8616
                                                        (letrec*
                                                         ((x8619
                                                           (letrec*
                                                            ((x8620
                                                              (letrec*
                                                               ((x8621
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3301
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (res
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3302
                                                                         66))
                                                                      (display
                                                                       "\n")
                                                                      'undead)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    3303
                                                                    64))
                                                                 (display "\n")
                                                                 (x8621)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3304
                                                                 61))
                                                              (display "\n")
                                                              (new-cons-zombies
                                                               z
                                                               x8620))))
                                                          (x8617
                                                           (letrec*
                                                            ((x8618
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3310
                                                                   63))
                                                                (display "\n")
                                                                (res
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3310
                                                                      67))
                                                                   (display
                                                                    "\n")
                                                                   'dead)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3311
                                                                 61))
                                                              (display "\n")
                                                              (x8618)))))
                                                         (begin
                                                           (write
                                                            '(funapp 3312 58))
                                                           (display "\n")
                                                           (new-horde
                                                            x8619
                                                            x8617)))))
                                                      g8616))))
                                                  g8614)))))
                                            g8602))))
                                       g8601)
                                      (letrec*
                                       ((g8622 "unknown message"))
                                       g8622)))))))))))
                        g8580))))
                   g8579)))
               (new-mt-zombies
                (lambda ()
                  (letrec*
                   ((g8623
                     (lambda (msg)
                       (letrec*
                        ((g8624
                          (letrec*
                           ((x-cnd8625
                             (begin
                               (write '(funapp 3332 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3332 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8625
                             (letrec*
                              ((g8626
                                (lambda (p)
                                  (letrec*
                                   ((g8627
                                     (begin
                                       (write '(funapp 3337 52))
                                       (display "\n")
                                       (new-mt-zombies))))
                                   g8627))))
                              g8626)
                             (letrec*
                              ((x-cnd8628
                                (begin
                                  (write '(funapp 3340 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3340 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8628
                                (letrec*
                                 ((g8629
                                   (lambda (c s) (letrec* ((g8630 s)) g8630))))
                                 g8629)
                                (letrec*
                                 ((x-cnd8631
                                   (begin
                                     (write '(funapp 3347 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3347 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8631
                                   (letrec*
                                    ((g8632
                                      (lambda (p)
                                        (letrec* ((g8633 #f)) g8633))))
                                    g8632)
                                   (letrec*
                                    ((x-cnd8634
                                      (begin
                                        (write '(funapp 3355 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3355 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8634
                                      (letrec*
                                       ((g8635
                                         (lambda (dead)
                                           (letrec*
                                            ((g8636
                                              (letrec*
                                               ((x8637
                                                 (begin
                                                   (write '(funapp 3363 56))
                                                   (display "\n")
                                                   (new-mt-zombies))))
                                               (begin
                                                 (write '(funapp 3364 48))
                                                 (display "\n")
                                                 (new-horde x8637 dead)))))
                                            g8636))))
                                       g8635)
                                      (letrec*
                                       ((g8638 "unknown message"))
                                       g8638)))))))))))
                        g8624))))
                   g8623)))
               (new-zombie
                (lambda (p)
                  (letrec*
                   ((g8639
                     (lambda (msg)
                       (letrec*
                        ((g8640
                          (letrec*
                           ((x-cnd8641
                             (begin
                               (write '(funapp 3380 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3380 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8641
                             (letrec*
                              ((g8642 (lambda () (letrec* ((g8643 p)) g8643))))
                              g8642)
                             (letrec*
                              ((x-cnd8644
                                (begin
                                  (write '(funapp 3386 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3386 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8644
                                (letrec*
                                 ((g8645
                                   (lambda (c s)
                                     (letrec*
                                      ((g8646
                                        (letrec*
                                         ((x8648
                                           (begin
                                             (write '(funapp 3394 50))
                                             (display "\n")
                                             (p
                                              (begin
                                                (write '(funapp 3394 52))
                                                (display "\n")
                                                'draw-on/image))))
                                          (x8647
                                           (begin
                                             (write '(funapp 3396 44))
                                             (display "\n")
                                             (circle
                                              ZOMBIE-RADIUS
                                              "solid"
                                              c))))
                                         (begin
                                           (write '(funapp 3397 42))
                                           (display "\n")
                                           (x8648 x8647 s)))))
                                      g8646))))
                                 g8645)
                                (letrec*
                                 ((x-cnd8649
                                   (begin
                                     (write '(funapp 3401 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3401 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8649
                                   (letrec*
                                    ((g8650
                                      (lambda (q)
                                        (letrec*
                                         ((g8651
                                           (letrec*
                                            ((x8652
                                              (letrec*
                                               ((x8653
                                                 (begin
                                                   (write '(funapp 3411 56))
                                                   (display "\n")
                                                   (p
                                                    (begin
                                                      (write '(funapp 3411 58))
                                                      (display "\n")
                                                      'dist)))))
                                               (begin
                                                 (write '(funapp 3412 48))
                                                 (display "\n")
                                                 (x8653 q)))))
                                            (begin
                                              (write '(funapp 3413 45))
                                              (display "\n")
                                              (<= x8652 ZOMBIE-RADIUS)))))
                                         g8651))))
                                    g8650)
                                   (letrec*
                                    ((x-cnd8654
                                      (begin
                                        (write '(funapp 3417 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3417 60))
                                           (display "\n")
                                           'move-toward)))))
                                    (if x-cnd8654
                                      (letrec*
                                       ((g8655
                                         (lambda (q)
                                           (letrec*
                                            ((g8656
                                              (letrec*
                                               ((x8657
                                                 (letrec*
                                                  ((x8658
                                                    (begin
                                                      (write '(funapp 3428 53))
                                                      (display "\n")
                                                      (p
                                                       (begin
                                                         (write
                                                          '(funapp 3428 55))
                                                         (display "\n")
                                                         'move-toward/speed)))))
                                                  (begin
                                                    (write '(funapp 3429 51))
                                                    (display "\n")
                                                    (x8658 q ZOMBIE-SPEED)))))
                                               (begin
                                                 (write '(funapp 3430 48))
                                                 (display "\n")
                                                 (new-zombie x8657)))))
                                            g8656))))
                                       g8655)
                                      (letrec*
                                       ((g8659 "unknown message"))
                                       g8659)))))))))))
                        g8640))))
                   g8639)))
               (new-posn
                (lambda (x y)
                  (letrec*
                   ((g8660
                     (letrec*
                      ((this
                        (lambda (msg)
                          (letrec*
                           ((g8661
                             (letrec*
                              ((x-cnd8662
                                (begin
                                  (write '(funapp 3448 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3448 54))
                                     (display "\n")
                                     'x)))))
                              (if x-cnd8662
                                (letrec*
                                 ((g8663
                                   (lambda () (letrec* ((g8664 x)) g8664))))
                                 g8663)
                                (letrec*
                                 ((x-cnd8665
                                   (begin
                                     (write '(funapp 3455 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3455 57))
                                        (display "\n")
                                        'y)))))
                                 (if x-cnd8665
                                   (letrec*
                                    ((g8666
                                      (lambda () (letrec* ((g8667 y)) g8667))))
                                    g8666)
                                   (letrec*
                                    ((x-cnd8668
                                      (begin
                                        (write '(funapp 3462 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3462 60))
                                           (display "\n")
                                           'posn)))))
                                    (if x-cnd8668
                                      (letrec*
                                       ((g8669
                                         (lambda ()
                                           (letrec* ((g8670 this)) g8670))))
                                       g8669)
                                      (letrec*
                                       ((x-cnd8671
                                         (begin
                                           (write '(funapp 3471 42))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3471 53))
                                              (display "\n")
                                              'move-toward/speed)))))
                                       (if x-cnd8671
                                         (letrec*
                                          ((g8672
                                            (lambda (p speed)
                                              (letrec*
                                               ((g8673
                                                 (letrec*
                                                  ((δx
                                                    (letrec*
                                                     ((x8674
                                                       (letrec*
                                                        ((x8675
                                                          (begin
                                                            (write
                                                             '(funapp 3483 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3483
                                                                  67))
                                                               (display "\n")
                                                               'x)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3484 57))
                                                          (display "\n")
                                                          (x8675)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3485 54))
                                                       (display "\n")
                                                       (- x8674 x))))
                                                   (δy
                                                    (letrec*
                                                     ((x8676
                                                       (letrec*
                                                        ((x8677
                                                          (begin
                                                            (write
                                                             '(funapp 3490 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3490
                                                                  67))
                                                               (display "\n")
                                                               'y)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3491 57))
                                                          (display "\n")
                                                          (x8677)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3492 54))
                                                       (display "\n")
                                                       (- x8676 y))))
                                                   (move-distance
                                                    (letrec*
                                                     ((x8678
                                                       (letrec*
                                                        ((x8680
                                                          (begin
                                                            (write
                                                             '(funapp 3497 65))
                                                            (display "\n")
                                                            (abs δx)))
                                                         (x8679
                                                          (begin
                                                            (write
                                                             '(funapp 3498 65))
                                                            (display "\n")
                                                            (abs δy))))
                                                        (begin
                                                          (write
                                                           '(funapp 3499 57))
                                                          (display "\n")
                                                          (max x8680 x8679)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3500 54))
                                                       (display "\n")
                                                       (min speed x8678)))))
                                                  (letrec*
                                                   ((g8681
                                                     (letrec*
                                                      ((x-cnd8682
                                                        (letrec*
                                                         ((x8684
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3506
                                                                66))
                                                             (display "\n")
                                                             (abs δx)))
                                                          (x8683
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3507
                                                                66))
                                                             (display "\n")
                                                             (abs δy))))
                                                         (begin
                                                           (write
                                                            '(funapp 3508 58))
                                                           (display "\n")
                                                           (< x8684 x8683)))))
                                                      (if x-cnd8682
                                                        (letrec*
                                                         ((g8685
                                                           (letrec*
                                                            ((x8688
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3514
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3514
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8686
                                                              (letrec*
                                                               ((x-cnd8687
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3518
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δy))))
                                                               (if x-cnd8687
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3522
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3525
                                                                 61))
                                                              (display "\n")
                                                              (x8688
                                                               0
                                                               x8686)))))
                                                         g8685)
                                                        (letrec*
                                                         ((g8689
                                                           (letrec*
                                                            ((x8692
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3531
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3531
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8690
                                                              (letrec*
                                                               ((x-cnd8691
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3535
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δx))))
                                                               (if x-cnd8691
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3539
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3542
                                                                 61))
                                                              (display "\n")
                                                              (x8692
                                                               x8690
                                                               0)))))
                                                         g8689)))))
                                                   g8681))))
                                               g8673))))
                                          g8672)
                                         (letrec*
                                          ((x-cnd8693
                                            (begin
                                              (write '(funapp 3548 55))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3548 66))
                                                 (display "\n")
                                                 'move)))))
                                          (if x-cnd8693
                                            (letrec*
                                             ((g8694
                                               (lambda (δx δy)
                                                 (letrec*
                                                  ((g8695
                                                    (letrec*
                                                     ((x8697
                                                       (begin
                                                         (write
                                                          '(funapp 3556 62))
                                                         (display "\n")
                                                         (+ x δx)))
                                                      (x8696
                                                       (begin
                                                         (write
                                                          '(funapp 3557 62))
                                                         (display "\n")
                                                         (+ y δy))))
                                                     (begin
                                                       (write
                                                        '(funapp 3558 54))
                                                       (display "\n")
                                                       (new-posn
                                                        x8697
                                                        x8696)))))
                                                  g8695))))
                                             g8694)
                                            (letrec*
                                             ((x-cnd8698
                                               (begin
                                                 (write '(funapp 3563 48))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 3563 59))
                                                    (display "\n")
                                                    'draw-on/image)))))
                                             (if x-cnd8698
                                               (letrec*
                                                ((g8699
                                                  (lambda (img scn)
                                                    (letrec*
                                                     ((g8700
                                                       (begin
                                                         (write
                                                          '(funapp 3570 56))
                                                         (display "\n")
                                                         (place-image
                                                          img
                                                          x
                                                          y
                                                          scn))))
                                                     g8700))))
                                                g8699)
                                               (letrec*
                                                ((x-cnd8701
                                                  (begin
                                                    (write '(funapp 3579 51))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 3579 62))
                                                       (display "\n")
                                                       'dist)))))
                                                (if x-cnd8701
                                                  (letrec*
                                                   ((g8702
                                                     (lambda (p)
                                                       (letrec*
                                                        ((g8703
                                                          (letrec*
                                                           ((x8704
                                                             (letrec*
                                                              ((x8709
                                                                (letrec*
                                                                 ((x8710
                                                                   (letrec*
                                                                    ((x8711
                                                                      (letrec*
                                                                       ((x8712
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3596
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3597
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'y)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3598
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8712)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3599
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8711
                                                                       y)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3602
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8710))))
                                                               (x8705
                                                                (letrec*
                                                                 ((x8706
                                                                   (letrec*
                                                                    ((x8707
                                                                      (letrec*
                                                                       ((x8708
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3610
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3611
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'x)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3612
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8708)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3613
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8707
                                                                       x)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3616
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8706)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3617
                                                                   63))
                                                                (display "\n")
                                                                (+
                                                                 x8709
                                                                 x8705)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3620
                                                                60))
                                                             (display "\n")
                                                             (sqrt x8704)))))
                                                        g8703))))
                                                   g8702)
                                                  (letrec*
                                                   ((g8713 "unknown message"))
                                                   g8713)))))))))))))))))
                           g8661))))
                      (letrec* ((g8714 this)) g8714))))
                   g8660)))
               (w0
                (letrec*
                 ((x8728
                   (letrec*
                    ((x8729
                      (begin
                        (write '(funapp 3631 43))
                        (display "\n")
                        (new-posn 0 0))))
                    (begin
                      (write '(funapp 3631 60))
                      (display "\n")
                      (new-player x8729))))
                  (x8727
                   (begin
                     (write '(funapp 3632 26))
                     (display "\n")
                     (new-posn 0 0)))
                  (x8715
                   (letrec*
                    ((x8720
                      (letrec*
                       ((x8725
                         (letrec*
                          ((x8726
                            (begin
                              (write '(funapp 3639 35))
                              (display "\n")
                              (new-posn 100 300))))
                          (begin
                            (write '(funapp 3640 27))
                            (display "\n")
                            (new-zombie x8726))))
                        (x8721
                         (letrec*
                          ((x8723
                            (letrec*
                             ((x8724
                               (begin
                                 (write '(funapp 3645 38))
                                 (display "\n")
                                 (new-posn 100 200))))
                             (begin
                               (write '(funapp 3646 30))
                               (display "\n")
                               (new-zombie x8724))))
                           (x8722
                            (begin
                              (write '(funapp 3647 35))
                              (display "\n")
                              (new-mt-zombies))))
                          (begin
                            (write '(funapp 3648 27))
                            (display "\n")
                            (new-cons-zombies x8723 x8722)))))
                       (begin
                         (write '(funapp 3649 24))
                         (display "\n")
                         (new-cons-zombies x8725 x8721))))
                     (x8716
                      (letrec*
                       ((x8718
                         (letrec*
                          ((x8719
                            (begin
                              (write '(funapp 3654 35))
                              (display "\n")
                              (new-posn 200 200))))
                          (begin
                            (write '(funapp 3655 27))
                            (display "\n")
                            (new-zombie x8719))))
                        (x8717
                         (begin
                           (write '(funapp 3656 32))
                           (display "\n")
                           (new-mt-zombies))))
                       (begin
                         (write '(funapp 3657 24))
                         (display "\n")
                         (new-cons-zombies x8718 x8717)))))
                    (begin
                      (write '(funapp 3658 21))
                      (display "\n")
                      (new-horde x8720 x8716)))))
                 (begin
                   (write '(funapp 3659 18))
                   (display "\n")
                   (new-world x8728 x8727 x8715)))))
              (letrec*
               ((g8730
                 (begin
                   (write '(funapp 3662 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 3663 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8732
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3667 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3667 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3667 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3667 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8733
                              (begin
                                (write '(funapp 3670 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8734
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8735
                                           (letrec*
                                            ((x8736
                                              (letrec*
                                               ((x8737
                                                 (begin
                                                   (write '(funapp 3679 50))
                                                   (display "\n")
                                                   (any/c j7581 k7582 g7580))))
                                               (begin
                                                 (write '(funapp 3680 42))
                                                 (display "\n")
                                                 (f7583 x8737)))))
                                            (begin
                                              (write '(funapp 3681 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7581
                                               k7582
                                               x8736)))))
                                         g8735))))
                                    g8734))
                                 xj7578
                                 xk7579
                                 image/c))))
                            g8733)))
                         (x8731 (input)))
                        (begin
                          (write '(funapp 3689 21))
                          (display "\n")
                          (x8732 x8731)))
                       (letrec*
                        ((x8740
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3693 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3693 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3693 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3693 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8741
                              (begin
                                (write '(funapp 3696 27))
                                (display "\n")
                                ((lambda (j7588 k7589 f7590)
                                   (letrec*
                                    ((g8742
                                      (lambda (g7586 g7587)
                                        (letrec*
                                         ((g8743
                                           (letrec*
                                            ((x8744
                                              (letrec*
                                               ((x8746
                                                 (begin
                                                   (write '(funapp 3705 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7586)))
                                                (x8745
                                                 (begin
                                                   (write '(funapp 3706 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7587))))
                                               (begin
                                                 (write '(funapp 3707 42))
                                                 (display "\n")
                                                 (f7590 x8746 x8745)))))
                                            (begin
                                              (write '(funapp 3708 39))
                                              (display "\n")
                                              (image/c j7588 k7589 x8744)))))
                                         g8743))))
                                    g8742))
                                 xj7584
                                 xk7585
                                 empty-scene))))
                            g8741)))
                         (x8739 (input))
                         (x8738 (input)))
                        (begin
                          (write '(funapp 3717 21))
                          (display "\n")
                          (x8740 x8739 x8738)))
                       (letrec*
                        ((x8751
                          (letrec*
                           ((xj7591
                             (begin
                               (write '(funapp 3721 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3721 37))
                                  (display "\n")
                                  'module))))
                            (xk7592
                             (begin
                               (write '(funapp 3721 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3721 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8752
                              (begin
                                (write '(funapp 3724 27))
                                (display "\n")
                                ((lambda (j7597 k7598 f7599)
                                   (letrec*
                                    ((g8753
                                      (lambda (g7593 g7594 g7595 g7596)
                                        (letrec*
                                         ((g8754
                                           (letrec*
                                            ((x8755
                                              (letrec*
                                               ((x8759
                                                 (begin
                                                   (write '(funapp 3733 50))
                                                   (display "\n")
                                                   (image/c/c
                                                    j7597
                                                    k7598
                                                    g7593)))
                                                (x8758
                                                 (begin
                                                   (write '(funapp 3734 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7594)))
                                                (x8757
                                                 (begin
                                                   (write '(funapp 3735 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7595)))
                                                (x8756
                                                 (begin
                                                   (write '(funapp 3736 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7597
                                                    k7598
                                                    g7596))))
                                               (begin
                                                 (write '(funapp 3737 42))
                                                 (display "\n")
                                                 (f7599
                                                  x8759
                                                  x8758
                                                  x8757
                                                  x8756)))))
                                            (begin
                                              (write '(funapp 3738 39))
                                              (display "\n")
                                              (image/c j7597 k7598 x8755)))))
                                         g8754))))
                                    g8753))
                                 xj7591
                                 xk7592
                                 place-image))))
                            g8752)))
                         (x8750 (input))
                         (x8749 (input))
                         (x8748 (input))
                         (x8747
                          (begin
                            (write '(funapp 3748 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3748 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3748 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3749 21))
                          (display "\n")
                          (x8751 x8750 x8749 x8748 x8747)))
                       (letrec*
                        ((x8763
                          (letrec*
                           ((xj7600
                             (begin
                               (write '(funapp 3753 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3753 37))
                                  (display "\n")
                                  'module))))
                            (xk7601
                             (begin
                               (write '(funapp 3753 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3753 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8764
                              (begin
                                (write '(funapp 3756 27))
                                (display "\n")
                                ((lambda (j7605 k7606 f7607)
                                   (letrec*
                                    ((g8765
                                      (lambda (g7602 g7603 g7604)
                                        (letrec*
                                         ((g8766
                                           (letrec*
                                            ((x8767
                                              (letrec*
                                               ((x8770
                                                 (begin
                                                   (write '(funapp 3765 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7605
                                                    k7606
                                                    g7602)))
                                                (x8769
                                                 (begin
                                                   (write '(funapp 3766 50))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7603)))
                                                (x8768
                                                 (begin
                                                   (write '(funapp 3768 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7604))))
                                               (begin
                                                 (write '(funapp 3769 42))
                                                 (display "\n")
                                                 (f7607 x8770 x8769 x8768)))))
                                            (begin
                                              (write '(funapp 3770 39))
                                              (display "\n")
                                              (image/c j7605 k7606 x8767)))))
                                         g8766))))
                                    g8765))
                                 xj7600
                                 xk7601
                                 circle))))
                            g8764)))
                         (x8762 (input))
                         (x8761 (input))
                         (x8760 (input)))
                        (begin
                          (write '(funapp 3780 21))
                          (display "\n")
                          (x8763 x8762 x8761 x8760)))
                       (letrec*
                        ((x8774
                          (letrec*
                           ((xj7608
                             (begin
                               (write '(funapp 3784 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3784 37))
                                  (display "\n")
                                  'module))))
                            (xk7609
                             (begin
                               (write '(funapp 3784 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3784 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8775
                              (begin
                                (write '(funapp 3787 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g8776
                                      (lambda (g7610 g7611 g7612)
                                        (letrec*
                                         ((g8777
                                           (letrec*
                                            ((x8778
                                              (letrec*
                                               ((x8781
                                                 (begin
                                                   (write '(funapp 3796 50))
                                                   (display "\n")
                                                   (player/c
                                                    j7613
                                                    k7614
                                                    g7610)))
                                                (x8780
                                                 (begin
                                                   (write '(funapp 3797 50))
                                                   (display "\n")
                                                   (posn/c j7613 k7614 g7611)))
                                                (x8779
                                                 (begin
                                                   (write '(funapp 3798 50))
                                                   (display "\n")
                                                   (horde/c
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3799 42))
                                                 (display "\n")
                                                 (f7615 x8781 x8780 x8779)))))
                                            (begin
                                              (write '(funapp 3800 39))
                                              (display "\n")
                                              (world/c j7613 k7614 x8778)))))
                                         g8777))))
                                    g8776))
                                 xj7608
                                 xk7609
                                 new-world))))
                            g8775)))
                         (x8773 (input))
                         (x8772 (input))
                         (x8771 (input)))
                        (begin
                          (write '(funapp 3810 21))
                          (display "\n")
                          (x8774 x8773 x8772 x8771)))
                       (letrec*
                        ((x8783
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3814 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3814 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3814 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3814 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8784
                              (begin
                                (write '(funapp 3817 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g8785
                                      (lambda (g7618)
                                        (letrec*
                                         ((g8786
                                           (letrec*
                                            ((x8787
                                              (letrec*
                                               ((x8788
                                                 (begin
                                                   (write '(funapp 3826 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3827 42))
                                                 (display "\n")
                                                 (f7621 x8788)))))
                                            (begin
                                              (write '(funapp 3828 39))
                                              (display "\n")
                                              (player/c j7619 k7620 x8787)))))
                                         g8786))))
                                    g8785))
                                 xj7616
                                 xk7617
                                 new-player))))
                            g8784)))
                         (x8782 (input)))
                        (begin
                          (write '(funapp 3836 21))
                          (display "\n")
                          (x8783 x8782)))
                       (letrec*
                        ((x8791
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3840 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3840 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3840 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3840 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8792
                              (begin
                                (write '(funapp 3843 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g8793
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g8794
                                           (letrec*
                                            ((x8795
                                              (letrec*
                                               ((x8797
                                                 (begin
                                                   (write '(funapp 3852 50))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x8796
                                                 (begin
                                                   (write '(funapp 3854 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3855 42))
                                                 (display "\n")
                                                 (f7628 x8797 x8796)))))
                                            (begin
                                              (write '(funapp 3856 39))
                                              (display "\n")
                                              (horde/c j7626 k7627 x8795)))))
                                         g8794))))
                                    g8793))
                                 xj7622
                                 xk7623
                                 new-horde))))
                            g8792)))
                         (x8790 (input))
                         (x8789 (input)))
                        (begin
                          (write '(funapp 3865 21))
                          (display "\n")
                          (x8791 x8790 x8789)))
                       (letrec*
                        ((x8800
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3869 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3869 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3869 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3869 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8801
                              (begin
                                (write '(funapp 3872 27))
                                (display "\n")
                                ((lambda (j7633 k7634 f7635)
                                   (letrec*
                                    ((g8802
                                      (lambda (g7631 g7632)
                                        (letrec*
                                         ((g8803
                                           (letrec*
                                            ((x8804
                                              (letrec*
                                               ((x8806
                                                 (begin
                                                   (write '(funapp 3881 50))
                                                   (display "\n")
                                                   (zombie/c
                                                    j7633
                                                    k7634
                                                    g7631)))
                                                (x8805
                                                 (begin
                                                   (write '(funapp 3883 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7633
                                                    k7634
                                                    g7632))))
                                               (begin
                                                 (write '(funapp 3884 42))
                                                 (display "\n")
                                                 (f7635 x8806 x8805)))))
                                            (begin
                                              (write '(funapp 3885 39))
                                              (display "\n")
                                              (zombies/c j7633 k7634 x8804)))))
                                         g8803))))
                                    g8802))
                                 xj7629
                                 xk7630
                                 new-cons-zombies))))
                            g8801)))
                         (x8799 (input))
                         (x8798 (input)))
                        (begin
                          (write '(funapp 3894 21))
                          (display "\n")
                          (x8800 x8799 x8798)))
                       (letrec*
                        ((xj7636
                          (begin
                            (write '(funapp 3896 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3896 34))
                               (display "\n")
                               'module))))
                         (xk7637
                          (begin
                            (write '(funapp 3896 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3896 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8807
                           (begin
                             (write '(funapp 3899 24))
                             (display "\n")
                             ((lambda (j7638 k7639 f7640)
                                (letrec*
                                 ((g8808
                                   (lambda ()
                                     (letrec*
                                      ((g8809
                                        (letrec*
                                         ((x8810
                                           (begin
                                             (write '(funapp 3906 44))
                                             (display "\n")
                                             (f7640))))
                                         (begin
                                           (write '(funapp 3907 36))
                                           (display "\n")
                                           (zombies/c j7638 k7639 x8810)))))
                                      g8809))))
                                 g8808))
                              xj7636
                              xk7637
                              new-mt-zombies))))
                         g8807))
                       (letrec*
                        ((x8812
                          (letrec*
                           ((xj7641
                             (begin
                               (write '(funapp 3917 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3917 37))
                                  (display "\n")
                                  'module))))
                            (xk7642
                             (begin
                               (write '(funapp 3917 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3917 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8813
                              (begin
                                (write '(funapp 3920 27))
                                (display "\n")
                                ((lambda (j7644 k7645 f7646)
                                   (letrec*
                                    ((g8814
                                      (lambda (g7643)
                                        (letrec*
                                         ((g8815
                                           (letrec*
                                            ((x8816
                                              (letrec*
                                               ((x8817
                                                 (begin
                                                   (write '(funapp 3929 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7644
                                                    k7645
                                                    g7643))))
                                               (begin
                                                 (write '(funapp 3930 42))
                                                 (display "\n")
                                                 (f7646 x8817)))))
                                            (begin
                                              (write '(funapp 3931 39))
                                              (display "\n")
                                              (zombie/c j7644 k7645 x8816)))))
                                         g8815))))
                                    g8814))
                                 xj7641
                                 xk7642
                                 new-zombie))))
                            g8813)))
                         (x8811 (input)))
                        (begin
                          (write '(funapp 3939 21))
                          (display "\n")
                          (x8812 x8811)))
                       (letrec*
                        ((x8820
                          (letrec*
                           ((xj7647
                             (begin
                               (write '(funapp 3943 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3943 37))
                                  (display "\n")
                                  'module))))
                            (xk7648
                             (begin
                               (write '(funapp 3943 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3943 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8821
                              (begin
                                (write '(funapp 3946 27))
                                (display "\n")
                                ((lambda (j7651 k7652 f7653)
                                   (letrec*
                                    ((g8822
                                      (lambda (g7649 g7650)
                                        (letrec*
                                         ((g8823
                                           (letrec*
                                            ((x8824
                                              (letrec*
                                               ((x8826
                                                 (begin
                                                   (write '(funapp 3955 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7649)))
                                                (x8825
                                                 (begin
                                                   (write '(funapp 3956 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7650))))
                                               (begin
                                                 (write '(funapp 3957 42))
                                                 (display "\n")
                                                 (f7653 x8826 x8825)))))
                                            (begin
                                              (write '(funapp 3958 39))
                                              (display "\n")
                                              (posn/c j7651 k7652 x8824)))))
                                         g8823))))
                                    g8822))
                                 xj7647
                                 xk7648
                                 new-posn))))
                            g8821)))
                         (x8819 (input))
                         (x8818 (input)))
                        (begin
                          (write '(funapp 3967 21))
                          (display "\n")
                          (x8820 x8819 x8818)))
                       (letrec*
                        ((xj7654
                          (begin
                            (write '(funapp 3969 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3969 34))
                               (display "\n")
                               'module))))
                         (xk7655
                          (begin
                            (write '(funapp 3969 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3969 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8827
                           (begin
                             (write '(funapp 3970 38))
                             (display "\n")
                             (world/c xj7654 xk7655 w0))))
                         g8827))))))))
               g8730))))
           g7685))))
       g7668)))
    g7667)))
