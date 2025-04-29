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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7811
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7811)))
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7812
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7814
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7815
                                 (letrec*
                                  ((x7816
                                    (letrec*
                                     ((x7818
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7817
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7372 x7818 x7817)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7816)))))
                               g7815))))
                          g7814))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7813
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7813))))))
                  g7812)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7819
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7821
                            (lambda (g7375)
                              (letrec*
                               ((g7822
                                 (letrec*
                                  ((x7823
                                    (letrec*
                                     ((x7824
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7378 x7824)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7823)))))
                               g7822))))
                          g7821))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7820
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7820))))))
                  g7819)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7825
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7827
                            (lambda (g7381)
                              (letrec*
                               ((g7828
                                 (letrec*
                                  ((x7829
                                    (letrec*
                                     ((x7830
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7384 x7830)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7829)))))
                               g7828))))
                          g7827))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7826
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7826))))))
                  g7825)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7831
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7833
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7834
                                 (letrec*
                                  ((x7835
                                    (letrec*
                                     ((x7837
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7836
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7391 x7837 x7836)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7835)))))
                               g7834))))
                          g7833))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7832
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7832))))))
                  g7831)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7838
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7840
                            (lambda (g7394)
                              (letrec*
                               ((g7841
                                 (letrec*
                                  ((x7842
                                    (letrec*
                                     ((x7843
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7397 x7843)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7842)))))
                               g7841))))
                          g7840))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7839
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7839))))))
                  g7838)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7844
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7846
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7847
                                 (letrec*
                                  ((x7848
                                    (letrec*
                                     ((x7850
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7849
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7404 x7850 x7849)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7848)))))
                               g7847))))
                          g7846))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7845
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7845))))))
                  g7844)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7853)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7852)))))
                   g7851)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7857))))
                    (g7855
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7859
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7863))))
                          (x7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7861)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7862 x7860)))))))
                   g7856)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7865)))))
                   g7864)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7869)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7872)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7871)))))
                   g7870)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7877))))
                    (g7875
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7878))))
                    (g7876
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 751 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 752 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7879
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7880 res))
                       g7880))))
                   g7876)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (cdaadr
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7887)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7886)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7885)))))
                   g7884)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7891
                        #f
                        (letrec*
                         ((x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7893 k)))))
                         (if x-cnd7892
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7894)))))))))
                   g7889)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7896)))))
                   g7895)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7899))))
                    (g7898
                     (letrec*
                      ((x-cnd7900
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7900
                        ""
                        (letrec*
                         ((x7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7904))))
                          (x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7902)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7903 x7901)))))))
                   g7898)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7910
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7910))))
                   g7907)))
               (cdddar
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7914)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7913)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x-cnd7920
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7920
                        x
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7921
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7922 x7921)))))))
                   g7917)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7923
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7923)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x-cnd7925
                        (letrec*
                         ((x7926 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7926)))))
                      (if x-cnd7925
                        (letrec*
                         ((x7927 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7927)))
                        #f))))
                   g7924)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7929
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7929 9)))))
                      (letrec*
                       ((g7930
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7931
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7931 10)))))
                            (letrec*
                             ((g7932
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7933
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7933 32))))))
                             g7932)))))
                       g7930))))
                   g7928)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (letrec*
                         ((x7936
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7936)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7935)))))
                   g7934)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7939))))
                    (g7938
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7938)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7940
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7940)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7941 #f)) g7941)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7943)))))
                   g7942)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7947
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7945)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7949
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7950
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7950
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7951
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7952
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7952
                                       (letrec*
                                        ((x-cnd7953
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7953
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7954
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7955
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7955
                                             (letrec*
                                              ((x-cnd7956
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7956
                                                (letrec*
                                                 ((x-cnd7957
                                                   (letrec*
                                                    ((x7959
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7958
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7959 x7958)))))
                                                 (if x-cnd7957
                                                   (letrec*
                                                    ((x7961
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7960
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7961 x7960)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7962
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7963
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7963
                                                (letrec*
                                                 ((x-cnd7964
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7964
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7965
                                                       (letrec*
                                                        ((x-cnd7966
                                                          (letrec*
                                                           ((x7967
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
                                                             (display "\n")
                                                             (= x7967 n)))))
                                                        (if x-cnd7966
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7968
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1004
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7969
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7970
                                                                           (letrec*
                                                                            ((x7972
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1013
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7971
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1017
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1020
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7972
                                                                               x7971)))))
                                                                         (if x-cnd7970
                                                                           (letrec*
                                                                            ((x7973
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1026
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1029
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7973)))
                                                                           #f)))))
                                                                    g7969))))
                                                                g7968))))
                                                           (letrec*
                                                            ((g7974
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7974))
                                                          #f))))
                                                     g7965))
                                                   #f))
                                                #f)))))
                                         g7962)))))
                                   g7954)))))
                             g7951)))))
                       g7949))))
                   g7948)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (letrec*
                            ((x7978
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7978)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7977)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7976)))))
                   g7975)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (letrec*
                            ((x7982
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7982)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7981)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7980)))))
                   g7979)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7983
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7983)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7987))))
                    (g7985
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7988))))
                    (g7986
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1078 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1079 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7989
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7990 res))
                       g7990))))
                   g7986)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7991
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7991)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7995))))
                    (g7993
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7996))))
                    (g7994
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7997
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7997))))
                   g7994)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x8000)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7999)))))
                   g7998)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (letrec*
                            ((x8004
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x8004)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x8003)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x8002)))))
                   g8001)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x8007)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x8006)))))
                   g8005)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x8009
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x8010)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x8009)))))
                   g8008)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x8015))))
                    (g8013
                     (letrec*
                      ((x8016
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x8016)))))
                   g8013)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8018
                        (letrec*
                         ((x8019
                           (letrec*
                            ((x8020
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x8020)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x8019)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x8018)))))
                   g8017)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8023
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x8023))))
                    (g8022
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g8022)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8024
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g8024)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x8026
                        (letrec*
                         ((x8027
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x8027)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x8026)))))
                   g8025)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8028
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g8028)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x8031))))
                    (g8030
                     (letrec*
                      ((x-cnd8032
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8032
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x8035
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x8036))))
                          (x8033
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x8034)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x8035 x8033)))))))
                   g8030)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8038
                        (letrec*
                         ((x8039
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x8040)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x8039)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x8038)))))
                   g8037)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x8044)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x8043)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x8042)))))
                   g8041)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x8047))))
                    (g8046
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x8048)))))
                   g8046)))
               (caadar
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
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x8052)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x8051)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x8050)))))
                   g8049)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x8056))))
                    (g8054
                     (letrec*
                      ((x8057
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x8057))))
                    (g8055
                     (letrec*
                      ((x-cnd8058
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8058
                        (letrec*
                         ((g8059
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g8059)
                        (letrec*
                         ((x-cnd8060
                           (letrec*
                            ((x8061
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x8061)))))
                         (if x-cnd8060
                           (letrec*
                            ((g8062
                              (letrec*
                               ((x8063
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x8063)))))
                            g8062)
                           (letrec*
                            ((x-cnd8064
                              (letrec*
                               ((x8065
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x8065)))))
                            (if x-cnd8064
                              (letrec*
                               ((g8066
                                 (letrec*
                                  ((x8068
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x8067
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x8068 x8067)))))
                               g8066)
                              (letrec*
                               ((x-cnd8069
                                 (letrec*
                                  ((x8070
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x8070)))))
                               (if x-cnd8069
                                 (letrec*
                                  ((g8071
                                    (letrec*
                                     ((x8074
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x8073
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8072
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x8074 x8073 x8072)))))
                                  g8071)
                                 (letrec*
                                  ((x-cnd8075
                                    (letrec*
                                     ((x8076
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x8076)))))
                                  (if x-cnd8075
                                    (letrec*
                                     ((g8077
                                       (letrec*
                                        ((x8081
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x8080
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8079
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8078
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x8081 x8080 x8079 x8078)))))
                                     g8077)
                                    (letrec*
                                     ((x-cnd8082
                                       (letrec*
                                        ((x8083
                                          (letrec*
                                           ((x8084
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x8084)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x8083)))))
                                     (if x-cnd8082
                                       (letrec*
                                        ((g8085
                                          (letrec*
                                           ((x8091
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x8090
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8089
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8088
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8086
                                             (letrec*
                                              ((x8087
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x8087)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x8091
                                              x8090
                                              x8089
                                              x8088
                                              x8086)))))
                                        g8085)
                                       (letrec*
                                        ((x-cnd8092
                                          (letrec*
                                           ((x8093
                                             (letrec*
                                              ((x8094
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x8094)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x8093)))))
                                        (if x-cnd8092
                                          (letrec*
                                           ((g8095
                                             (letrec*
                                              ((x8103
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8102
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8101
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8100
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8098
                                                (letrec*
                                                 ((x8099
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x8099))))
                                               (x8096
                                                (letrec*
                                                 ((x8097
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x8097)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x8103
                                                 x8102
                                                 x8101
                                                 x8100
                                                 x8098
                                                 x8096)))))
                                           g8095)
                                          (letrec*
                                           ((x-cnd8104
                                             (letrec*
                                              ((x8105
                                                (letrec*
                                                 ((x8106
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x8106)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x8105)))))
                                           (if x-cnd8104
                                             (letrec*
                                              ((g8107
                                                (letrec*
                                                 ((x8117
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8116
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8115
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8114
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8112
                                                   (letrec*
                                                    ((x8113
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x8113))))
                                                  (x8110
                                                   (letrec*
                                                    ((x8111
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x8111))))
                                                  (x8108
                                                   (letrec*
                                                    ((x8109
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x8109)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x8117
                                                    x8116
                                                    x8115
                                                    x8114
                                                    x8112
                                                    x8110
                                                    x8108)))))
                                              g8107)
                                             (letrec*
                                              ((g8118
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8118)))))))))))))))))))
                   g8055)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x8121))))
                    (g8120
                     (letrec*
                      ((x-cnd8122
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8122
                        #f
                        (letrec*
                         ((x-cnd8123
                           (letrec*
                            ((x8124
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x8124 e)))))
                         (if x-cnd8123
                           l
                           (letrec*
                            ((x8125
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x8125)))))))))
                   g8120)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8127
                        (letrec*
                         ((x8128
                           (letrec*
                            ((x8129
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x8129)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x8128)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x8127)))))
                   g8126)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8131
                        (letrec*
                         ((x8132
                           (letrec*
                            ((x8133
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x8133)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x8132)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x8131)))))
                   g8130)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8134
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g8134)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x8137))))
                    (g8136
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g8136)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8139
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8139))))
                   g8138)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x8141)))))
                   g8140)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8143
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8143
                           (letrec*
                            ((x8144
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x8144)))
                           #f))))
                      (letrec*
                       ((g8145
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g8145))))
                   g8142)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (letrec*
                            ((x8149
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x8149)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x8148)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x8147)))))
                   g8146)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x-cnd8151
                        (letrec*
                         ((x8152 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x8152 c)))))
                      (if x-cnd8151
                        (letrec*
                         ((x8153 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x8153)))
                        #f))))
                   g8150)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8156
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x8156))))
                    (g8155
                     (letrec*
                      ((x-cnd8157
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8157
                        #f
                        (letrec*
                         ((x-cnd8158
                           (letrec*
                            ((x8159
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x8159 k)))))
                         (if x-cnd8158
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8160
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x8160)))))))))
                   g8155)))
               (not (lambda (x) (letrec* ((g8161 (if x #f #t))) g8161)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8162
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g8162)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x8165
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x8165))))
                    (g8164
                     (letrec*
                      ((x-cnd8166
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8166
                        #f
                        (letrec*
                         ((x-cnd8167
                           (letrec*
                            ((x8168
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x8168 e)))))
                         (if x-cnd8167
                           l
                           (letrec*
                            ((x8169
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x8169)))))))))
                   g8164)))
               (cadaar
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
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x8173)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x8172)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x8171)))))
                   g8170)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x8176
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x8176))))
                    (g8175
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8177
                             (letrec*
                              ((x-cnd8178
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8178
                                0
                                (letrec*
                                 ((x8179
                                   (letrec*
                                    ((x8180
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x8180)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x8179)))))))
                           g8177))))
                      (letrec*
                       ((g8181
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g8181))))
                   g8175)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8182
                     (letrec*
                      ((x8185
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8185))))
                    (g8183
                     (letrec*
                      ((x8186
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x8186))))
                    (g8184
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8187
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8187))))
                   g8184)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x8189)))))
                   g8188)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8190
                     (letrec*
                      ((x8191
                        (letrec*
                         ((x8192
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x8192)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x8191)))))
                   g8190)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8193
                     (letrec*
                      ((x8195
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x8195))))
                    (g8194
                     (letrec*
                      ((x-cnd8196
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8196
                        #f
                        (letrec*
                         ((x-cnd8197
                           (letrec*
                            ((x8198
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x8198 k)))))
                         (if x-cnd8197
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8199
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x8199)))))))))
                   g8194)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8200
                     (letrec*
                      ((x8201
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x8201)))))
                   g8200)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8202
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x8206))))
                    (g8204
                     (letrec*
                      ((x8207
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x8207)))))
                   g8204)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8208
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8209
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8209))))
                   g8208)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8210
                     (letrec*
                      ((x8213
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x8213))))
                    (g8211
                     (letrec*
                      ((x8214
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x8214))))
                    (g8212
                     (letrec*
                      ((x-cnd8215
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8215
                        #t
                        (letrec*
                         ((x-cnd8216
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8216
                           (letrec*
                            ((g8217
                              (letrec*
                               ((x8219
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x8219))))
                             (g8218
                              (letrec*
                               ((x8220
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x8220)))))
                            g8218)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g8212)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8221
                     (letrec*
                      ((x8223
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x8223))))
                    (g8222
                     (letrec*
                      ((x-cnd8224
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8224
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8222)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8225
                     (letrec*
                      ((x8228
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8228))))
                    (g8226
                     (letrec*
                      ((x8229
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x8229))))
                    (g8227
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8230
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8230))))
                   g8227)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8231
                     (letrec*
                      ((x8232
                        (letrec*
                         ((x8233
                           (letrec*
                            ((x8234
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x8234)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x8233)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x8232)))))
                   g8231)))
               (newline (lambda () (letrec* ((g8235 #f)) g8235)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8236
                     (letrec*
                      ((x8238
                        (letrec*
                         ((x8239
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8239))))
                       (x8237
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8238 x8237)))))
                   g8236)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8244))))
                    (g8241
                     (letrec*
                      ((x8245
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8245))))
                    (g8242
                     (letrec*
                      ((x8246
                        (letrec*
                         ((x8247
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8247)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8246))))
                    (g8243
                     (letrec*
                      ((x-cnd8248
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8248
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8250
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8249
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8250 x8249)))))))
                   g8243)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8251
                     (letrec*
                      ((x-cnd8252
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8252
                        a
                        (letrec*
                         ((x8253
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8253)))))))
                   g8251)))
               (image
                (lambda ()
                  (letrec*
                   ((g8254
                     (begin
                       (write '(funapp 1698 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1698 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1698 62))
                          (display "\n")
                          '())))))
                   g8254)))
               (image?
                (lambda (image7656)
                  (letrec*
                   ((g8255
                     (letrec*
                      ((x8256
                        (begin
                          (write '(funapp 1703 39))
                          (display "\n")
                          (car image7656))))
                      (begin
                        (write '(funapp 1703 57))
                        (display "\n")
                        (eq?
                         x8256
                         (begin
                           (write '(funapp 1703 67))
                           (display "\n")
                           'image))))))
                   g8255)))
               (image/c
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8257
                     (begin
                       (write '(funapp 1707 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1707 47))
                          (display "\n")
                          '())))))
                   g8257)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8258
                     (begin (write '(funapp 1708 60)) (display "\n") (image))))
                   g8258)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8259
                     (begin (write '(funapp 1710 54)) (display "\n") (image))))
                   g8259)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8260
                     (begin (write '(funapp 1711 57)) (display "\n") (image))))
                   g8260)))
               (min
                (lambda (x y)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x-cnd8262
                        (begin
                          (write '(funapp 1716 43))
                          (display "\n")
                          (<= x y))))
                      (if x-cnd8262 x y))))
                   g8261)))
               (max
                (lambda (x y)
                  (letrec*
                   ((g8263
                     (letrec*
                      ((x-cnd8264
                        (begin
                          (write '(funapp 1722 43))
                          (display "\n")
                          (>= x y))))
                      (if x-cnd8264 x y))))
                   g8263)))
               (sqr
                (lambda (x)
                  (letrec*
                   ((g8265
                     (begin (write '(funapp 1724 50)) (display "\n") (* x x))))
                   g8265)))
               (WIDTH 400)
               (HEIGHT 400)
               (MT-SCENE
                (begin
                  (write '(funapp 1727 26))
                  (display "\n")
                  (empty-scene WIDTH HEIGHT)))
               (PLAYER-SPEED 4)
               (ZOMBIE-SPEED 2)
               (ZOMBIE-RADIUS 20)
               (PLAYER-RADIUS 20)
               (PLAYER-IMG
                (begin
                  (write '(funapp 1732 28))
                  (display "\n")
                  (circle PLAYER-RADIUS "solid" "green")))
               (posn/c
                (lambda (j7410 k7411 f7412)
                  (letrec*
                   ((g8266
                     (lambda (g7409)
                       (letrec*
                        ((g8267
                          (letrec*
                           ((x7413
                             (begin
                               (write '(funapp 1742 30))
                               (display "\n")
                               ((lambda (g7417 g7418 g7419)
                                  (letrec*
                                   ((g8268
                                     (letrec*
                                      ((x-cnd8269
                                        (begin
                                          (write '(funapp 1747 39))
                                          (display "\n")
                                          ((lambda (v7416)
                                             (letrec*
                                              ((g8270
                                                (letrec*
                                                 ((x-cnd8271
                                                   (begin
                                                     (write '(funapp 1751 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 1751 62))
                                                        (display "\n")
                                                        'x)
                                                      v7416))))
                                                 (if x-cnd8271
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8272
                                                      (begin
                                                        (write
                                                         '(funapp 1755 61))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1755 65))
                                                           (display "\n")
                                                           'y)
                                                         v7416))))
                                                    (if x-cnd8272
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8273
                                                         (begin
                                                           (write
                                                            '(funapp 1760 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1760
                                                                 58))
                                                              (display "\n")
                                                              'posn)
                                                            v7416))))
                                                       (if x-cnd8273
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8274
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1765
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1766
                                                                    57))
                                                                 (display "\n")
                                                                 'move-toward/speed)
                                                               v7416))))
                                                          (if x-cnd8274
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8275
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1772
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1773
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'draw-on/image)
                                                                  v7416))))
                                                             (if x-cnd8275
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1777
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1778
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'dist)
                                                                  v7416))))))))))))))
                                              g8270))
                                           g7419))))
                                      (if x-cnd8269
                                        g7419
                                        (begin
                                          (write '(blame g7417 1784 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7417)))))))
                                   g8268))
                                j7410
                                k7411
                                g7409))))
                           (letrec*
                            ((g8276
                              (letrec*
                               ((x8278
                                 (begin
                                   (write '(funapp 1812 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8279
                                         (letrec*
                                          ((x-cnd8280
                                            (begin
                                              (write '(funapp 1816 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 1816 64))
                                                 (display "\n")
                                                 'x)))))
                                          (if x-cnd8280
                                            (letrec*
                                             ((g8281
                                               (lambda (j7420 k7421 f7422)
                                                 (letrec*
                                                  ((g8282
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8283
                                                         (letrec*
                                                          ((x8284
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1827
                                                                 65))
                                                              (display "\n")
                                                              (f7422))))
                                                          (begin
                                                            (write
                                                             '(funapp 1828 57))
                                                            (display "\n")
                                                            (real?
                                                             j7420
                                                             k7421
                                                             x8284)))))
                                                       g8283))))
                                                  g8282))))
                                             g8281)
                                            (letrec*
                                             ((x-cnd8285
                                               (begin
                                                 (write '(funapp 1836 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 1836 67))
                                                    (display "\n")
                                                    'y)))))
                                             (if x-cnd8285
                                               (letrec*
                                                ((g8286
                                                  (lambda (j7423 k7424 f7425)
                                                    (letrec*
                                                     ((g8287
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8288
                                                            (letrec*
                                                             ((x8289
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1847
                                                                    68))
                                                                 (display "\n")
                                                                 (f7425))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1848
                                                                  60))
                                                               (display "\n")
                                                               (real?
                                                                j7423
                                                                k7424
                                                                x8289)))))
                                                          g8288))))
                                                     g8287))))
                                                g8286)
                                               (letrec*
                                                ((x-cnd8290
                                                  (begin
                                                    (write '(funapp 1856 59))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 1856 70))
                                                       (display "\n")
                                                       'posn)))))
                                                (if x-cnd8290
                                                  (letrec*
                                                   ((g8291
                                                     (lambda (j7426
                                                              k7427
                                                              f7428)
                                                       (letrec*
                                                        ((g8292
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8293
                                                               (letrec*
                                                                ((x8294
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1867
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7428))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1868
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (posn/c
                                                                   j7426
                                                                   k7427
                                                                   x8294)))))
                                                             g8293))))
                                                        g8292))))
                                                   g8291)
                                                  (letrec*
                                                   ((x-cnd8295
                                                     (begin
                                                       (write
                                                        '(funapp 1877 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 1879 52))
                                                          (display "\n")
                                                          'move-toward/speed)))))
                                                   (if x-cnd8295
                                                     (letrec*
                                                      ((g8296
                                                        (lambda (j7431
                                                                 k7432
                                                                 f7433)
                                                          (letrec*
                                                           ((g8297
                                                             (lambda (g7429
                                                                      g7430)
                                                               (letrec*
                                                                ((g8298
                                                                  (letrec*
                                                                   ((x8299
                                                                     (letrec*
                                                                      ((x8301
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1896
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7431
                                                                           k7432
                                                                           g7429)))
                                                                       (x8300
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1901
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
                                                                           1905
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7433
                                                                         x8301
                                                                         x8300)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1908
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (posn/c
                                                                      j7431
                                                                      k7432
                                                                      x8299)))))
                                                                g8298))))
                                                           g8297))))
                                                      g8296)
                                                     (letrec*
                                                      ((x-cnd8302
                                                        (begin
                                                          (write
                                                           '(funapp 1917 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1919
                                                                55))
                                                             (display "\n")
                                                             'draw-on/image)))))
                                                      (if x-cnd8302
                                                        (letrec*
                                                         ((g8303
                                                           (lambda (j7436
                                                                    k7437
                                                                    f7438)
                                                             (letrec*
                                                              ((g8304
                                                                (lambda (g7434
                                                                         g7435)
                                                                  (letrec*
                                                                   ((g8305
                                                                     (letrec*
                                                                      ((x8306
                                                                        (letrec*
                                                                         ((x8308
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1936
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7436
                                                                              k7437
                                                                              g7434)))
                                                                          (x8307
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1941
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
                                                                              1945
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7438
                                                                            x8308
                                                                            x8307)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1948
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (image/c
                                                                         j7436
                                                                         k7437
                                                                         x8306)))))
                                                                   g8305))))
                                                              g8304))))
                                                         g8303)
                                                        (letrec*
                                                         ((x-cnd8309
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1957
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1957
                                                                   69))
                                                                (display "\n")
                                                                'dist)))))
                                                         (if x-cnd8309
                                                           (letrec*
                                                            ((g8310
                                                              (lambda (j7440
                                                                       k7441
                                                                       f7442)
                                                                (letrec*
                                                                 ((g8311
                                                                   (lambda (g7439)
                                                                     (letrec*
                                                                      ((g8312
                                                                        (letrec*
                                                                         ((x8313
                                                                           (letrec*
                                                                            ((x8314
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1973
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
                                                                                 1977
                                                                                 75))
                                                                              (display
                                                                               "\n")
                                                                              (f7442
                                                                               x8314)))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1979
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (real?
                                                                            j7440
                                                                            k7441
                                                                            x8313)))))
                                                                      g8312))))
                                                                 g8311))))
                                                            g8310)
                                                           (letrec*
                                                            ((g8315 "error"))
                                                            g8315)))))))))))))))
                                       g8279))
                                    x7413)))
                                (x8277
                                 (begin
                                   (write '(funapp 1991 40))
                                   (display "\n")
                                   (f7412 x7413))))
                               (begin
                                 (write '(funapp 1992 32))
                                 (display "\n")
                                 (x8278 j7410 k7411 x8277)))))
                            g8276))))
                        g8267))))
                   g8266)))
               (player/c
                (lambda (j7444 k7445 f7446)
                  (letrec*
                   ((g8316
                     (lambda (g7443)
                       (letrec*
                        ((g8317
                          (letrec*
                           ((x7447
                             (begin
                               (write '(funapp 2005 30))
                               (display "\n")
                               ((lambda (g7451 g7452 g7453)
                                  (letrec*
                                   ((g8318
                                     (letrec*
                                      ((x-cnd8319
                                        (begin
                                          (write '(funapp 2010 39))
                                          (display "\n")
                                          ((lambda (v7450)
                                             (letrec*
                                              ((g8320
                                                (letrec*
                                                 ((x-cnd8321
                                                   (begin
                                                     (write '(funapp 2014 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2014 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7450))))
                                                 (if x-cnd8321
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8322
                                                      (begin
                                                        (write
                                                         '(funapp 2019 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2019 55))
                                                           (display "\n")
                                                           'move-toward)
                                                         v7450))))
                                                    (if x-cnd8322
                                                      #t
                                                      (begin
                                                        (write
                                                         '(funapp 2022 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2022 55))
                                                           (display "\n")
                                                           'draw-on)
                                                         v7450))))))))
                                              g8320))
                                           g7453))))
                                      (if x-cnd8319
                                        g7453
                                        (begin
                                          (write '(blame g7451 2027 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7451)))))))
                                   g8318))
                                j7444
                                k7445
                                g7443))))
                           (letrec*
                            ((g8323
                              (letrec*
                               ((x8325
                                 (begin
                                   (write '(funapp 2043 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8326
                                         (letrec*
                                          ((x-cnd8327
                                            (begin
                                              (write '(funapp 2047 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2047 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8327
                                            (letrec*
                                             ((g8328
                                               (lambda (j7454 k7455 f7456)
                                                 (letrec*
                                                  ((g8329
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8330
                                                         (letrec*
                                                          ((x8331
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2058
                                                                 65))
                                                              (display "\n")
                                                              (f7456))))
                                                          (begin
                                                            (write
                                                             '(funapp 2059 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7454
                                                             k7455
                                                             x8331)))))
                                                       g8330))))
                                                  g8329))))
                                             g8328)
                                            (letrec*
                                             ((x-cnd8332
                                               (begin
                                                 (write '(funapp 2068 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2068 57))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (if x-cnd8332
                                               (letrec*
                                                ((g8333
                                                  (lambda (j7458 k7459 f7460)
                                                    (letrec*
                                                     ((g8334
                                                       (lambda (g7457)
                                                         (letrec*
                                                          ((g8335
                                                            (letrec*
                                                             ((x8336
                                                               (letrec*
                                                                ((x8337
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2082
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
                                                                     2086
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7460
                                                                   x8337)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2087
                                                                  60))
                                                               (display "\n")
                                                               (player/c
                                                                j7458
                                                                k7459
                                                                x8336)))))
                                                          g8335))))
                                                     g8334))))
                                                g8333)
                                               (letrec*
                                                ((x-cnd8338
                                                  (begin
                                                    (write '(funapp 2096 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2096 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8338
                                                  (letrec*
                                                   ((g8339
                                                     (lambda (j7462
                                                              k7463
                                                              f7464)
                                                       (letrec*
                                                        ((g8340
                                                          (lambda (g7461)
                                                            (letrec*
                                                             ((g8341
                                                               (letrec*
                                                                ((x8342
                                                                  (letrec*
                                                                   ((x8343
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2110
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
                                                                        2114
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7464
                                                                      x8343)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2116
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7462
                                                                   k7463
                                                                   x8342)))))
                                                             g8341))))
                                                        g8340))))
                                                   g8339)
                                                  (letrec*
                                                   ((g8344 "error"))
                                                   g8344)))))))))
                                       g8326))
                                    x7447)))
                                (x8324
                                 (begin
                                   (write '(funapp 2128 40))
                                   (display "\n")
                                   (f7446 x7447))))
                               (begin
                                 (write '(funapp 2129 32))
                                 (display "\n")
                                 (x8325 j7444 k7445 x8324)))))
                            g8323))))
                        g8317))))
                   g8316)))
               (zombie/c
                (lambda (j7466 k7467 f7468)
                  (letrec*
                   ((g8345
                     (lambda (g7465)
                       (letrec*
                        ((g8346
                          (letrec*
                           ((x7469
                             (begin
                               (write '(funapp 2142 30))
                               (display "\n")
                               ((lambda (g7473 g7474 g7475)
                                  (letrec*
                                   ((g8347
                                     (letrec*
                                      ((x-cnd8348
                                        (begin
                                          (write '(funapp 2147 39))
                                          (display "\n")
                                          ((lambda (v7472)
                                             (letrec*
                                              ((g8349
                                                (letrec*
                                                 ((x-cnd8350
                                                   (begin
                                                     (write '(funapp 2151 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2151 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7472))))
                                                 (if x-cnd8350
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8351
                                                      (begin
                                                        (write
                                                         '(funapp 2156 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2156 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7472))))
                                                    (if x-cnd8351
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8352
                                                         (begin
                                                           (write
                                                            '(funapp 2161 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2161
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7472))))
                                                       (if x-cnd8352
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2164 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2165
                                                                 54))
                                                              (display "\n")
                                                              'move-toward)
                                                            v7472))))))))))
                                              g8349))
                                           g7475))))
                                      (if x-cnd8348
                                        g7475
                                        (begin
                                          (write '(blame g7473 2171 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7473)))))))
                                   g8347))
                                j7466
                                k7467
                                g7465))))
                           (letrec*
                            ((g8353
                              (letrec*
                               ((x8355
                                 (begin
                                   (write '(funapp 2191 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8356
                                         (letrec*
                                          ((x-cnd8357
                                            (begin
                                              (write '(funapp 2195 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2195 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8357
                                            (letrec*
                                             ((g8358
                                               (lambda (j7476 k7477 f7478)
                                                 (letrec*
                                                  ((g8359
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8360
                                                         (letrec*
                                                          ((x8361
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2206
                                                                 65))
                                                              (display "\n")
                                                              (f7478))))
                                                          (begin
                                                            (write
                                                             '(funapp 2207 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7476
                                                             k7477
                                                             x8361)))))
                                                       g8360))))
                                                  g8359))))
                                             g8358)
                                            (letrec*
                                             ((x-cnd8362
                                               (begin
                                                 (write '(funapp 2216 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2216 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8362
                                               (letrec*
                                                ((g8363
                                                  (lambda (j7481 k7482 f7483)
                                                    (letrec*
                                                     ((g8364
                                                       (lambda (g7479 g7480)
                                                         (letrec*
                                                          ((g8365
                                                            (letrec*
                                                             ((x8366
                                                               (letrec*
                                                                ((x8368
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2230
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7481
                                                                     k7482
                                                                     g7479)))
                                                                 (x8367
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2235
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
                                                                     2239
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7483
                                                                   x8368
                                                                   x8367)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2242
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7481
                                                                k7482
                                                                x8366)))))
                                                          g8365))))
                                                     g8364))))
                                                g8363)
                                               (letrec*
                                                ((x-cnd8369
                                                  (begin
                                                    (write '(funapp 2251 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2251 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8369
                                                  (letrec*
                                                   ((g8370
                                                     (lambda (j7485
                                                              k7486
                                                              f7487)
                                                       (letrec*
                                                        ((g8371
                                                          (lambda (g7484)
                                                            (letrec*
                                                             ((g8372
                                                               (letrec*
                                                                ((x8373
                                                                  (letrec*
                                                                   ((x8374
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2265
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
                                                                        2269
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7487
                                                                      x8374)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2271
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7485
                                                                   k7486
                                                                   x8373)))))
                                                             g8372))))
                                                        g8371))))
                                                   g8370)
                                                  (letrec*
                                                   ((x-cnd8375
                                                     (begin
                                                       (write
                                                        '(funapp 2280 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2280 63))
                                                          (display "\n")
                                                          'move-toward)))))
                                                   (if x-cnd8375
                                                     (letrec*
                                                      ((g8376
                                                        (lambda (j7489
                                                                 k7490
                                                                 f7491)
                                                          (letrec*
                                                           ((g8377
                                                             (lambda (g7488)
                                                               (letrec*
                                                                ((g8378
                                                                  (letrec*
                                                                   ((x8379
                                                                     (letrec*
                                                                      ((x8380
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2296
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
                                                                           2300
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7491
                                                                         x8380)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2302
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (zombie/c
                                                                      j7489
                                                                      k7490
                                                                      x8379)))))
                                                                g8378))))
                                                           g8377))))
                                                      g8376)
                                                     (letrec*
                                                      ((g8381 "error"))
                                                      g8381)))))))))))
                                       g8356))
                                    x7469)))
                                (x8354
                                 (begin
                                   (write '(funapp 2314 40))
                                   (display "\n")
                                   (f7468 x7469))))
                               (begin
                                 (write '(funapp 2315 32))
                                 (display "\n")
                                 (x8355 j7466 k7467 x8354)))))
                            g8353))))
                        g8346))))
                   g8345)))
               (horde/c
                (lambda (j7493 k7494 f7495)
                  (letrec*
                   ((g8382
                     (lambda (g7492)
                       (letrec*
                        ((g8383
                          (letrec*
                           ((x7496
                             (begin
                               (write '(funapp 2328 30))
                               (display "\n")
                               ((lambda (g7500 g7501 g7502)
                                  (letrec*
                                   ((g8384
                                     (letrec*
                                      ((x-cnd8385
                                        (begin
                                          (write '(funapp 2333 39))
                                          (display "\n")
                                          ((lambda (v7499)
                                             (letrec*
                                              ((g8386
                                                (letrec*
                                                 ((x-cnd8387
                                                   (begin
                                                     (write '(funapp 2337 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2337 62))
                                                        (display "\n")
                                                        'dead)
                                                      v7499))))
                                                 (if x-cnd8387
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8388
                                                      (begin
                                                        (write
                                                         '(funapp 2342 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2342 55))
                                                           (display "\n")
                                                           'undead)
                                                         v7499))))
                                                    (if x-cnd8388
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8389
                                                         (begin
                                                           (write
                                                            '(funapp 2347 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2347
                                                                 58))
                                                              (display "\n")
                                                              'draw-on)
                                                            v7499))))
                                                       (if x-cnd8389
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8390
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2352
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2353
                                                                    57))
                                                                 (display "\n")
                                                                 'touching?)
                                                               v7499))))
                                                          (if x-cnd8390
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8391
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2359
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2360
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'move-toward)
                                                                  v7499))))
                                                             (if x-cnd8391
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2364
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2365
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'eat-brains)
                                                                  v7499))))))))))))))
                                              g8386))
                                           g7502))))
                                      (if x-cnd8385
                                        g7502
                                        (begin
                                          (write '(blame g7500 2371 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7500)))))))
                                   g8384))
                                j7493
                                k7494
                                g7492))))
                           (letrec*
                            ((g8392
                              (letrec*
                               ((x8394
                                 (begin
                                   (write '(funapp 2395 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8395
                                         (letrec*
                                          ((x-cnd8396
                                            (begin
                                              (write '(funapp 2399 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2399 64))
                                                 (display "\n")
                                                 'dead)))))
                                          (if x-cnd8396
                                            (letrec*
                                             ((g8397
                                               (lambda (j7503 k7504 f7505)
                                                 (letrec*
                                                  ((g8398
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8399
                                                         (letrec*
                                                          ((x8400
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2410
                                                                 65))
                                                              (display "\n")
                                                              (f7505))))
                                                          (begin
                                                            (write
                                                             '(funapp 2411 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7503
                                                             k7504
                                                             x8400)))))
                                                       g8399))))
                                                  g8398))))
                                             g8397)
                                            (letrec*
                                             ((x-cnd8401
                                               (begin
                                                 (write '(funapp 2419 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2419 67))
                                                    (display "\n")
                                                    'undead)))))
                                             (if x-cnd8401
                                               (letrec*
                                                ((g8402
                                                  (lambda (j7506 k7507 f7508)
                                                    (letrec*
                                                     ((g8403
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8404
                                                            (letrec*
                                                             ((x8405
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2430
                                                                    68))
                                                                 (display "\n")
                                                                 (f7508))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2431
                                                                  60))
                                                               (display "\n")
                                                               (zombies/c
                                                                j7506
                                                                k7507
                                                                x8405)))))
                                                          g8404))))
                                                     g8403))))
                                                g8402)
                                               (letrec*
                                                ((x-cnd8406
                                                  (begin
                                                    (write '(funapp 2440 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2440 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8406
                                                  (letrec*
                                                   ((g8407
                                                     (lambda (j7510
                                                              k7511
                                                              f7512)
                                                       (letrec*
                                                        ((g8408
                                                          (lambda (g7509)
                                                            (letrec*
                                                             ((g8409
                                                               (letrec*
                                                                ((x8410
                                                                  (letrec*
                                                                   ((x8411
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2454
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
                                                                        2458
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7512
                                                                      x8411)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2460
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7510
                                                                   k7511
                                                                   x8410)))))
                                                             g8409))))
                                                        g8408))))
                                                   g8407)
                                                  (letrec*
                                                   ((x-cnd8412
                                                     (begin
                                                       (write
                                                        '(funapp 2469 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2469 63))
                                                          (display "\n")
                                                          'touching?)))))
                                                   (if x-cnd8412
                                                     (letrec*
                                                      ((g8413
                                                        (lambda (j7514
                                                                 k7515
                                                                 f7516)
                                                          (letrec*
                                                           ((g8414
                                                             (lambda (g7513)
                                                               (letrec*
                                                                ((g8415
                                                                  (letrec*
                                                                   ((x8416
                                                                     (letrec*
                                                                      ((x8417
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2485
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
                                                                           2489
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7516
                                                                         x8417)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2491
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7514
                                                                      k7515
                                                                      x8416)))))
                                                                g8415))))
                                                           g8414))))
                                                      g8413)
                                                     (letrec*
                                                      ((x-cnd8418
                                                        (begin
                                                          (write
                                                           '(funapp 2500 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2502
                                                                55))
                                                             (display "\n")
                                                             'move-toward)))))
                                                      (if x-cnd8418
                                                        (letrec*
                                                         ((g8419
                                                           (lambda (j7518
                                                                    k7519
                                                                    f7520)
                                                             (letrec*
                                                              ((g8420
                                                                (lambda (g7517)
                                                                  (letrec*
                                                                   ((g8421
                                                                     (letrec*
                                                                      ((x8422
                                                                        (letrec*
                                                                         ((x8423
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2518
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
                                                                              2522
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7520
                                                                            x8423)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2524
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (horde/c
                                                                         j7518
                                                                         k7519
                                                                         x8422)))))
                                                                   g8421))))
                                                              g8420))))
                                                         g8419)
                                                        (letrec*
                                                         ((x-cnd8424
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2533
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   2535
                                                                   58))
                                                                (display "\n")
                                                                'eat-brains)))))
                                                         (if x-cnd8424
                                                           (letrec*
                                                            ((g8425
                                                              (lambda (j7521
                                                                       k7522
                                                                       f7523)
                                                                (letrec*
                                                                 ((g8426
                                                                   (lambda ()
                                                                     (letrec*
                                                                      ((g8427
                                                                        (letrec*
                                                                         ((x8428
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2549
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (f7523))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2550
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (horde/c
                                                                            j7521
                                                                            k7522
                                                                            x8428)))))
                                                                      g8427))))
                                                                 g8426))))
                                                            g8425)
                                                           (letrec*
                                                            ((g8429 "error"))
                                                            g8429)))))))))))))))
                                       g8395))
                                    x7496)))
                                (x8393
                                 (begin
                                   (write '(funapp 2562 40))
                                   (display "\n")
                                   (f7495 x7496))))
                               (begin
                                 (write '(funapp 2563 32))
                                 (display "\n")
                                 (x8394 j7493 k7494 x8393)))))
                            g8392))))
                        g8383))))
                   g8382)))
               (zombies/c
                (lambda (j7525 k7526 f7527)
                  (letrec*
                   ((g8430
                     (lambda (g7524)
                       (letrec*
                        ((g8431
                          (letrec*
                           ((x7528
                             (begin
                               (write '(funapp 2576 30))
                               (display "\n")
                               ((lambda (g7532 g7533 g7534)
                                  (letrec*
                                   ((g8432
                                     (letrec*
                                      ((x-cnd8433
                                        (begin
                                          (write '(funapp 2581 39))
                                          (display "\n")
                                          ((lambda (v7531)
                                             (letrec*
                                              ((g8434
                                                (letrec*
                                                 ((x-cnd8435
                                                   (begin
                                                     (write '(funapp 2586 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2586 52))
                                                        (display "\n")
                                                        'move-toward)
                                                      v7531))))
                                                 (if x-cnd8435
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8436
                                                      (begin
                                                        (write
                                                         '(funapp 2591 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2591 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7531))))
                                                    (if x-cnd8436
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8437
                                                         (begin
                                                           (write
                                                            '(funapp 2596 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2596
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7531))))
                                                       (if x-cnd8437
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2599 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2600
                                                                 54))
                                                              (display "\n")
                                                              'kill-all)
                                                            v7531))))))))))
                                              g8434))
                                           g7534))))
                                      (if x-cnd8433
                                        g7534
                                        (begin
                                          (write '(blame g7532 2606 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7532)))))))
                                   g8432))
                                j7525
                                k7526
                                g7524))))
                           (letrec*
                            ((g8438
                              (letrec*
                               ((x8440
                                 (begin
                                   (write '(funapp 2624 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8441
                                         (letrec*
                                          ((x-cnd8442
                                            (begin
                                              (write '(funapp 2628 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2628 64))
                                                 (display "\n")
                                                 'move-toward)))))
                                          (if x-cnd8442
                                            (letrec*
                                             ((g8443
                                               (lambda (j7536 k7537 f7538)
                                                 (letrec*
                                                  ((g8444
                                                    (lambda (g7535)
                                                      (letrec*
                                                       ((g8445
                                                         (letrec*
                                                          ((x8446
                                                            (letrec*
                                                             ((x8447
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2642
                                                                    62))
                                                                 (display "\n")
                                                                 (posn/c
                                                                  j7536
                                                                  k7537
                                                                  g7535))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2646
                                                                  60))
                                                               (display "\n")
                                                               (f7538
                                                                x8447)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2647 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7536
                                                             k7537
                                                             x8446)))))
                                                       g8445))))
                                                  g8444))))
                                             g8443)
                                            (letrec*
                                             ((x-cnd8448
                                               (begin
                                                 (write '(funapp 2656 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2656 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8448
                                               (letrec*
                                                ((g8449
                                                  (lambda (j7541 k7542 f7543)
                                                    (letrec*
                                                     ((g8450
                                                       (lambda (g7539 g7540)
                                                         (letrec*
                                                          ((g8451
                                                            (letrec*
                                                             ((x8452
                                                               (letrec*
                                                                ((x8454
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2670
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7541
                                                                     k7542
                                                                     g7539)))
                                                                 (x8453
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2675
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
                                                                     2679
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7543
                                                                   x8454
                                                                   x8453)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2682
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7541
                                                                k7542
                                                                x8452)))))
                                                          g8451))))
                                                     g8450))))
                                                g8449)
                                               (letrec*
                                                ((x-cnd8455
                                                  (begin
                                                    (write '(funapp 2691 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2691 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8455
                                                  (letrec*
                                                   ((g8456
                                                     (lambda (j7545
                                                              k7546
                                                              f7547)
                                                       (letrec*
                                                        ((g8457
                                                          (lambda (g7544)
                                                            (letrec*
                                                             ((g8458
                                                               (letrec*
                                                                ((x8459
                                                                  (letrec*
                                                                   ((x8460
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2705
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
                                                                        2709
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7547
                                                                      x8460)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2711
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7545
                                                                   k7546
                                                                   x8459)))))
                                                             g8458))))
                                                        g8457))))
                                                   g8456)
                                                  (letrec*
                                                   ((x-cnd8461
                                                     (begin
                                                       (write
                                                        '(funapp 2720 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2720 63))
                                                          (display "\n")
                                                          'kill-all)))))
                                                   (if x-cnd8461
                                                     (letrec*
                                                      ((g8462
                                                        (lambda (j7549
                                                                 k7550
                                                                 f7551)
                                                          (letrec*
                                                           ((g8463
                                                             (lambda (g7548)
                                                               (letrec*
                                                                ((g8464
                                                                  (letrec*
                                                                   ((x8465
                                                                     (letrec*
                                                                      ((x8466
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2736
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
                                                                           2740
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7551
                                                                         x8466)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2742
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (horde/c
                                                                      j7549
                                                                      k7550
                                                                      x8465)))))
                                                                g8464))))
                                                           g8463))))
                                                      g8462)
                                                     (letrec*
                                                      ((g8467 "error"))
                                                      g8467)))))))))))
                                       g8441))
                                    x7528)))
                                (x8439
                                 (begin
                                   (write '(funapp 2754 40))
                                   (display "\n")
                                   (f7527 x7528))))
                               (begin
                                 (write '(funapp 2755 32))
                                 (display "\n")
                                 (x8440 j7525 k7526 x8439)))))
                            g8438))))
                        g8431))))
                   g8430)))
               (world/c
                (lambda (j7553 k7554 f7555)
                  (letrec*
                   ((g8468
                     (lambda (g7552)
                       (letrec*
                        ((g8469
                          (letrec*
                           ((x7556
                             (begin
                               (write '(funapp 2768 30))
                               (display "\n")
                               ((lambda (g7560 g7561 g7562)
                                  (letrec*
                                   ((g8470
                                     (letrec*
                                      ((x-cnd8471
                                        (begin
                                          (write '(funapp 2773 39))
                                          (display "\n")
                                          ((lambda (v7559)
                                             (letrec*
                                              ((g8472
                                                (letrec*
                                                 ((x-cnd8473
                                                   (begin
                                                     (write '(funapp 2778 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2778 52))
                                                        (display "\n")
                                                        'on-mouse)
                                                      v7559))))
                                                 (if x-cnd8473
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8474
                                                      (begin
                                                        (write
                                                         '(funapp 2783 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2783 55))
                                                           (display "\n")
                                                           'on-tick)
                                                         v7559))))
                                                    (if x-cnd8474
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8475
                                                         (begin
                                                           (write
                                                            '(funapp 2788 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2788
                                                                 58))
                                                              (display "\n")
                                                              'to-draw)
                                                            v7559))))
                                                       (if x-cnd8475
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2791 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2792
                                                                 54))
                                                              (display "\n")
                                                              'stop-when)
                                                            v7559))))))))))
                                              g8472))
                                           g7562))))
                                      (if x-cnd8471
                                        g7562
                                        (begin
                                          (write '(blame g7560 2798 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7560)))))))
                                   g8470))
                                j7553
                                k7554
                                g7552))))
                           (letrec*
                            ((g8476
                              (letrec*
                               ((x8478
                                 (begin
                                   (write '(funapp 2816 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8479
                                         (letrec*
                                          ((x-cnd8480
                                            (begin
                                              (write '(funapp 2820 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2820 64))
                                                 (display "\n")
                                                 'on-mouse)))))
                                          (if x-cnd8480
                                            (letrec*
                                             ((g8481
                                               (lambda (j7566 k7567 f7568)
                                                 (letrec*
                                                  ((g8482
                                                    (lambda (g7563 g7564 g7565)
                                                      (letrec*
                                                       ((g8483
                                                         (letrec*
                                                          ((x8484
                                                            (letrec*
                                                             ((x8487
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2834
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7563)))
                                                              (x8486
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2839
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7566
                                                                  k7567
                                                                  g7564)))
                                                              (x8485
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2844
                                                                    62))
                                                                 (display "\n")
                                                                 (string?
                                                                  j7566
                                                                  k7567
                                                                  g7565))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2848
                                                                  60))
                                                               (display "\n")
                                                               (f7568
                                                                x8487
                                                                x8486
                                                                x8485)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2852 57))
                                                            (display "\n")
                                                            (world/c
                                                             j7566
                                                             k7567
                                                             x8484)))))
                                                       g8483))))
                                                  g8482))))
                                             g8481)
                                            (letrec*
                                             ((x-cnd8488
                                               (begin
                                                 (write '(funapp 2860 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2860 67))
                                                    (display "\n")
                                                    'on-tick)))))
                                             (if x-cnd8488
                                               (letrec*
                                                ((g8489
                                                  (lambda (j7569 k7570 f7571)
                                                    (letrec*
                                                     ((g8490
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8491
                                                            (letrec*
                                                             ((x8492
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2871
                                                                    68))
                                                                 (display "\n")
                                                                 (f7571))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2872
                                                                  60))
                                                               (display "\n")
                                                               (world/c
                                                                j7569
                                                                k7570
                                                                x8492)))))
                                                          g8491))))
                                                     g8490))))
                                                g8489)
                                               (letrec*
                                                ((x-cnd8493
                                                  (begin
                                                    (write '(funapp 2881 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2881 60))
                                                       (display "\n")
                                                       'to-draw)))))
                                                (if x-cnd8493
                                                  (letrec*
                                                   ((g8494
                                                     (lambda (j7572
                                                              k7573
                                                              f7574)
                                                       (letrec*
                                                        ((g8495
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8496
                                                               (letrec*
                                                                ((x8497
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2892
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7574))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2893
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7572
                                                                   k7573
                                                                   x8497)))))
                                                             g8496))))
                                                        g8495))))
                                                   g8494)
                                                  (letrec*
                                                   ((x-cnd8498
                                                     (begin
                                                       (write
                                                        '(funapp 2902 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2902 63))
                                                          (display "\n")
                                                          'stop-when)))))
                                                   (if x-cnd8498
                                                     (letrec*
                                                      ((g8499
                                                        (lambda (j7575
                                                                 k7576
                                                                 f7577)
                                                          (letrec*
                                                           ((g8500
                                                             (lambda ()
                                                               (letrec*
                                                                ((g8501
                                                                  (letrec*
                                                                   ((x8502
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2916
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (f7577))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2917
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7575
                                                                      k7576
                                                                      x8502)))))
                                                                g8501))))
                                                           g8500))))
                                                      g8499)
                                                     (letrec*
                                                      ((g8503 "error"))
                                                      g8503)))))))))))
                                       g8479))
                                    x7556)))
                                (x8477
                                 (begin
                                   (write '(funapp 2929 40))
                                   (display "\n")
                                   (f7555 x7556))))
                               (begin
                                 (write '(funapp 2930 32))
                                 (display "\n")
                                 (x8478 j7553 k7554 x8477)))))
                            g8476))))
                        g8469))))
                   g8468)))
               (new-world
                (lambda (player mouse zombies)
                  (letrec*
                   ((g8504
                     (lambda (msg)
                       (letrec*
                        ((g8505
                          (letrec*
                           ((x-cnd8506
                             (begin
                               (write '(funapp 2942 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 2942 51))
                                  (display "\n")
                                  'on-mouse)))))
                           (if x-cnd8506
                             (letrec*
                              ((g8507
                                (lambda (x y me)
                                  (letrec*
                                   ((g8508
                                     (letrec*
                                      ((x8509
                                        (letrec*
                                         ((x-cnd8510
                                           (begin
                                             (write '(funapp 2952 54))
                                             (display "\n")
                                             (equal? me "leave"))))
                                         (if x-cnd8510
                                           (letrec*
                                            ((x8511
                                              (begin
                                                (write '(funapp 2955 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2955 60))
                                                   (display "\n")
                                                   'posn)))))
                                            (begin
                                              (write '(funapp 2956 45))
                                              (display "\n")
                                              (x8511)))
                                           (begin
                                             (write '(funapp 2957 44))
                                             (display "\n")
                                             (new-posn x y))))))
                                      (begin
                                        (write '(funapp 2958 39))
                                        (display "\n")
                                        (new-world player x8509 zombies)))))
                                   g8508))))
                              g8507)
                             (letrec*
                              ((x-cnd8512
                                (begin
                                  (write '(funapp 2962 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 2962 54))
                                     (display "\n")
                                     'on-tick)))))
                              (if x-cnd8512
                                (letrec*
                                 ((g8513
                                   (lambda ()
                                     (letrec*
                                      ((g8514
                                        (letrec*
                                         ((x8521
                                           (letrec*
                                            ((x8522
                                              (begin
                                                (write '(funapp 2972 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2972 60))
                                                   (display "\n")
                                                   'move-toward)))))
                                            (begin
                                              (write '(funapp 2973 45))
                                              (display "\n")
                                              (x8522 mouse))))
                                          (x8515
                                           (letrec*
                                            ((x8518
                                              (letrec*
                                               ((x8519
                                                 (letrec*
                                                  ((x8520
                                                    (begin
                                                      (write '(funapp 2981 53))
                                                      (display "\n")
                                                      (zombies
                                                       (begin
                                                         (write
                                                          '(funapp 2981 61))
                                                         (display "\n")
                                                         'eat-brains)))))
                                                  (begin
                                                    (write '(funapp 2982 51))
                                                    (display "\n")
                                                    (x8520)))))
                                               (begin
                                                 (write '(funapp 2983 48))
                                                 (display "\n")
                                                 (x8519
                                                  (begin
                                                    (write '(funapp 2983 54))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (x8516
                                              (letrec*
                                               ((x8517
                                                 (begin
                                                   (write '(funapp 2986 56))
                                                   (display "\n")
                                                   (player
                                                    (begin
                                                      (write '(funapp 2986 63))
                                                      (display "\n")
                                                      'posn)))))
                                               (begin
                                                 (write '(funapp 2987 48))
                                                 (display "\n")
                                                 (x8517)))))
                                            (begin
                                              (write '(funapp 2988 45))
                                              (display "\n")
                                              (x8518 x8516)))))
                                         (begin
                                           (write '(funapp 2989 42))
                                           (display "\n")
                                           (new-world x8521 mouse x8515)))))
                                      g8514))))
                                 g8513)
                                (letrec*
                                 ((x-cnd8523
                                   (begin
                                     (write '(funapp 2993 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 2993 57))
                                        (display "\n")
                                        'to-draw)))))
                                 (if x-cnd8523
                                   (letrec*
                                    ((g8524
                                      (lambda ()
                                        (letrec*
                                         ((g8525
                                           (letrec*
                                            ((x8528
                                              (begin
                                                (write '(funapp 3001 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 3001 60))
                                                   (display "\n")
                                                   'draw-on))))
                                             (x8526
                                              (letrec*
                                               ((x8527
                                                 (begin
                                                   (write '(funapp 3004 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3004 64))
                                                      (display "\n")
                                                      'draw-on)))))
                                               (begin
                                                 (write '(funapp 3005 48))
                                                 (display "\n")
                                                 (x8527 MT-SCENE)))))
                                            (begin
                                              (write '(funapp 3006 45))
                                              (display "\n")
                                              (x8528 x8526)))))
                                         g8525))))
                                    g8524)
                                   (letrec*
                                    ((x-cnd8529
                                      (begin
                                        (write '(funapp 3010 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3010 60))
                                           (display "\n")
                                           'stop-when)))))
                                    (if x-cnd8529
                                      (letrec*
                                       ((g8530
                                         (lambda ()
                                           (letrec*
                                            ((g8531
                                              (letrec*
                                               ((x8534
                                                 (begin
                                                   (write '(funapp 3018 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 3018 64))
                                                      (display "\n")
                                                      'touching?))))
                                                (x8532
                                                 (letrec*
                                                  ((x8533
                                                    (begin
                                                      (write '(funapp 3021 59))
                                                      (display "\n")
                                                      (player
                                                       (begin
                                                         (write
                                                          '(funapp 3021 66))
                                                         (display "\n")
                                                         'posn)))))
                                                  (begin
                                                    (write '(funapp 3022 51))
                                                    (display "\n")
                                                    (x8533)))))
                                               (begin
                                                 (write '(funapp 3023 48))
                                                 (display "\n")
                                                 (x8534 x8532)))))
                                            g8531))))
                                       g8530)
                                      (letrec*
                                       ((g8535 "unknown message"))
                                       g8535)))))))))))
                        g8505))))
                   g8504)))
               (new-player
                (lambda (p)
                  (letrec*
                   ((g8536
                     (lambda (msg)
                       (letrec*
                        ((g8537
                          (letrec*
                           ((x-cnd8538
                             (begin
                               (write '(funapp 3039 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3039 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8538
                             (letrec*
                              ((g8539 (lambda () (letrec* ((g8540 p)) g8540))))
                              g8539)
                             (letrec*
                              ((x-cnd8541
                                (begin
                                  (write '(funapp 3045 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3045 54))
                                     (display "\n")
                                     'move-toward)))))
                              (if x-cnd8541
                                (letrec*
                                 ((g8542
                                   (lambda (q)
                                     (letrec*
                                      ((g8543
                                        (letrec*
                                         ((x8544
                                           (letrec*
                                            ((x8545
                                              (begin
                                                (write '(funapp 3055 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3055 55))
                                                   (display "\n")
                                                   'move-toward/speed)))))
                                            (begin
                                              (write '(funapp 3056 45))
                                              (display "\n")
                                              (x8545 q PLAYER-SPEED)))))
                                         (begin
                                           (write '(funapp 3057 42))
                                           (display "\n")
                                           (new-player x8544)))))
                                      g8543))))
                                 g8542)
                                (letrec*
                                 ((x-cnd8546
                                   (begin
                                     (write '(funapp 3061 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3061 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8546
                                   (letrec*
                                    ((g8547
                                      (lambda (scn)
                                        (letrec*
                                         ((g8548
                                           (letrec*
                                            ((x8549
                                              (begin
                                                (write '(funapp 3069 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3069 55))
                                                   (display "\n")
                                                   'draw-on/image)))))
                                            (begin
                                              (write '(funapp 3070 45))
                                              (display "\n")
                                              (x8549 PLAYER-IMG scn)))))
                                         g8548))))
                                    g8547)
                                   (letrec*
                                    ((g8550 "unknown message"))
                                    g8550)))))))))
                        g8537))))
                   g8536)))
               (new-horde
                (lambda (undead dead)
                  (letrec*
                   ((g8551
                     (lambda (msg)
                       (letrec*
                        ((g8552
                          (letrec*
                           ((x-cnd8553
                             (begin
                               (write '(funapp 3086 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3086 51))
                                  (display "\n")
                                  'dead)))))
                           (if x-cnd8553
                             (letrec*
                              ((g8554
                                (lambda () (letrec* ((g8555 dead)) g8555))))
                              g8554)
                             (letrec*
                              ((x-cnd8556
                                (begin
                                  (write '(funapp 3093 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3093 54))
                                     (display "\n")
                                     'undead)))))
                              (if x-cnd8556
                                (letrec*
                                 ((g8557
                                   (lambda ()
                                     (letrec* ((g8558 undead)) g8558))))
                                 g8557)
                                (letrec*
                                 ((x-cnd8559
                                   (begin
                                     (write '(funapp 3101 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3101 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8559
                                   (letrec*
                                    ((g8560
                                      (lambda (scn)
                                        (letrec*
                                         ((g8561
                                           (letrec*
                                            ((x8564
                                              (begin
                                                (write '(funapp 3109 53))
                                                (display "\n")
                                                (undead
                                                 (begin
                                                   (write '(funapp 3109 60))
                                                   (display "\n")
                                                   'draw-on/color))))
                                             (x8562
                                              (letrec*
                                               ((x8563
                                                 (begin
                                                   (write '(funapp 3112 56))
                                                   (display "\n")
                                                   (dead
                                                    (begin
                                                      (write '(funapp 3112 61))
                                                      (display "\n")
                                                      'draw-on/color)))))
                                               (begin
                                                 (write '(funapp 3113 48))
                                                 (display "\n")
                                                 (x8563 "black" scn)))))
                                            (begin
                                              (write '(funapp 3114 45))
                                              (display "\n")
                                              (x8564 "yellow" x8562)))))
                                         g8561))))
                                    g8560)
                                   (letrec*
                                    ((x-cnd8565
                                      (begin
                                        (write '(funapp 3118 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3118 60))
                                           (display "\n")
                                           'touching?)))))
                                    (if x-cnd8565
                                      (letrec*
                                       ((g8566
                                         (lambda (p)
                                           (letrec*
                                            ((g8567
                                              (letrec*
                                               ((val7263
                                                 (letrec*
                                                  ((x8568
                                                    (begin
                                                      (write '(funapp 3128 59))
                                                      (display "\n")
                                                      (undead
                                                       (begin
                                                         (write
                                                          '(funapp 3128 66))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3129 51))
                                                    (display "\n")
                                                    (x8568 p)))))
                                               (letrec*
                                                ((g8569
                                                  (if val7263
                                                    val7263
                                                    (letrec*
                                                     ((x8570
                                                       (begin
                                                         (write
                                                          '(funapp 3136 56))
                                                         (display "\n")
                                                         (dead
                                                          (begin
                                                            (write
                                                             '(funapp 3136 61))
                                                            (display "\n")
                                                            'touching?)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3137 54))
                                                       (display "\n")
                                                       (x8570 p))))))
                                                g8569))))
                                            g8567))))
                                       g8566)
                                      (letrec*
                                       ((x-cnd8571
                                         (begin
                                           (write '(funapp 3142 52))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3142 63))
                                              (display "\n")
                                              'move-toward)))))
                                       (if x-cnd8571
                                         (letrec*
                                          ((g8572
                                            (lambda (p)
                                              (letrec*
                                               ((g8573
                                                 (letrec*
                                                  ((x8574
                                                    (letrec*
                                                     ((x8575
                                                       (begin
                                                         (write
                                                          '(funapp 3153 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3153 63))
                                                            (display "\n")
                                                            'move-toward)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3154 54))
                                                       (display "\n")
                                                       (x8575 p)))))
                                                  (begin
                                                    (write '(funapp 3155 51))
                                                    (display "\n")
                                                    (new-horde x8574 dead)))))
                                               g8573))))
                                          g8572)
                                         (letrec*
                                          ((x-cnd8576
                                            (begin
                                              (write '(funapp 3160 45))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3160 56))
                                                 (display "\n")
                                                 'eat-brains)))))
                                          (if x-cnd8576
                                            (letrec*
                                             ((g8577
                                               (lambda ()
                                                 (letrec*
                                                  ((g8578
                                                    (letrec*
                                                     ((x8579
                                                       (begin
                                                         (write
                                                          '(funapp 3169 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3169 63))
                                                            (display "\n")
                                                            'kill-all)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3170 54))
                                                       (display "\n")
                                                       (x8579 dead)))))
                                                  g8578))))
                                             g8577)
                                            (letrec*
                                             ((g8580 "unknown message"))
                                             g8580)))))))))))))))
                        g8552))))
                   g8551)))
               (new-cons-zombies
                (lambda (z r)
                  (letrec*
                   ((g8581
                     (lambda (msg)
                       (letrec*
                        ((g8582
                          (letrec*
                           ((x-cnd8583
                             (begin
                               (write '(funapp 3186 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3186 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8583
                             (letrec*
                              ((g8584
                                (lambda (p)
                                  (letrec*
                                   ((g8585
                                     (letrec*
                                      ((x8588
                                        (letrec*
                                         ((x8589
                                           (begin
                                             (write '(funapp 3196 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3196 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3197 42))
                                           (display "\n")
                                           (x8589 p))))
                                       (x8586
                                        (letrec*
                                         ((x8587
                                           (begin
                                             (write '(funapp 3200 50))
                                             (display "\n")
                                             (r
                                              (begin
                                                (write '(funapp 3200 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3201 42))
                                           (display "\n")
                                           (x8587 p)))))
                                      (begin
                                        (write '(funapp 3202 39))
                                        (display "\n")
                                        (new-cons-zombies x8588 x8586)))))
                                   g8585))))
                              g8584)
                             (letrec*
                              ((x-cnd8590
                                (begin
                                  (write '(funapp 3206 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3206 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8590
                                (letrec*
                                 ((g8591
                                   (lambda (c s)
                                     (letrec*
                                      ((g8592
                                        (letrec*
                                         ((x8595
                                           (begin
                                             (write '(funapp 3214 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3214 52))
                                                (display "\n")
                                                'draw-on/color))))
                                          (x8593
                                           (letrec*
                                            ((x8594
                                              (begin
                                                (write '(funapp 3217 53))
                                                (display "\n")
                                                (r
                                                 (begin
                                                   (write '(funapp 3217 55))
                                                   (display "\n")
                                                   'draw-on/color)))))
                                            (begin
                                              (write '(funapp 3218 45))
                                              (display "\n")
                                              (x8594 c s)))))
                                         (begin
                                           (write '(funapp 3219 42))
                                           (display "\n")
                                           (x8595 c x8593)))))
                                      g8592))))
                                 g8591)
                                (letrec*
                                 ((x-cnd8596
                                   (begin
                                     (write '(funapp 3223 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3223 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8596
                                   (letrec*
                                    ((g8597
                                      (lambda (p)
                                        (letrec*
                                         ((g8598
                                           (letrec*
                                            ((val7264
                                              (letrec*
                                               ((x8599
                                                 (begin
                                                   (write '(funapp 3233 56))
                                                   (display "\n")
                                                   (z
                                                    (begin
                                                      (write '(funapp 3233 58))
                                                      (display "\n")
                                                      'touching?)))))
                                               (begin
                                                 (write '(funapp 3234 48))
                                                 (display "\n")
                                                 (x8599 p)))))
                                            (letrec*
                                             ((g8600
                                               (if val7264
                                                 val7264
                                                 (letrec*
                                                  ((x8601
                                                    (begin
                                                      (write '(funapp 3240 59))
                                                      (display "\n")
                                                      (r
                                                       (begin
                                                         (write
                                                          '(funapp 3240 61))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3241 51))
                                                    (display "\n")
                                                    (x8601 p))))))
                                             g8600))))
                                         g8598))))
                                    g8597)
                                   (letrec*
                                    ((x-cnd8602
                                      (begin
                                        (write '(funapp 3246 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3246 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8602
                                      (letrec*
                                       ((g8603
                                         (lambda (dead)
                                           (letrec*
                                            ((g8604
                                              (letrec*
                                               ((x-cnd8605
                                                 (letrec*
                                                  ((val7265
                                                    (letrec*
                                                     ((x8608
                                                       (begin
                                                         (write
                                                          '(funapp 3258 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3258 64))
                                                            (display "\n")
                                                            'touching?))))
                                                      (x8606
                                                       (letrec*
                                                        ((x8607
                                                          (begin
                                                            (write
                                                             '(funapp 3261 65))
                                                            (display "\n")
                                                            (z
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3261
                                                                  67))
                                                               (display "\n")
                                                               'posn)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3262 57))
                                                          (display "\n")
                                                          (x8607)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3263 54))
                                                       (display "\n")
                                                       (x8608 x8606)))))
                                                  (letrec*
                                                   ((g8609
                                                     (if val7265
                                                       val7265
                                                       (letrec*
                                                        ((x8612
                                                          (begin
                                                            (write
                                                             '(funapp 3270 59))
                                                            (display "\n")
                                                            (dead
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3270
                                                                  64))
                                                               (display "\n")
                                                               'touching?))))
                                                         (x8610
                                                          (letrec*
                                                           ((x8611
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3273
                                                                  68))
                                                               (display "\n")
                                                               (z
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     3273
                                                                     70))
                                                                  (display
                                                                   "\n")
                                                                  'posn)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3274
                                                                60))
                                                             (display "\n")
                                                             (x8611)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3275 57))
                                                          (display "\n")
                                                          (x8612 x8610))))))
                                                   g8609))))
                                               (if x-cnd8605
                                                 (letrec*
                                                  ((g8613
                                                    (letrec*
                                                     ((x8615
                                                       (begin
                                                         (write
                                                          '(funapp 3281 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3281 64))
                                                            (display "\n")
                                                            'kill-all))))
                                                      (x8614
                                                       (begin
                                                         (write
                                                          '(funapp 3283 56))
                                                         (display "\n")
                                                         (new-cons-zombies
                                                          z
                                                          dead))))
                                                     (begin
                                                       (write
                                                        '(funapp 3286 54))
                                                       (display "\n")
                                                       (x8615 x8614)))))
                                                  g8613)
                                                 (letrec*
                                                  ((g8616
                                                    (letrec*
                                                     ((res
                                                       (letrec*
                                                        ((x8617
                                                          (begin
                                                            (write
                                                             '(funapp 3293 65))
                                                            (display "\n")
                                                            (r
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3293
                                                                  67))
                                                               (display "\n")
                                                               'kill-all)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3294 57))
                                                          (display "\n")
                                                          (x8617 dead)))))
                                                     (letrec*
                                                      ((g8618
                                                        (letrec*
                                                         ((x8621
                                                           (letrec*
                                                            ((x8622
                                                              (letrec*
                                                               ((x8623
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3303
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (res
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3304
                                                                         66))
                                                                      (display
                                                                       "\n")
                                                                      'undead)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    3305
                                                                    64))
                                                                 (display "\n")
                                                                 (x8623)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3306
                                                                 61))
                                                              (display "\n")
                                                              (new-cons-zombies
                                                               z
                                                               x8622))))
                                                          (x8619
                                                           (letrec*
                                                            ((x8620
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3312
                                                                   63))
                                                                (display "\n")
                                                                (res
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3312
                                                                      67))
                                                                   (display
                                                                    "\n")
                                                                   'dead)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3313
                                                                 61))
                                                              (display "\n")
                                                              (x8620)))))
                                                         (begin
                                                           (write
                                                            '(funapp 3314 58))
                                                           (display "\n")
                                                           (new-horde
                                                            x8621
                                                            x8619)))))
                                                      g8618))))
                                                  g8616)))))
                                            g8604))))
                                       g8603)
                                      (letrec*
                                       ((g8624 "unknown message"))
                                       g8624)))))))))))
                        g8582))))
                   g8581)))
               (new-mt-zombies
                (lambda ()
                  (letrec*
                   ((g8625
                     (lambda (msg)
                       (letrec*
                        ((g8626
                          (letrec*
                           ((x-cnd8627
                             (begin
                               (write '(funapp 3334 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3334 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8627
                             (letrec*
                              ((g8628
                                (lambda (p)
                                  (letrec*
                                   ((g8629
                                     (begin
                                       (write '(funapp 3339 52))
                                       (display "\n")
                                       (new-mt-zombies))))
                                   g8629))))
                              g8628)
                             (letrec*
                              ((x-cnd8630
                                (begin
                                  (write '(funapp 3342 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3342 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8630
                                (letrec*
                                 ((g8631
                                   (lambda (c s) (letrec* ((g8632 s)) g8632))))
                                 g8631)
                                (letrec*
                                 ((x-cnd8633
                                   (begin
                                     (write '(funapp 3349 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3349 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8633
                                   (letrec*
                                    ((g8634
                                      (lambda (p)
                                        (letrec* ((g8635 #f)) g8635))))
                                    g8634)
                                   (letrec*
                                    ((x-cnd8636
                                      (begin
                                        (write '(funapp 3357 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3357 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8636
                                      (letrec*
                                       ((g8637
                                         (lambda (dead)
                                           (letrec*
                                            ((g8638
                                              (letrec*
                                               ((x8639
                                                 (begin
                                                   (write '(funapp 3365 56))
                                                   (display "\n")
                                                   (new-mt-zombies))))
                                               (begin
                                                 (write '(funapp 3366 48))
                                                 (display "\n")
                                                 (new-horde x8639 dead)))))
                                            g8638))))
                                       g8637)
                                      (letrec*
                                       ((g8640 "unknown message"))
                                       g8640)))))))))))
                        g8626))))
                   g8625)))
               (new-zombie
                (lambda (p)
                  (letrec*
                   ((g8641
                     (lambda (msg)
                       (letrec*
                        ((g8642
                          (letrec*
                           ((x-cnd8643
                             (begin
                               (write '(funapp 3382 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3382 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8643
                             (letrec*
                              ((g8644 (lambda () (letrec* ((g8645 p)) g8645))))
                              g8644)
                             (letrec*
                              ((x-cnd8646
                                (begin
                                  (write '(funapp 3388 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3388 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8646
                                (letrec*
                                 ((g8647
                                   (lambda (c s)
                                     (letrec*
                                      ((g8648
                                        (letrec*
                                         ((x8650
                                           (begin
                                             (write '(funapp 3396 50))
                                             (display "\n")
                                             (p
                                              (begin
                                                (write '(funapp 3396 52))
                                                (display "\n")
                                                'draw-on/image))))
                                          (x8649
                                           (begin
                                             (write '(funapp 3398 44))
                                             (display "\n")
                                             (circle
                                              ZOMBIE-RADIUS
                                              "solid"
                                              c))))
                                         (begin
                                           (write '(funapp 3399 42))
                                           (display "\n")
                                           (x8650 x8649 s)))))
                                      g8648))))
                                 g8647)
                                (letrec*
                                 ((x-cnd8651
                                   (begin
                                     (write '(funapp 3403 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3403 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8651
                                   (letrec*
                                    ((g8652
                                      (lambda (q)
                                        (letrec*
                                         ((g8653
                                           (letrec*
                                            ((x8654
                                              (letrec*
                                               ((x8655
                                                 (begin
                                                   (write '(funapp 3413 56))
                                                   (display "\n")
                                                   (p
                                                    (begin
                                                      (write '(funapp 3413 58))
                                                      (display "\n")
                                                      'dist)))))
                                               (begin
                                                 (write '(funapp 3414 48))
                                                 (display "\n")
                                                 (x8655 q)))))
                                            (begin
                                              (write '(funapp 3415 45))
                                              (display "\n")
                                              (<= x8654 ZOMBIE-RADIUS)))))
                                         g8653))))
                                    g8652)
                                   (letrec*
                                    ((x-cnd8656
                                      (begin
                                        (write '(funapp 3419 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3419 60))
                                           (display "\n")
                                           'move-toward)))))
                                    (if x-cnd8656
                                      (letrec*
                                       ((g8657
                                         (lambda (q)
                                           (letrec*
                                            ((g8658
                                              (letrec*
                                               ((x8659
                                                 (letrec*
                                                  ((x8660
                                                    (begin
                                                      (write '(funapp 3430 53))
                                                      (display "\n")
                                                      (p
                                                       (begin
                                                         (write
                                                          '(funapp 3430 55))
                                                         (display "\n")
                                                         'move-toward/speed)))))
                                                  (begin
                                                    (write '(funapp 3431 51))
                                                    (display "\n")
                                                    (x8660 q ZOMBIE-SPEED)))))
                                               (begin
                                                 (write '(funapp 3432 48))
                                                 (display "\n")
                                                 (new-zombie x8659)))))
                                            g8658))))
                                       g8657)
                                      (letrec*
                                       ((g8661 "unknown message"))
                                       g8661)))))))))))
                        g8642))))
                   g8641)))
               (new-posn
                (lambda (x y)
                  (letrec*
                   ((g8662
                     (letrec*
                      ((this
                        (lambda (msg)
                          (letrec*
                           ((g8663
                             (letrec*
                              ((x-cnd8664
                                (begin
                                  (write '(funapp 3450 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3450 54))
                                     (display "\n")
                                     'x)))))
                              (if x-cnd8664
                                (letrec*
                                 ((g8665
                                   (lambda () (letrec* ((g8666 x)) g8666))))
                                 g8665)
                                (letrec*
                                 ((x-cnd8667
                                   (begin
                                     (write '(funapp 3457 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3457 57))
                                        (display "\n")
                                        'y)))))
                                 (if x-cnd8667
                                   (letrec*
                                    ((g8668
                                      (lambda () (letrec* ((g8669 y)) g8669))))
                                    g8668)
                                   (letrec*
                                    ((x-cnd8670
                                      (begin
                                        (write '(funapp 3464 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3464 60))
                                           (display "\n")
                                           'posn)))))
                                    (if x-cnd8670
                                      (letrec*
                                       ((g8671
                                         (lambda ()
                                           (letrec* ((g8672 this)) g8672))))
                                       g8671)
                                      (letrec*
                                       ((x-cnd8673
                                         (begin
                                           (write '(funapp 3473 42))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3473 53))
                                              (display "\n")
                                              'move-toward/speed)))))
                                       (if x-cnd8673
                                         (letrec*
                                          ((g8674
                                            (lambda (p speed)
                                              (letrec*
                                               ((g8675
                                                 (letrec*
                                                  ((δx
                                                    (letrec*
                                                     ((x8676
                                                       (letrec*
                                                        ((x8677
                                                          (begin
                                                            (write
                                                             '(funapp 3485 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3485
                                                                  67))
                                                               (display "\n")
                                                               'x)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3486 57))
                                                          (display "\n")
                                                          (x8677)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3487 54))
                                                       (display "\n")
                                                       (- x8676 x))))
                                                   (δy
                                                    (letrec*
                                                     ((x8678
                                                       (letrec*
                                                        ((x8679
                                                          (begin
                                                            (write
                                                             '(funapp 3492 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3492
                                                                  67))
                                                               (display "\n")
                                                               'y)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3493 57))
                                                          (display "\n")
                                                          (x8679)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3494 54))
                                                       (display "\n")
                                                       (- x8678 y))))
                                                   (move-distance
                                                    (letrec*
                                                     ((x8680
                                                       (letrec*
                                                        ((x8682
                                                          (begin
                                                            (write
                                                             '(funapp 3499 65))
                                                            (display "\n")
                                                            (abs δx)))
                                                         (x8681
                                                          (begin
                                                            (write
                                                             '(funapp 3500 65))
                                                            (display "\n")
                                                            (abs δy))))
                                                        (begin
                                                          (write
                                                           '(funapp 3501 57))
                                                          (display "\n")
                                                          (max x8682 x8681)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3502 54))
                                                       (display "\n")
                                                       (min speed x8680)))))
                                                  (letrec*
                                                   ((g8683
                                                     (letrec*
                                                      ((x-cnd8684
                                                        (letrec*
                                                         ((x8686
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3508
                                                                66))
                                                             (display "\n")
                                                             (abs δx)))
                                                          (x8685
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3509
                                                                66))
                                                             (display "\n")
                                                             (abs δy))))
                                                         (begin
                                                           (write
                                                            '(funapp 3510 58))
                                                           (display "\n")
                                                           (< x8686 x8685)))))
                                                      (if x-cnd8684
                                                        (letrec*
                                                         ((g8687
                                                           (letrec*
                                                            ((x8690
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3516
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3516
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8688
                                                              (letrec*
                                                               ((x-cnd8689
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3520
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δy))))
                                                               (if x-cnd8689
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3524
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3527
                                                                 61))
                                                              (display "\n")
                                                              (x8690
                                                               0
                                                               x8688)))))
                                                         g8687)
                                                        (letrec*
                                                         ((g8691
                                                           (letrec*
                                                            ((x8694
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3533
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3533
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8692
                                                              (letrec*
                                                               ((x-cnd8693
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3537
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δx))))
                                                               (if x-cnd8693
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3541
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3544
                                                                 61))
                                                              (display "\n")
                                                              (x8694
                                                               x8692
                                                               0)))))
                                                         g8691)))))
                                                   g8683))))
                                               g8675))))
                                          g8674)
                                         (letrec*
                                          ((x-cnd8695
                                            (begin
                                              (write '(funapp 3550 55))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3550 66))
                                                 (display "\n")
                                                 'move)))))
                                          (if x-cnd8695
                                            (letrec*
                                             ((g8696
                                               (lambda (δx δy)
                                                 (letrec*
                                                  ((g8697
                                                    (letrec*
                                                     ((x8699
                                                       (begin
                                                         (write
                                                          '(funapp 3558 62))
                                                         (display "\n")
                                                         (+ x δx)))
                                                      (x8698
                                                       (begin
                                                         (write
                                                          '(funapp 3559 62))
                                                         (display "\n")
                                                         (+ y δy))))
                                                     (begin
                                                       (write
                                                        '(funapp 3560 54))
                                                       (display "\n")
                                                       (new-posn
                                                        x8699
                                                        x8698)))))
                                                  g8697))))
                                             g8696)
                                            (letrec*
                                             ((x-cnd8700
                                               (begin
                                                 (write '(funapp 3565 48))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 3565 59))
                                                    (display "\n")
                                                    'draw-on/image)))))
                                             (if x-cnd8700
                                               (letrec*
                                                ((g8701
                                                  (lambda (img scn)
                                                    (letrec*
                                                     ((g8702
                                                       (begin
                                                         (write
                                                          '(funapp 3572 56))
                                                         (display "\n")
                                                         (place-image
                                                          img
                                                          x
                                                          y
                                                          scn))))
                                                     g8702))))
                                                g8701)
                                               (letrec*
                                                ((x-cnd8703
                                                  (begin
                                                    (write '(funapp 3581 51))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 3581 62))
                                                       (display "\n")
                                                       'dist)))))
                                                (if x-cnd8703
                                                  (letrec*
                                                   ((g8704
                                                     (lambda (p)
                                                       (letrec*
                                                        ((g8705
                                                          (letrec*
                                                           ((x8706
                                                             (letrec*
                                                              ((x8711
                                                                (letrec*
                                                                 ((x8712
                                                                   (letrec*
                                                                    ((x8713
                                                                      (letrec*
                                                                       ((x8714
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3598
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3599
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'y)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3600
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8714)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3601
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8713
                                                                       y)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3604
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8712))))
                                                               (x8707
                                                                (letrec*
                                                                 ((x8708
                                                                   (letrec*
                                                                    ((x8709
                                                                      (letrec*
                                                                       ((x8710
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3612
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3613
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'x)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3614
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8710)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3615
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8709
                                                                       x)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3618
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8708)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3619
                                                                   63))
                                                                (display "\n")
                                                                (+
                                                                 x8711
                                                                 x8707)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3622
                                                                60))
                                                             (display "\n")
                                                             (sqrt x8706)))))
                                                        g8705))))
                                                   g8704)
                                                  (letrec*
                                                   ((g8715 "unknown message"))
                                                   g8715)))))))))))))))))
                           g8663))))
                      (letrec* ((g8716 this)) g8716))))
                   g8662)))
               (w0
                (letrec*
                 ((x8730
                   (letrec*
                    ((x8731
                      (begin
                        (write '(funapp 3633 43))
                        (display "\n")
                        (new-posn 0 0))))
                    (begin
                      (write '(funapp 3633 60))
                      (display "\n")
                      (new-player x8731))))
                  (x8729
                   (begin
                     (write '(funapp 3634 26))
                     (display "\n")
                     (new-posn 0 0)))
                  (x8717
                   (letrec*
                    ((x8722
                      (letrec*
                       ((x8727
                         (letrec*
                          ((x8728
                            (begin
                              (write '(funapp 3641 35))
                              (display "\n")
                              (new-posn 100 300))))
                          (begin
                            (write '(funapp 3642 27))
                            (display "\n")
                            (new-zombie x8728))))
                        (x8723
                         (letrec*
                          ((x8725
                            (letrec*
                             ((x8726
                               (begin
                                 (write '(funapp 3647 38))
                                 (display "\n")
                                 (new-posn 100 200))))
                             (begin
                               (write '(funapp 3648 30))
                               (display "\n")
                               (new-zombie x8726))))
                           (x8724
                            (begin
                              (write '(funapp 3649 35))
                              (display "\n")
                              (new-mt-zombies))))
                          (begin
                            (write '(funapp 3650 27))
                            (display "\n")
                            (new-cons-zombies x8725 x8724)))))
                       (begin
                         (write '(funapp 3651 24))
                         (display "\n")
                         (new-cons-zombies x8727 x8723))))
                     (x8718
                      (letrec*
                       ((x8720
                         (letrec*
                          ((x8721
                            (begin
                              (write '(funapp 3656 35))
                              (display "\n")
                              (new-posn 200 200))))
                          (begin
                            (write '(funapp 3657 27))
                            (display "\n")
                            (new-zombie x8721))))
                        (x8719
                         (begin
                           (write '(funapp 3658 32))
                           (display "\n")
                           (new-mt-zombies))))
                       (begin
                         (write '(funapp 3659 24))
                         (display "\n")
                         (new-cons-zombies x8720 x8719)))))
                    (begin
                      (write '(funapp 3660 21))
                      (display "\n")
                      (new-horde x8722 x8718)))))
                 (begin
                   (write '(funapp 3661 18))
                   (display "\n")
                   (new-world x8730 x8729 x8717)))))
              (letrec*
               ((g8732
                 (begin
                   (write '(funapp 3664 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 3665 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8734
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3669 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3669 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3669 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3669 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8735
                              (begin
                                (write '(funapp 3672 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8736
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8737
                                           (letrec*
                                            ((x8738
                                              (letrec*
                                               ((x8739
                                                 (begin
                                                   (write '(funapp 3681 50))
                                                   (display "\n")
                                                   (any/c j7581 k7582 g7580))))
                                               (begin
                                                 (write '(funapp 3682 42))
                                                 (display "\n")
                                                 (f7583 x8739)))))
                                            (begin
                                              (write '(funapp 3683 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7581
                                               k7582
                                               x8738)))))
                                         g8737))))
                                    g8736))
                                 xj7578
                                 xk7579
                                 image/c))))
                            g8735)))
                         (x8733 (input)))
                        (begin
                          (write '(funapp 3691 21))
                          (display "\n")
                          (x8734 x8733)))
                       (letrec*
                        ((x8742
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3695 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3695 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3695 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3695 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8743
                              (begin
                                (write '(funapp 3698 27))
                                (display "\n")
                                ((lambda (j7588 k7589 f7590)
                                   (letrec*
                                    ((g8744
                                      (lambda (g7586 g7587)
                                        (letrec*
                                         ((g8745
                                           (letrec*
                                            ((x8746
                                              (letrec*
                                               ((x8748
                                                 (begin
                                                   (write '(funapp 3707 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7586)))
                                                (x8747
                                                 (begin
                                                   (write '(funapp 3708 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7588
                                                    k7589
                                                    g7587))))
                                               (begin
                                                 (write '(funapp 3709 42))
                                                 (display "\n")
                                                 (f7590 x8748 x8747)))))
                                            (begin
                                              (write '(funapp 3710 39))
                                              (display "\n")
                                              (image/c j7588 k7589 x8746)))))
                                         g8745))))
                                    g8744))
                                 xj7584
                                 xk7585
                                 empty-scene))))
                            g8743)))
                         (x8741 (input))
                         (x8740 (input)))
                        (begin
                          (write '(funapp 3719 21))
                          (display "\n")
                          (x8742 x8741 x8740)))
                       (letrec*
                        ((x8753
                          (letrec*
                           ((xj7591
                             (begin
                               (write '(funapp 3723 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3723 37))
                                  (display "\n")
                                  'module))))
                            (xk7592
                             (begin
                               (write '(funapp 3723 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3723 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8754
                              (begin
                                (write '(funapp 3726 27))
                                (display "\n")
                                ((lambda (j7597 k7598 f7599)
                                   (letrec*
                                    ((g8755
                                      (lambda (g7593 g7594 g7595 g7596)
                                        (letrec*
                                         ((g8756
                                           (letrec*
                                            ((x8757
                                              (letrec*
                                               ((x8761
                                                 (begin
                                                   (write '(funapp 3735 50))
                                                   (display "\n")
                                                   (image/c/c
                                                    j7597
                                                    k7598
                                                    g7593)))
                                                (x8760
                                                 (begin
                                                   (write '(funapp 3736 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7594)))
                                                (x8759
                                                 (begin
                                                   (write '(funapp 3737 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7597
                                                    k7598
                                                    g7595)))
                                                (x8758
                                                 (begin
                                                   (write '(funapp 3738 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7597
                                                    k7598
                                                    g7596))))
                                               (begin
                                                 (write '(funapp 3739 42))
                                                 (display "\n")
                                                 (f7599
                                                  x8761
                                                  x8760
                                                  x8759
                                                  x8758)))))
                                            (begin
                                              (write '(funapp 3740 39))
                                              (display "\n")
                                              (image/c j7597 k7598 x8757)))))
                                         g8756))))
                                    g8755))
                                 xj7591
                                 xk7592
                                 place-image))))
                            g8754)))
                         (x8752 (input))
                         (x8751 (input))
                         (x8750 (input))
                         (x8749
                          (begin
                            (write '(funapp 3750 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3750 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3750 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3751 21))
                          (display "\n")
                          (x8753 x8752 x8751 x8750 x8749)))
                       (letrec*
                        ((x8765
                          (letrec*
                           ((xj7600
                             (begin
                               (write '(funapp 3755 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3755 37))
                                  (display "\n")
                                  'module))))
                            (xk7601
                             (begin
                               (write '(funapp 3755 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3755 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8766
                              (begin
                                (write '(funapp 3758 27))
                                (display "\n")
                                ((lambda (j7605 k7606 f7607)
                                   (letrec*
                                    ((g8767
                                      (lambda (g7602 g7603 g7604)
                                        (letrec*
                                         ((g8768
                                           (letrec*
                                            ((x8769
                                              (letrec*
                                               ((x8772
                                                 (begin
                                                   (write '(funapp 3767 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7605
                                                    k7606
                                                    g7602)))
                                                (x8771
                                                 (begin
                                                   (write '(funapp 3768 50))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7603)))
                                                (x8770
                                                 (begin
                                                   (write '(funapp 3770 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7605
                                                    k7606
                                                    g7604))))
                                               (begin
                                                 (write '(funapp 3771 42))
                                                 (display "\n")
                                                 (f7607 x8772 x8771 x8770)))))
                                            (begin
                                              (write '(funapp 3772 39))
                                              (display "\n")
                                              (image/c j7605 k7606 x8769)))))
                                         g8768))))
                                    g8767))
                                 xj7600
                                 xk7601
                                 circle))))
                            g8766)))
                         (x8764 (input))
                         (x8763 (input))
                         (x8762 (input)))
                        (begin
                          (write '(funapp 3782 21))
                          (display "\n")
                          (x8765 x8764 x8763 x8762)))
                       (letrec*
                        ((x8776
                          (letrec*
                           ((xj7608
                             (begin
                               (write '(funapp 3786 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3786 37))
                                  (display "\n")
                                  'module))))
                            (xk7609
                             (begin
                               (write '(funapp 3786 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3786 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8777
                              (begin
                                (write '(funapp 3789 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g8778
                                      (lambda (g7610 g7611 g7612)
                                        (letrec*
                                         ((g8779
                                           (letrec*
                                            ((x8780
                                              (letrec*
                                               ((x8783
                                                 (begin
                                                   (write '(funapp 3798 50))
                                                   (display "\n")
                                                   (player/c
                                                    j7613
                                                    k7614
                                                    g7610)))
                                                (x8782
                                                 (begin
                                                   (write '(funapp 3799 50))
                                                   (display "\n")
                                                   (posn/c j7613 k7614 g7611)))
                                                (x8781
                                                 (begin
                                                   (write '(funapp 3800 50))
                                                   (display "\n")
                                                   (horde/c
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3801 42))
                                                 (display "\n")
                                                 (f7615 x8783 x8782 x8781)))))
                                            (begin
                                              (write '(funapp 3802 39))
                                              (display "\n")
                                              (world/c j7613 k7614 x8780)))))
                                         g8779))))
                                    g8778))
                                 xj7608
                                 xk7609
                                 new-world))))
                            g8777)))
                         (x8775 (input))
                         (x8774 (input))
                         (x8773 (input)))
                        (begin
                          (write '(funapp 3812 21))
                          (display "\n")
                          (x8776 x8775 x8774 x8773)))
                       (letrec*
                        ((x8785
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3816 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3816 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3816 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3816 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8786
                              (begin
                                (write '(funapp 3819 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g8787
                                      (lambda (g7618)
                                        (letrec*
                                         ((g8788
                                           (letrec*
                                            ((x8789
                                              (letrec*
                                               ((x8790
                                                 (begin
                                                   (write '(funapp 3828 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3829 42))
                                                 (display "\n")
                                                 (f7621 x8790)))))
                                            (begin
                                              (write '(funapp 3830 39))
                                              (display "\n")
                                              (player/c j7619 k7620 x8789)))))
                                         g8788))))
                                    g8787))
                                 xj7616
                                 xk7617
                                 new-player))))
                            g8786)))
                         (x8784 (input)))
                        (begin
                          (write '(funapp 3838 21))
                          (display "\n")
                          (x8785 x8784)))
                       (letrec*
                        ((x8793
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3842 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3842 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3842 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3842 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8794
                              (begin
                                (write '(funapp 3845 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g8795
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g8796
                                           (letrec*
                                            ((x8797
                                              (letrec*
                                               ((x8799
                                                 (begin
                                                   (write '(funapp 3854 50))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x8798
                                                 (begin
                                                   (write '(funapp 3856 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3857 42))
                                                 (display "\n")
                                                 (f7628 x8799 x8798)))))
                                            (begin
                                              (write '(funapp 3858 39))
                                              (display "\n")
                                              (horde/c j7626 k7627 x8797)))))
                                         g8796))))
                                    g8795))
                                 xj7622
                                 xk7623
                                 new-horde))))
                            g8794)))
                         (x8792 (input))
                         (x8791 (input)))
                        (begin
                          (write '(funapp 3867 21))
                          (display "\n")
                          (x8793 x8792 x8791)))
                       (letrec*
                        ((x8802
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3871 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3871 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3871 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3871 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8803
                              (begin
                                (write '(funapp 3874 27))
                                (display "\n")
                                ((lambda (j7633 k7634 f7635)
                                   (letrec*
                                    ((g8804
                                      (lambda (g7631 g7632)
                                        (letrec*
                                         ((g8805
                                           (letrec*
                                            ((x8806
                                              (letrec*
                                               ((x8808
                                                 (begin
                                                   (write '(funapp 3883 50))
                                                   (display "\n")
                                                   (zombie/c
                                                    j7633
                                                    k7634
                                                    g7631)))
                                                (x8807
                                                 (begin
                                                   (write '(funapp 3885 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7633
                                                    k7634
                                                    g7632))))
                                               (begin
                                                 (write '(funapp 3886 42))
                                                 (display "\n")
                                                 (f7635 x8808 x8807)))))
                                            (begin
                                              (write '(funapp 3887 39))
                                              (display "\n")
                                              (zombies/c j7633 k7634 x8806)))))
                                         g8805))))
                                    g8804))
                                 xj7629
                                 xk7630
                                 new-cons-zombies))))
                            g8803)))
                         (x8801 (input))
                         (x8800 (input)))
                        (begin
                          (write '(funapp 3896 21))
                          (display "\n")
                          (x8802 x8801 x8800)))
                       (letrec*
                        ((xj7636
                          (begin
                            (write '(funapp 3898 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3898 34))
                               (display "\n")
                               'module))))
                         (xk7637
                          (begin
                            (write '(funapp 3898 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3898 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8809
                           (begin
                             (write '(funapp 3901 24))
                             (display "\n")
                             ((lambda (j7638 k7639 f7640)
                                (letrec*
                                 ((g8810
                                   (lambda ()
                                     (letrec*
                                      ((g8811
                                        (letrec*
                                         ((x8812
                                           (begin
                                             (write '(funapp 3908 44))
                                             (display "\n")
                                             (f7640))))
                                         (begin
                                           (write '(funapp 3909 36))
                                           (display "\n")
                                           (zombies/c j7638 k7639 x8812)))))
                                      g8811))))
                                 g8810))
                              xj7636
                              xk7637
                              new-mt-zombies))))
                         g8809))
                       (letrec*
                        ((x8814
                          (letrec*
                           ((xj7641
                             (begin
                               (write '(funapp 3919 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3919 37))
                                  (display "\n")
                                  'module))))
                            (xk7642
                             (begin
                               (write '(funapp 3919 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3919 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8815
                              (begin
                                (write '(funapp 3922 27))
                                (display "\n")
                                ((lambda (j7644 k7645 f7646)
                                   (letrec*
                                    ((g8816
                                      (lambda (g7643)
                                        (letrec*
                                         ((g8817
                                           (letrec*
                                            ((x8818
                                              (letrec*
                                               ((x8819
                                                 (begin
                                                   (write '(funapp 3931 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7644
                                                    k7645
                                                    g7643))))
                                               (begin
                                                 (write '(funapp 3932 42))
                                                 (display "\n")
                                                 (f7646 x8819)))))
                                            (begin
                                              (write '(funapp 3933 39))
                                              (display "\n")
                                              (zombie/c j7644 k7645 x8818)))))
                                         g8817))))
                                    g8816))
                                 xj7641
                                 xk7642
                                 new-zombie))))
                            g8815)))
                         (x8813 (input)))
                        (begin
                          (write '(funapp 3941 21))
                          (display "\n")
                          (x8814 x8813)))
                       (letrec*
                        ((x8822
                          (letrec*
                           ((xj7647
                             (begin
                               (write '(funapp 3945 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3945 37))
                                  (display "\n")
                                  'module))))
                            (xk7648
                             (begin
                               (write '(funapp 3945 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3945 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8823
                              (begin
                                (write '(funapp 3948 27))
                                (display "\n")
                                ((lambda (j7651 k7652 f7653)
                                   (letrec*
                                    ((g8824
                                      (lambda (g7649 g7650)
                                        (letrec*
                                         ((g8825
                                           (letrec*
                                            ((x8826
                                              (letrec*
                                               ((x8828
                                                 (begin
                                                   (write '(funapp 3957 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7649)))
                                                (x8827
                                                 (begin
                                                   (write '(funapp 3958 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7651
                                                    k7652
                                                    g7650))))
                                               (begin
                                                 (write '(funapp 3959 42))
                                                 (display "\n")
                                                 (f7653 x8828 x8827)))))
                                            (begin
                                              (write '(funapp 3960 39))
                                              (display "\n")
                                              (posn/c j7651 k7652 x8826)))))
                                         g8825))))
                                    g8824))
                                 xj7647
                                 xk7648
                                 new-posn))))
                            g8823)))
                         (x8821 (input))
                         (x8820 (input)))
                        (begin
                          (write '(funapp 3969 21))
                          (display "\n")
                          (x8822 x8821 x8820)))
                       (letrec*
                        ((xj7654
                          (begin
                            (write '(funapp 3971 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3971 34))
                               (display "\n")
                               'module))))
                         (xk7655
                          (begin
                            (write '(funapp 3971 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3971 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8829
                           (begin
                             (write '(funapp 3972 38))
                             (display "\n")
                             (world/c xj7654 xk7655 w0))))
                         g8829))))))))
               g8732))))
           g7685))))
       g7668)))
    g7667)))
