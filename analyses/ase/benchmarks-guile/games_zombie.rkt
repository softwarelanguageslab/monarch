(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7653 #t)) g7653)))
    (meta (lambda (v) (letrec* ((g7654 v)) g7654)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7655
          (letrec*
           ((g7656
             (letrec*
              ((x-e7657 lst))
              (letrec*
               ((v1742 x-e7657))
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
                   ((x-cnd7658
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7658
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
           g7656)))
        g7655)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7659 (lambda (v) (letrec* ((g7660 v)) g7660)))) g7659)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7661
          (letrec*
           ((x7662 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7662)))))
        g7661))))
   (letrec*
    ((g7663
      (letrec*
       ((g7664
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7665
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7665)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7666
                 (letrec*
                  ((x7668
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7668))))
                (g7667
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7669
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7670 (if val7245 val7245 #f))) g7670)))))
                   g7669))))
               g7667)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7671
                 (letrec*
                  ((x7673
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7673))))
                (g7672
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7674
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7675 (if val7247 val7247 #f))) g7675)))))
                   g7674))))
               g7672)))
           (>
            (lambda (x y)
              (letrec*
               ((g7676
                 (letrec*
                  ((x7678
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7678))))
                (g7677
                 (letrec*
                  ((x7679
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7679)))))
               g7677)))
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
           ((g7680 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7681
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7682
                     (lambda (k j lst)
                       (letrec*
                        ((g7683
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7684
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7684))
                             lst))))
                        g7683))))
                   g7682)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7686
                        g7267
                        (begin
                          (write '(blame g7265 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7685)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7688
                        g7270
                        (begin
                          (write '(blame g7268 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7687)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7690
                        g7273
                        (begin
                          (write '(blame g7271 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7689)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7693 #t)) g7693)) g7276))))
                      (if x-cnd7692
                        g7276
                        (begin
                          (write '(blame g7274 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7691)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x-cnd7695
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7696 #t)) g7696)) g7279))))
                      (if x-cnd7695
                        g7279
                        (begin
                          (write '(blame g7277 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7694)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x-cnd7698
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7698
                        g7282
                        (begin
                          (write '(blame g7280 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7697)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x-cnd7700
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7700
                        g7285
                        (begin
                          (write '(blame g7283 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7699)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x-cnd7702
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7702
                        g7288
                        (begin
                          (write '(blame g7286 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7701)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x-cnd7704
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7704
                        g7291
                        (begin
                          (write '(blame g7289 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7703)))
               (string?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x-cnd7706
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7294))))
                      (if x-cnd7706
                        g7294
                        (begin
                          (write '(blame g7292 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7705)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7707
                     (lambda (k j v)
                       (letrec*
                        ((g7708
                          (letrec*
                           ((x-cnd7709
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7709
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7708))))
                   g7707)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7710
                     (lambda (k j v)
                       (letrec*
                        ((g7711
                          (letrec*
                           ((x-cnd7712
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7712
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7716
                                (letrec*
                                 ((x7717
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7717))))
                               (x7713
                                (letrec*
                                 ((x7715
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7714
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7715 k j x7714)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7716 x7713)))))))
                        g7711))))
                   g7710)))
               (any? (lambda (v) (letrec* ((g7718 #t)) g7718)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7720)))))
                   g7719)))
               (nonzero?/c
                (lambda (g7295 g7296 g7297)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x-cnd7722
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7723
                                (letrec*
                                 ((x7724
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7724)))))
                              g7723))
                           g7297))))
                      (if x-cnd7722
                        g7297
                        (begin
                          (write '(blame g7295 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7295)))))))
                   g7721)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7725
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7726
                          (letrec*
                           ((x-cnd7727
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7728
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7728))
                                g7300))))
                           (if x-cnd7727
                             g7300
                             (begin
                               (write '(blame g7298 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7726))))
                   g7725)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7729
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7730
                          (letrec*
                           ((x-cnd7731
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7732
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7732))
                                g7303))))
                           (if x-cnd7731
                             g7303
                             (begin
                               (write '(blame g7301 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7730))))
                   g7729)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7733
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7734
                          (letrec*
                           ((x-cnd7735
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7736
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7736))
                                g7306))))
                           (if x-cnd7735
                             g7306
                             (begin
                               (write '(blame g7304 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7734))))
                   g7733)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7737
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7738
                          (letrec*
                           ((x-cnd7739
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7740
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7740))
                                g7309))))
                           (if x-cnd7739
                             g7309
                             (begin
                               (write '(blame g7307 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7738))))
                   g7737)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7741
                     (lambda (g7310 g7311 g7312)
                       (letrec*
                        ((g7742
                          (letrec*
                           ((x-cnd7743
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7744
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7744))
                                g7312))))
                           (if x-cnd7743
                             g7312
                             (begin
                               (write '(blame g7310 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7310)))))))
                        g7742))))
                   g7741)))
               (meta (lambda (v) (letrec* ((g7745 v)) g7745)))
               (+
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7746
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7748
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7749
                                 (letrec*
                                  ((x7750
                                    (letrec*
                                     ((x7752
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7751
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7319 x7752 x7751)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7750)))))
                               g7749))))
                          g7748))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7747
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7747))))))
                  g7746)))
               (-
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7753
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7755
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7756
                                 (letrec*
                                  ((x7757
                                    (letrec*
                                     ((x7759
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7758
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7326 x7759 x7758)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7757)))))
                               g7756))))
                          g7755))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7754
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7754))))))
                  g7753)))
               (*
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7760
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7762
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7763
                                 (letrec*
                                  ((x7764
                                    (letrec*
                                     ((x7766
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7765
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7333 x7766 x7765)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7331 k7332 x7764)))))
                               g7763))))
                          g7762))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7761
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7761))))))
                  g7760)))
               (<
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7767
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7769
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7770
                                 (letrec*
                                  ((x7771
                                    (letrec*
                                     ((x7773
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7772
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7340 x7773 x7772)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7771)))))
                               g7770))))
                          g7769))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7768
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7768))))))
                  g7767)))
               (>
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7774
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7776
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7777
                                 (letrec*
                                  ((x7778
                                    (letrec*
                                     ((x7780
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7779
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7347 x7780 x7779)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7778)))))
                               g7777))))
                          g7776))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7775
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7775))))))
                  g7774)))
               (<=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7781
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7783
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7784
                                 (letrec*
                                  ((x7785
                                    (letrec*
                                     ((x7787
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7786
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7354 x7787 x7786)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7785)))))
                               g7784))))
                          g7783))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7782
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7782))))))
                  g7781)))
               (>=
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7788
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7790
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7791
                                 (letrec*
                                  ((x7792
                                    (letrec*
                                     ((x7794
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7793
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7361 x7794 x7793)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7359 k7360 x7792)))))
                               g7791))))
                          g7790))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7789
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7789))))))
                  g7788)))
               (/
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7795
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7797
                            (lambda (g7364 g7365)
                              (letrec*
                               ((g7798
                                 (letrec*
                                  ((x7799
                                    (letrec*
                                     ((x7801
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7364)))
                                      (x7800
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7368 x7801 x7800)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7366 k7367 x7799)))))
                               g7798))))
                          g7797))
                       xj7362
                       xk7363
                       (lambda (a b)
                         (letrec*
                          ((g7796
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7796))))))
                  g7795)))
               (car
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7802
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7804
                            (lambda (g7371)
                              (letrec*
                               ((g7805
                                 (letrec*
                                  ((x7806
                                    (letrec*
                                     ((x7807
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7374 x7807)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7806)))))
                               g7805))))
                          g7804))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7803
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7803))))))
                  g7802)))
               (cdr
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7808
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7810
                            (lambda (g7377)
                              (letrec*
                               ((g7811
                                 (letrec*
                                  ((x7812
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7380 x7813)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7378 k7379 x7812)))))
                               g7811))))
                          g7810))
                       xj7375
                       xk7376
                       (lambda (p)
                         (letrec*
                          ((g7809
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7809))))))
                  g7808)))
               (cons
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7814
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7816
                            (lambda (g7383 g7384)
                              (letrec*
                               ((g7817
                                 (letrec*
                                  ((x7818
                                    (letrec*
                                     ((x7820
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7383)))
                                      (x7819
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7387 x7820 x7819)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7385 k7386 x7818)))))
                               g7817))))
                          g7816))
                       xj7381
                       xk7382
                       (lambda (a b)
                         (letrec*
                          ((g7815
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7815))))))
                  g7814)))
               (vector-ref
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7821
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7823
                            (lambda (g7390)
                              (letrec*
                               ((g7824
                                 (letrec*
                                  ((x7825
                                    (letrec*
                                     ((x7826
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7393 x7826)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7391 k7392 x7825)))))
                               g7824))))
                          g7823))
                       xj7388
                       xk7389
                       (lambda (v i)
                         (letrec*
                          ((g7822
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7822))))))
                  g7821)))
               (vector-set!
                (letrec*
                 ((xj7394
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7395
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7827
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7398 k7399 f7400)
                         (letrec*
                          ((g7829
                            (lambda (g7396 g7397)
                              (letrec*
                               ((g7830
                                 (letrec*
                                  ((x7831
                                    (letrec*
                                     ((x7833
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7398 k7399 g7396)))
                                      (x7832
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7398 k7399 g7397))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7400 x7833 x7832)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7398 k7399 x7831)))))
                               g7830))))
                          g7829))
                       xj7394
                       xk7395
                       (lambda (vec i v)
                         (letrec*
                          ((g7828
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7828))))))
                  g7827)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7836)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7835)))))
                   g7834)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((x-cnd7842
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7842
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7846))))
                          (x7843
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7844)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7845 x7843)))))))
                   g7839)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7848)))))
                   g7847)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (letrec*
                            ((x7852
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7852)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7850)))))
                   g7849)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7856)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7855)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7854)))))
                   g7853)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7861))))
                    (g7859
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 715 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 716 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7862
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7863 res))
                       g7863))))
                   g7859)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7870)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7869)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7868)))))
                   g7867)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (letrec*
                      ((x-cnd7874
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7874
                        #f
                        (letrec*
                         ((x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7876 k)))))
                         (if x-cnd7875
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7877)))))))))
                   g7872)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7879)))))
                   g7878)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        ""
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7887))))
                          (x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7885)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7886 x7884)))))))
                   g7881)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7891))))
                    (g7889
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7892))))
                    (g7890
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7893
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7893))))
                   g7890)))
               (cdddar
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
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7897)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7896)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7895)))))
                   g7894)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7901))))
                    (g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x-cnd7903
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7903
                        x
                        (letrec*
                         ((x7905
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7904
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7905 x7904)))))))
                   g7900)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7906
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7906)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x-cnd7908
                        (letrec*
                         ((x7909 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7909)))))
                      (if x-cnd7908
                        (letrec*
                         ((x7910 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7910)))
                        #f))))
                   g7907)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7912
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7912 9)))))
                      (letrec*
                       ((g7913
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7914
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7914 10)))))
                            (letrec*
                             ((g7915
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7916
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7916 32))))))
                             g7915)))))
                       g7913))))
                   g7911)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7919)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7918)))))
                   g7917)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7921)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7923 #f)) g7923)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7925)))))
                   g7924)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (letrec*
                      ((x-cnd7929
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7929
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7927)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7931
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7932
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7932
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7933
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7934
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7934
                                       (letrec*
                                        ((x-cnd7935
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7935
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7936
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7937
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7937
                                             (letrec*
                                              ((x-cnd7938
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7938
                                                (letrec*
                                                 ((x-cnd7939
                                                   (letrec*
                                                    ((x7941
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7940
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7941 x7940)))))
                                                 (if x-cnd7939
                                                   (letrec*
                                                    ((x7943
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7942
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7943 x7942)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7944
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7945
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7945
                                                (letrec*
                                                 ((x-cnd7946
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7946
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7947
                                                       (letrec*
                                                        ((x-cnd7948
                                                          (letrec*
                                                           ((x7949
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  956
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 958 60))
                                                             (display "\n")
                                                             (= x7949 n)))))
                                                        (if x-cnd7948
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7950
                                                                  (letrec*
                                                                   ((val7255
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          967
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7951
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7952
                                                                           (letrec*
                                                                            ((x7954
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   976
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7953
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   980
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 983
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7954
                                                                               x7953)))))
                                                                         (if x-cnd7952
                                                                           (letrec*
                                                                            ((x7955
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   989
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 992
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7955)))
                                                                           #f)))))
                                                                    g7951))))
                                                                g7950))))
                                                           (letrec*
                                                            ((g7956
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7956))
                                                          #f))))
                                                     g7947))
                                                   #f))
                                                #f)))))
                                         g7944)))))
                                   g7936)))))
                             g7933)))))
                       g7931))))
                   g7930)))
               (cdaaar
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
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7960)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7959)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7958)))))
                   g7957)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7962
                        (letrec*
                         ((x7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7964)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7963)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7962)))))
                   g7961)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7965
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7965)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1041 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1042 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7971
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7972 res))
                       g7972))))
                   g7968)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7973
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7973)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7979
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7979))))
                   g7976)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7981
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7982)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7981)))))
                   g7980)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7984
                        (letrec*
                         ((x7985
                           (letrec*
                            ((x7986
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7986)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7985)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7984)))))
                   g7983)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7988)))))
                   g7987)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7992)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7991)))))
                   g7990)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7996))))
                    (g7994
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7997))))
                    (g7995
                     (letrec*
                      ((x7998
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7998)))))
                   g7995)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x8002)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8001)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x8000)))))
                   g7999)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x8005))))
                    (g8004
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g8004)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8006
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g8006)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8008
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x8009)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x8008)))))
                   g8007)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8010
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g8010)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x8013))))
                    (g8012
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8014
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x8017
                           (letrec*
                            ((x8018
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x8018))))
                          (x8015
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x8016)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x8017 x8015)))))))
                   g8012)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x8020
                        (letrec*
                         ((x8021
                           (letrec*
                            ((x8022
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x8022)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x8021)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x8020)))))
                   g8019)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x8024
                        (letrec*
                         ((x8025
                           (letrec*
                            ((x8026
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x8026)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x8025)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x8024)))))
                   g8023)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x8029
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x8029))))
                    (g8028
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x8030)))))
                   g8028)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x8034)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x8033)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x8032)))))
                   g8031)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8038
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x8038))))
                    (g8036
                     (letrec*
                      ((x8039
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x8039))))
                    (g8037
                     (letrec*
                      ((x-cnd8040
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8040
                        (letrec*
                         ((g8041
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g8041)
                        (letrec*
                         ((x-cnd8042
                           (letrec*
                            ((x8043
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x8043)))))
                         (if x-cnd8042
                           (letrec*
                            ((g8044
                              (letrec*
                               ((x8045
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x8045)))))
                            g8044)
                           (letrec*
                            ((x-cnd8046
                              (letrec*
                               ((x8047
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x8047)))))
                            (if x-cnd8046
                              (letrec*
                               ((g8048
                                 (letrec*
                                  ((x8050
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x8049
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x8050 x8049)))))
                               g8048)
                              (letrec*
                               ((x-cnd8051
                                 (letrec*
                                  ((x8052
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x8052)))))
                               (if x-cnd8051
                                 (letrec*
                                  ((g8053
                                    (letrec*
                                     ((x8056
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x8055
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8054
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x8056 x8055 x8054)))))
                                  g8053)
                                 (letrec*
                                  ((x-cnd8057
                                    (letrec*
                                     ((x8058
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x8058)))))
                                  (if x-cnd8057
                                    (letrec*
                                     ((g8059
                                       (letrec*
                                        ((x8063
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x8062
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8061
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8060
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x8063 x8062 x8061 x8060)))))
                                     g8059)
                                    (letrec*
                                     ((x-cnd8064
                                       (letrec*
                                        ((x8065
                                          (letrec*
                                           ((x8066
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x8066)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x8065)))))
                                     (if x-cnd8064
                                       (letrec*
                                        ((g8067
                                          (letrec*
                                           ((x8073
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x8072
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8071
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8070
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8068
                                             (letrec*
                                              ((x8069
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x8069)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x8073
                                              x8072
                                              x8071
                                              x8070
                                              x8068)))))
                                        g8067)
                                       (letrec*
                                        ((x-cnd8074
                                          (letrec*
                                           ((x8075
                                             (letrec*
                                              ((x8076
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x8076)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x8075)))))
                                        (if x-cnd8074
                                          (letrec*
                                           ((g8077
                                             (letrec*
                                              ((x8085
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8084
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8083
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8082
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8080
                                                (letrec*
                                                 ((x8081
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x8081))))
                                               (x8078
                                                (letrec*
                                                 ((x8079
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x8079)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x8085
                                                 x8084
                                                 x8083
                                                 x8082
                                                 x8080
                                                 x8078)))))
                                           g8077)
                                          (letrec*
                                           ((x-cnd8086
                                             (letrec*
                                              ((x8087
                                                (letrec*
                                                 ((x8088
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x8088)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x8087)))))
                                           (if x-cnd8086
                                             (letrec*
                                              ((g8089
                                                (letrec*
                                                 ((x8099
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8098
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8097
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8096
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8094
                                                   (letrec*
                                                    ((x8095
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x8095))))
                                                  (x8092
                                                   (letrec*
                                                    ((x8093
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x8093))))
                                                  (x8090
                                                   (letrec*
                                                    ((x8091
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x8091)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x8099
                                                    x8098
                                                    x8097
                                                    x8096
                                                    x8094
                                                    x8092
                                                    x8090)))))
                                              g8089)
                                             (letrec*
                                              ((g8100
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8100)))))))))))))))))))
                   g8037)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8103
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x8103))))
                    (g8102
                     (letrec*
                      ((x-cnd8104
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8104
                        #f
                        (letrec*
                         ((x-cnd8105
                           (letrec*
                            ((x8106
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x8106 e)))))
                         (if x-cnd8105
                           l
                           (letrec*
                            ((x8107
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x8107)))))))))
                   g8102)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8109
                        (letrec*
                         ((x8110
                           (letrec*
                            ((x8111
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x8111)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x8110)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x8109)))))
                   g8108)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8113
                        (letrec*
                         ((x8114
                           (letrec*
                            ((x8115
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x8115)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x8114)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x8113)))))
                   g8112)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8116
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g8116)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x8119))))
                    (g8118
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g8118)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8120
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8121
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8121))))
                   g8120)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8123
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x8123)))))
                   g8122)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd8125
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8125
                           (letrec*
                            ((x8126
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x8126)))
                           #f))))
                      (letrec*
                       ((g8127
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g8127))))
                   g8124)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x8131)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x8130)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x8129)))))
                   g8128)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x-cnd8133
                        (letrec*
                         ((x8134 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x8134 c)))))
                      (if x-cnd8133
                        (letrec*
                         ((x8135 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x8135)))
                        #f))))
                   g8132)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x8138))))
                    (g8137
                     (letrec*
                      ((x-cnd8139
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8139
                        #f
                        (letrec*
                         ((x-cnd8140
                           (letrec*
                            ((x8141
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x8141 k)))))
                         (if x-cnd8140
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8142
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x8142)))))))))
                   g8137)))
               (not (lambda (x) (letrec* ((g8143 (if x #f #t))) g8143)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8144
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g8144)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x8147))))
                    (g8146
                     (letrec*
                      ((x-cnd8148
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8148
                        #f
                        (letrec*
                         ((x-cnd8149
                           (letrec*
                            ((x8150
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x8150 e)))))
                         (if x-cnd8149
                           l
                           (letrec*
                            ((x8151
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x8151)))))))))
                   g8146)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x8153
                        (letrec*
                         ((x8154
                           (letrec*
                            ((x8155
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x8155)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x8154)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x8153)))))
                   g8152)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8156
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x8158))))
                    (g8157
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8159
                             (letrec*
                              ((x-cnd8160
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8160
                                0
                                (letrec*
                                 ((x8161
                                   (letrec*
                                    ((x8162
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x8162)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x8161)))))))
                           g8159))))
                      (letrec*
                       ((g8163
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g8163))))
                   g8157)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x8167
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x8167))))
                    (g8165
                     (letrec*
                      ((x8168
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x8168))))
                    (g8166
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8169
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8169))))
                   g8166)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8171
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x8171)))))
                   g8170)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8172
                     (letrec*
                      ((x8173
                        (letrec*
                         ((x8174
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x8174)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x8173)))))
                   g8172)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x8177
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x8177))))
                    (g8176
                     (letrec*
                      ((x-cnd8178
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8178
                        #f
                        (letrec*
                         ((x-cnd8179
                           (letrec*
                            ((x8180
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x8180 k)))))
                         (if x-cnd8179
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8181
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x8181)))))))))
                   g8176)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8182
                     (letrec*
                      ((x8183
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x8183)))))
                   g8182)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8184
                     (letrec*
                      ((x8187
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x8187))))
                    (g8185
                     (letrec*
                      ((x8188
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x8188))))
                    (g8186
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x8189)))))
                   g8186)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8190
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8191
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8191))))
                   g8190)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8192
                     (letrec*
                      ((x8195
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x8195))))
                    (g8193
                     (letrec*
                      ((x8196
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x8196))))
                    (g8194
                     (letrec*
                      ((x-cnd8197
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8197
                        #t
                        (letrec*
                         ((x-cnd8198
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8198
                           (letrec*
                            ((g8199
                              (letrec*
                               ((x8201
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x8201))))
                             (g8200
                              (letrec*
                               ((x8202
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x8202)))))
                            g8200)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g8194)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8203
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x8205))))
                    (g8204
                     (letrec*
                      ((x-cnd8206
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8206
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8204)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8207
                     (letrec*
                      ((x8210
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x8210))))
                    (g8208
                     (letrec*
                      ((x8211
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x8211))))
                    (g8209
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8212
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8212))))
                   g8209)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8213
                     (letrec*
                      ((x8214
                        (letrec*
                         ((x8215
                           (letrec*
                            ((x8216
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x8216)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x8215)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x8214)))))
                   g8213)))
               (newline (lambda () (letrec* ((g8217 #f)) g8217)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8218
                     (letrec*
                      ((x8220
                        (letrec*
                         ((x8221
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x8221))))
                       (x8219
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x8220 x8219)))))
                   g8218)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8222
                     (letrec*
                      ((x8226
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x8226))))
                    (g8223
                     (letrec*
                      ((x8227
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x8227))))
                    (g8224
                     (letrec*
                      ((x8228
                        (letrec*
                         ((x8229
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x8229)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x8228))))
                    (g8225
                     (letrec*
                      ((x-cnd8230
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8230
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8232
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x8231
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8232 x8231)))))))
                   g8225)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8233
                     (letrec*
                      ((x-cnd8234
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8234
                        a
                        (letrec*
                         ((x8235
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8235)))))))
                   g8233)))
               (image
                (lambda ()
                  (letrec*
                   ((g8236
                     (begin
                       (write '(funapp 1661 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1661 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1661 62))
                          (display "\n")
                          '())))))
                   g8236)))
               (image?
                (lambda (image7652)
                  (letrec*
                   ((g8237
                     (letrec*
                      ((x8238
                        (begin
                          (write '(funapp 1666 39))
                          (display "\n")
                          (car image7652))))
                      (begin
                        (write '(funapp 1666 57))
                        (display "\n")
                        (eq?
                         x8238
                         (begin
                           (write '(funapp 1666 67))
                           (display "\n")
                           'image))))))
                   g8237)))
               (image/c
                (lambda (j7402 k7403 v7401)
                  (letrec*
                   ((g8239
                     (begin
                       (write '(funapp 1670 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1670 47))
                          (display "\n")
                          '())))))
                   g8239)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8240
                     (begin (write '(funapp 1671 60)) (display "\n") (image))))
                   g8240)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8241
                     (begin (write '(funapp 1673 54)) (display "\n") (image))))
                   g8241)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8242
                     (begin (write '(funapp 1674 57)) (display "\n") (image))))
                   g8242)))
               (min
                (lambda (x y)
                  (letrec*
                   ((g8243
                     (letrec*
                      ((x-cnd8244
                        (begin
                          (write '(funapp 1679 43))
                          (display "\n")
                          (<= x y))))
                      (if x-cnd8244 x y))))
                   g8243)))
               (max
                (lambda (x y)
                  (letrec*
                   ((g8245
                     (letrec*
                      ((x-cnd8246
                        (begin
                          (write '(funapp 1685 43))
                          (display "\n")
                          (>= x y))))
                      (if x-cnd8246 x y))))
                   g8245)))
               (sqr
                (lambda (x)
                  (letrec*
                   ((g8247
                     (begin (write '(funapp 1687 50)) (display "\n") (* x x))))
                   g8247)))
               (WIDTH 400)
               (HEIGHT 400)
               (MT-SCENE
                (begin
                  (write '(funapp 1690 26))
                  (display "\n")
                  (empty-scene WIDTH HEIGHT)))
               (PLAYER-SPEED 4)
               (ZOMBIE-SPEED 2)
               (ZOMBIE-RADIUS 20)
               (PLAYER-RADIUS 20)
               (PLAYER-IMG
                (begin
                  (write '(funapp 1695 28))
                  (display "\n")
                  (circle PLAYER-RADIUS "solid" "green")))
               (posn/c
                (lambda (j7406 k7407 f7408)
                  (letrec*
                   ((g8248
                     (lambda (g7405)
                       (letrec*
                        ((g8249
                          (letrec*
                           ((x7409
                             (begin
                               (write '(funapp 1705 30))
                               (display "\n")
                               ((lambda (g7413 g7414 g7415)
                                  (letrec*
                                   ((g8250
                                     (letrec*
                                      ((x-cnd8251
                                        (begin
                                          (write '(funapp 1710 39))
                                          (display "\n")
                                          ((lambda (v7412)
                                             (letrec*
                                              ((g8252
                                                (letrec*
                                                 ((x-cnd8253
                                                   (begin
                                                     (write '(funapp 1714 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 1714 62))
                                                        (display "\n")
                                                        'x)
                                                      v7412))))
                                                 (if x-cnd8253
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8254
                                                      (begin
                                                        (write
                                                         '(funapp 1718 61))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1718 65))
                                                           (display "\n")
                                                           'y)
                                                         v7412))))
                                                    (if x-cnd8254
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8255
                                                         (begin
                                                           (write
                                                            '(funapp 1723 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1723
                                                                 58))
                                                              (display "\n")
                                                              'posn)
                                                            v7412))))
                                                       (if x-cnd8255
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8256
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1728
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1729
                                                                    57))
                                                                 (display "\n")
                                                                 'move-toward/speed)
                                                               v7412))))
                                                          (if x-cnd8256
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8257
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1735
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1736
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'draw-on/image)
                                                                  v7412))))
                                                             (if x-cnd8257
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1740
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1741
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'dist)
                                                                  v7412))))))))))))))
                                              g8252))
                                           g7415))))
                                      (if x-cnd8251
                                        g7415
                                        (begin
                                          (write '(blame g7413 1747 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7413)))))))
                                   g8250))
                                j7406
                                k7407
                                g7405))))
                           (letrec*
                            ((g8258
                              (letrec*
                               ((x8260
                                 (begin
                                   (write '(funapp 1775 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8261
                                         (letrec*
                                          ((x-cnd8262
                                            (begin
                                              (write '(funapp 1779 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 1779 64))
                                                 (display "\n")
                                                 'x)))))
                                          (if x-cnd8262
                                            (letrec*
                                             ((g8263
                                               (lambda (j7416 k7417 f7418)
                                                 (letrec*
                                                  ((g8264
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8265
                                                         (letrec*
                                                          ((x8266
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1790
                                                                 65))
                                                              (display "\n")
                                                              (f7418))))
                                                          (begin
                                                            (write
                                                             '(funapp 1791 57))
                                                            (display "\n")
                                                            (real?
                                                             j7416
                                                             k7417
                                                             x8266)))))
                                                       g8265))))
                                                  g8264))))
                                             g8263)
                                            (letrec*
                                             ((x-cnd8267
                                               (begin
                                                 (write '(funapp 1799 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 1799 67))
                                                    (display "\n")
                                                    'y)))))
                                             (if x-cnd8267
                                               (letrec*
                                                ((g8268
                                                  (lambda (j7419 k7420 f7421)
                                                    (letrec*
                                                     ((g8269
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8270
                                                            (letrec*
                                                             ((x8271
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1810
                                                                    68))
                                                                 (display "\n")
                                                                 (f7421))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1811
                                                                  60))
                                                               (display "\n")
                                                               (real?
                                                                j7419
                                                                k7420
                                                                x8271)))))
                                                          g8270))))
                                                     g8269))))
                                                g8268)
                                               (letrec*
                                                ((x-cnd8272
                                                  (begin
                                                    (write '(funapp 1819 59))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 1819 70))
                                                       (display "\n")
                                                       'posn)))))
                                                (if x-cnd8272
                                                  (letrec*
                                                   ((g8273
                                                     (lambda (j7422
                                                              k7423
                                                              f7424)
                                                       (letrec*
                                                        ((g8274
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8275
                                                               (letrec*
                                                                ((x8276
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1830
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7424))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1831
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (posn/c
                                                                   j7422
                                                                   k7423
                                                                   x8276)))))
                                                             g8275))))
                                                        g8274))))
                                                   g8273)
                                                  (letrec*
                                                   ((x-cnd8277
                                                     (begin
                                                       (write
                                                        '(funapp 1840 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 1842 52))
                                                          (display "\n")
                                                          'move-toward/speed)))))
                                                   (if x-cnd8277
                                                     (letrec*
                                                      ((g8278
                                                        (lambda (j7427
                                                                 k7428
                                                                 f7429)
                                                          (letrec*
                                                           ((g8279
                                                             (lambda (g7425
                                                                      g7426)
                                                               (letrec*
                                                                ((g8280
                                                                  (letrec*
                                                                   ((x8281
                                                                     (letrec*
                                                                      ((x8283
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1859
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7427
                                                                           k7428
                                                                           g7425)))
                                                                       (x8282
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1864
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (real?
                                                                           j7427
                                                                           k7428
                                                                           g7426))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1868
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7429
                                                                         x8283
                                                                         x8282)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1871
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (posn/c
                                                                      j7427
                                                                      k7428
                                                                      x8281)))))
                                                                g8280))))
                                                           g8279))))
                                                      g8278)
                                                     (letrec*
                                                      ((x-cnd8284
                                                        (begin
                                                          (write
                                                           '(funapp 1880 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1882
                                                                55))
                                                             (display "\n")
                                                             'draw-on/image)))))
                                                      (if x-cnd8284
                                                        (letrec*
                                                         ((g8285
                                                           (lambda (j7432
                                                                    k7433
                                                                    f7434)
                                                             (letrec*
                                                              ((g8286
                                                                (lambda (g7430
                                                                         g7431)
                                                                  (letrec*
                                                                   ((g8287
                                                                     (letrec*
                                                                      ((x8288
                                                                        (letrec*
                                                                         ((x8290
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1899
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7432
                                                                              k7433
                                                                              g7430)))
                                                                          (x8289
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1904
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (image/c
                                                                              j7432
                                                                              k7433
                                                                              g7431))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1908
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7434
                                                                            x8290
                                                                            x8289)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1911
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (image/c
                                                                         j7432
                                                                         k7433
                                                                         x8288)))))
                                                                   g8287))))
                                                              g8286))))
                                                         g8285)
                                                        (letrec*
                                                         ((x-cnd8291
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1920
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1920
                                                                   69))
                                                                (display "\n")
                                                                'dist)))))
                                                         (if x-cnd8291
                                                           (letrec*
                                                            ((g8292
                                                              (lambda (j7436
                                                                       k7437
                                                                       f7438)
                                                                (letrec*
                                                                 ((g8293
                                                                   (lambda (g7435)
                                                                     (letrec*
                                                                      ((g8294
                                                                        (letrec*
                                                                         ((x8295
                                                                           (letrec*
                                                                            ((x8296
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1936
                                                                                   77))
                                                                                (display
                                                                                 "\n")
                                                                                (posn/c
                                                                                 j7436
                                                                                 k7437
                                                                                 g7435))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1940
                                                                                 75))
                                                                              (display
                                                                               "\n")
                                                                              (f7438
                                                                               x8296)))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1942
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (real?
                                                                            j7436
                                                                            k7437
                                                                            x8295)))))
                                                                      g8294))))
                                                                 g8293))))
                                                            g8292)
                                                           (letrec*
                                                            ((g8297 "error"))
                                                            g8297)))))))))))))))
                                       g8261))
                                    x7409)))
                                (x8259
                                 (begin
                                   (write '(funapp 1954 40))
                                   (display "\n")
                                   (f7408 x7409))))
                               (begin
                                 (write '(funapp 1955 32))
                                 (display "\n")
                                 (x8260 j7406 k7407 x8259)))))
                            g8258))))
                        g8249))))
                   g8248)))
               (player/c
                (lambda (j7440 k7441 f7442)
                  (letrec*
                   ((g8298
                     (lambda (g7439)
                       (letrec*
                        ((g8299
                          (letrec*
                           ((x7443
                             (begin
                               (write '(funapp 1968 30))
                               (display "\n")
                               ((lambda (g7447 g7448 g7449)
                                  (letrec*
                                   ((g8300
                                     (letrec*
                                      ((x-cnd8301
                                        (begin
                                          (write '(funapp 1973 39))
                                          (display "\n")
                                          ((lambda (v7446)
                                             (letrec*
                                              ((g8302
                                                (letrec*
                                                 ((x-cnd8303
                                                   (begin
                                                     (write '(funapp 1977 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 1977 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7446))))
                                                 (if x-cnd8303
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8304
                                                      (begin
                                                        (write
                                                         '(funapp 1982 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1982 55))
                                                           (display "\n")
                                                           'move-toward)
                                                         v7446))))
                                                    (if x-cnd8304
                                                      #t
                                                      (begin
                                                        (write
                                                         '(funapp 1985 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 1985 55))
                                                           (display "\n")
                                                           'draw-on)
                                                         v7446))))))))
                                              g8302))
                                           g7449))))
                                      (if x-cnd8301
                                        g7449
                                        (begin
                                          (write '(blame g7447 1990 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7447)))))))
                                   g8300))
                                j7440
                                k7441
                                g7439))))
                           (letrec*
                            ((g8305
                              (letrec*
                               ((x8307
                                 (begin
                                   (write '(funapp 2006 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8308
                                         (letrec*
                                          ((x-cnd8309
                                            (begin
                                              (write '(funapp 2010 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2010 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8309
                                            (letrec*
                                             ((g8310
                                               (lambda (j7450 k7451 f7452)
                                                 (letrec*
                                                  ((g8311
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8312
                                                         (letrec*
                                                          ((x8313
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2021
                                                                 65))
                                                              (display "\n")
                                                              (f7452))))
                                                          (begin
                                                            (write
                                                             '(funapp 2022 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7450
                                                             k7451
                                                             x8313)))))
                                                       g8312))))
                                                  g8311))))
                                             g8310)
                                            (letrec*
                                             ((x-cnd8314
                                               (begin
                                                 (write '(funapp 2031 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2031 57))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (if x-cnd8314
                                               (letrec*
                                                ((g8315
                                                  (lambda (j7454 k7455 f7456)
                                                    (letrec*
                                                     ((g8316
                                                       (lambda (g7453)
                                                         (letrec*
                                                          ((g8317
                                                            (letrec*
                                                             ((x8318
                                                               (letrec*
                                                                ((x8319
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2045
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (posn/c
                                                                     j7454
                                                                     k7455
                                                                     g7453))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2049
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7456
                                                                   x8319)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2050
                                                                  60))
                                                               (display "\n")
                                                               (player/c
                                                                j7454
                                                                k7455
                                                                x8318)))))
                                                          g8317))))
                                                     g8316))))
                                                g8315)
                                               (letrec*
                                                ((x-cnd8320
                                                  (begin
                                                    (write '(funapp 2059 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2059 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8320
                                                  (letrec*
                                                   ((g8321
                                                     (lambda (j7458
                                                              k7459
                                                              f7460)
                                                       (letrec*
                                                        ((g8322
                                                          (lambda (g7457)
                                                            (letrec*
                                                             ((g8323
                                                               (letrec*
                                                                ((x8324
                                                                  (letrec*
                                                                   ((x8325
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2073
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (image/c
                                                                        j7458
                                                                        k7459
                                                                        g7457))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2077
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7460
                                                                      x8325)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2079
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7458
                                                                   k7459
                                                                   x8324)))))
                                                             g8323))))
                                                        g8322))))
                                                   g8321)
                                                  (letrec*
                                                   ((g8326 "error"))
                                                   g8326)))))))))
                                       g8308))
                                    x7443)))
                                (x8306
                                 (begin
                                   (write '(funapp 2091 40))
                                   (display "\n")
                                   (f7442 x7443))))
                               (begin
                                 (write '(funapp 2092 32))
                                 (display "\n")
                                 (x8307 j7440 k7441 x8306)))))
                            g8305))))
                        g8299))))
                   g8298)))
               (zombie/c
                (lambda (j7462 k7463 f7464)
                  (letrec*
                   ((g8327
                     (lambda (g7461)
                       (letrec*
                        ((g8328
                          (letrec*
                           ((x7465
                             (begin
                               (write '(funapp 2105 30))
                               (display "\n")
                               ((lambda (g7469 g7470 g7471)
                                  (letrec*
                                   ((g8329
                                     (letrec*
                                      ((x-cnd8330
                                        (begin
                                          (write '(funapp 2110 39))
                                          (display "\n")
                                          ((lambda (v7468)
                                             (letrec*
                                              ((g8331
                                                (letrec*
                                                 ((x-cnd8332
                                                   (begin
                                                     (write '(funapp 2114 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2114 62))
                                                        (display "\n")
                                                        'posn)
                                                      v7468))))
                                                 (if x-cnd8332
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8333
                                                      (begin
                                                        (write
                                                         '(funapp 2119 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2119 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7468))))
                                                    (if x-cnd8333
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8334
                                                         (begin
                                                           (write
                                                            '(funapp 2124 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2124
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7468))))
                                                       (if x-cnd8334
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2127 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2128
                                                                 54))
                                                              (display "\n")
                                                              'move-toward)
                                                            v7468))))))))))
                                              g8331))
                                           g7471))))
                                      (if x-cnd8330
                                        g7471
                                        (begin
                                          (write '(blame g7469 2134 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7469)))))))
                                   g8329))
                                j7462
                                k7463
                                g7461))))
                           (letrec*
                            ((g8335
                              (letrec*
                               ((x8337
                                 (begin
                                   (write '(funapp 2154 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8338
                                         (letrec*
                                          ((x-cnd8339
                                            (begin
                                              (write '(funapp 2158 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2158 64))
                                                 (display "\n")
                                                 'posn)))))
                                          (if x-cnd8339
                                            (letrec*
                                             ((g8340
                                               (lambda (j7472 k7473 f7474)
                                                 (letrec*
                                                  ((g8341
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8342
                                                         (letrec*
                                                          ((x8343
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2169
                                                                 65))
                                                              (display "\n")
                                                              (f7474))))
                                                          (begin
                                                            (write
                                                             '(funapp 2170 57))
                                                            (display "\n")
                                                            (posn/c
                                                             j7472
                                                             k7473
                                                             x8343)))))
                                                       g8342))))
                                                  g8341))))
                                             g8340)
                                            (letrec*
                                             ((x-cnd8344
                                               (begin
                                                 (write '(funapp 2179 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2179 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8344
                                               (letrec*
                                                ((g8345
                                                  (lambda (j7477 k7478 f7479)
                                                    (letrec*
                                                     ((g8346
                                                       (lambda (g7475 g7476)
                                                         (letrec*
                                                          ((g8347
                                                            (letrec*
                                                             ((x8348
                                                               (letrec*
                                                                ((x8350
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2193
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7477
                                                                     k7478
                                                                     g7475)))
                                                                 (x8349
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2198
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (image/c
                                                                     j7477
                                                                     k7478
                                                                     g7476))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2202
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7479
                                                                   x8350
                                                                   x8349)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2205
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7477
                                                                k7478
                                                                x8348)))))
                                                          g8347))))
                                                     g8346))))
                                                g8345)
                                               (letrec*
                                                ((x-cnd8351
                                                  (begin
                                                    (write '(funapp 2214 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2214 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8351
                                                  (letrec*
                                                   ((g8352
                                                     (lambda (j7481
                                                              k7482
                                                              f7483)
                                                       (letrec*
                                                        ((g8353
                                                          (lambda (g7480)
                                                            (letrec*
                                                             ((g8354
                                                               (letrec*
                                                                ((x8355
                                                                  (letrec*
                                                                   ((x8356
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2228
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (posn/c
                                                                        j7481
                                                                        k7482
                                                                        g7480))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2232
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7483
                                                                      x8356)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2234
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7481
                                                                   k7482
                                                                   x8355)))))
                                                             g8354))))
                                                        g8353))))
                                                   g8352)
                                                  (letrec*
                                                   ((x-cnd8357
                                                     (begin
                                                       (write
                                                        '(funapp 2243 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2243 63))
                                                          (display "\n")
                                                          'move-toward)))))
                                                   (if x-cnd8357
                                                     (letrec*
                                                      ((g8358
                                                        (lambda (j7485
                                                                 k7486
                                                                 f7487)
                                                          (letrec*
                                                           ((g8359
                                                             (lambda (g7484)
                                                               (letrec*
                                                                ((g8360
                                                                  (letrec*
                                                                   ((x8361
                                                                     (letrec*
                                                                      ((x8362
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2259
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7485
                                                                           k7486
                                                                           g7484))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2263
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7487
                                                                         x8362)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2265
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (zombie/c
                                                                      j7485
                                                                      k7486
                                                                      x8361)))))
                                                                g8360))))
                                                           g8359))))
                                                      g8358)
                                                     (letrec*
                                                      ((g8363 "error"))
                                                      g8363)))))))))))
                                       g8338))
                                    x7465)))
                                (x8336
                                 (begin
                                   (write '(funapp 2277 40))
                                   (display "\n")
                                   (f7464 x7465))))
                               (begin
                                 (write '(funapp 2278 32))
                                 (display "\n")
                                 (x8337 j7462 k7463 x8336)))))
                            g8335))))
                        g8328))))
                   g8327)))
               (horde/c
                (lambda (j7489 k7490 f7491)
                  (letrec*
                   ((g8364
                     (lambda (g7488)
                       (letrec*
                        ((g8365
                          (letrec*
                           ((x7492
                             (begin
                               (write '(funapp 2291 30))
                               (display "\n")
                               ((lambda (g7496 g7497 g7498)
                                  (letrec*
                                   ((g8366
                                     (letrec*
                                      ((x-cnd8367
                                        (begin
                                          (write '(funapp 2296 39))
                                          (display "\n")
                                          ((lambda (v7495)
                                             (letrec*
                                              ((g8368
                                                (letrec*
                                                 ((x-cnd8369
                                                   (begin
                                                     (write '(funapp 2300 58))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2300 62))
                                                        (display "\n")
                                                        'dead)
                                                      v7495))))
                                                 (if x-cnd8369
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8370
                                                      (begin
                                                        (write
                                                         '(funapp 2305 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2305 55))
                                                           (display "\n")
                                                           'undead)
                                                         v7495))))
                                                    (if x-cnd8370
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8371
                                                         (begin
                                                           (write
                                                            '(funapp 2310 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2310
                                                                 58))
                                                              (display "\n")
                                                              'draw-on)
                                                            v7495))))
                                                       (if x-cnd8371
                                                         #t
                                                         (letrec*
                                                          ((x-cnd8372
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2315
                                                                 57))
                                                              (display "\n")
                                                              (eq?
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2316
                                                                    57))
                                                                 (display "\n")
                                                                 'touching?)
                                                               v7495))))
                                                          (if x-cnd8372
                                                            #t
                                                            (letrec*
                                                             ((x-cnd8373
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2322
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2323
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'move-toward)
                                                                  v7495))))
                                                             (if x-cnd8373
                                                               #t
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2327
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2328
                                                                       60))
                                                                    (display
                                                                     "\n")
                                                                    'eat-brains)
                                                                  v7495))))))))))))))
                                              g8368))
                                           g7498))))
                                      (if x-cnd8367
                                        g7498
                                        (begin
                                          (write '(blame g7496 2334 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7496)))))))
                                   g8366))
                                j7489
                                k7490
                                g7488))))
                           (letrec*
                            ((g8374
                              (letrec*
                               ((x8376
                                 (begin
                                   (write '(funapp 2358 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8377
                                         (letrec*
                                          ((x-cnd8378
                                            (begin
                                              (write '(funapp 2362 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2362 64))
                                                 (display "\n")
                                                 'dead)))))
                                          (if x-cnd8378
                                            (letrec*
                                             ((g8379
                                               (lambda (j7499 k7500 f7501)
                                                 (letrec*
                                                  ((g8380
                                                    (lambda ()
                                                      (letrec*
                                                       ((g8381
                                                         (letrec*
                                                          ((x8382
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2373
                                                                 65))
                                                              (display "\n")
                                                              (f7501))))
                                                          (begin
                                                            (write
                                                             '(funapp 2374 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7499
                                                             k7500
                                                             x8382)))))
                                                       g8381))))
                                                  g8380))))
                                             g8379)
                                            (letrec*
                                             ((x-cnd8383
                                               (begin
                                                 (write '(funapp 2382 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2382 67))
                                                    (display "\n")
                                                    'undead)))))
                                             (if x-cnd8383
                                               (letrec*
                                                ((g8384
                                                  (lambda (j7502 k7503 f7504)
                                                    (letrec*
                                                     ((g8385
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8386
                                                            (letrec*
                                                             ((x8387
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2393
                                                                    68))
                                                                 (display "\n")
                                                                 (f7504))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2394
                                                                  60))
                                                               (display "\n")
                                                               (zombies/c
                                                                j7502
                                                                k7503
                                                                x8387)))))
                                                          g8386))))
                                                     g8385))))
                                                g8384)
                                               (letrec*
                                                ((x-cnd8388
                                                  (begin
                                                    (write '(funapp 2403 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2403 60))
                                                       (display "\n")
                                                       'draw-on)))))
                                                (if x-cnd8388
                                                  (letrec*
                                                   ((g8389
                                                     (lambda (j7506
                                                              k7507
                                                              f7508)
                                                       (letrec*
                                                        ((g8390
                                                          (lambda (g7505)
                                                            (letrec*
                                                             ((g8391
                                                               (letrec*
                                                                ((x8392
                                                                  (letrec*
                                                                   ((x8393
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2417
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (image/c
                                                                        j7506
                                                                        k7507
                                                                        g7505))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2421
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7508
                                                                      x8393)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2423
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7506
                                                                   k7507
                                                                   x8392)))))
                                                             g8391))))
                                                        g8390))))
                                                   g8389)
                                                  (letrec*
                                                   ((x-cnd8394
                                                     (begin
                                                       (write
                                                        '(funapp 2432 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2432 63))
                                                          (display "\n")
                                                          'touching?)))))
                                                   (if x-cnd8394
                                                     (letrec*
                                                      ((g8395
                                                        (lambda (j7510
                                                                 k7511
                                                                 f7512)
                                                          (letrec*
                                                           ((g8396
                                                             (lambda (g7509)
                                                               (letrec*
                                                                ((g8397
                                                                  (letrec*
                                                                   ((x8398
                                                                     (letrec*
                                                                      ((x8399
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2448
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (posn/c
                                                                           j7510
                                                                           k7511
                                                                           g7509))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2452
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7512
                                                                         x8399)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2454
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7510
                                                                      k7511
                                                                      x8398)))))
                                                                g8397))))
                                                           g8396))))
                                                      g8395)
                                                     (letrec*
                                                      ((x-cnd8400
                                                        (begin
                                                          (write
                                                           '(funapp 2463 55))
                                                          (display "\n")
                                                          (equal?
                                                           msg
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2465
                                                                55))
                                                             (display "\n")
                                                             'move-toward)))))
                                                      (if x-cnd8400
                                                        (letrec*
                                                         ((g8401
                                                           (lambda (j7514
                                                                    k7515
                                                                    f7516)
                                                             (letrec*
                                                              ((g8402
                                                                (lambda (g7513)
                                                                  (letrec*
                                                                   ((g8403
                                                                     (letrec*
                                                                      ((x8404
                                                                        (letrec*
                                                                         ((x8405
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2481
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (posn/c
                                                                              j7514
                                                                              k7515
                                                                              g7513))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2485
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (f7516
                                                                            x8405)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2487
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (horde/c
                                                                         j7514
                                                                         k7515
                                                                         x8404)))))
                                                                   g8403))))
                                                              g8402))))
                                                         g8401)
                                                        (letrec*
                                                         ((x-cnd8406
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                2496
                                                                58))
                                                             (display "\n")
                                                             (equal?
                                                              msg
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   2498
                                                                   58))
                                                                (display "\n")
                                                                'eat-brains)))))
                                                         (if x-cnd8406
                                                           (letrec*
                                                            ((g8407
                                                              (lambda (j7517
                                                                       k7518
                                                                       f7519)
                                                                (letrec*
                                                                 ((g8408
                                                                   (lambda ()
                                                                     (letrec*
                                                                      ((g8409
                                                                        (letrec*
                                                                         ((x8410
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                2512
                                                                                74))
                                                                             (display
                                                                              "\n")
                                                                             (f7519))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              2513
                                                                              72))
                                                                           (display
                                                                            "\n")
                                                                           (horde/c
                                                                            j7517
                                                                            k7518
                                                                            x8410)))))
                                                                      g8409))))
                                                                 g8408))))
                                                            g8407)
                                                           (letrec*
                                                            ((g8411 "error"))
                                                            g8411)))))))))))))))
                                       g8377))
                                    x7492)))
                                (x8375
                                 (begin
                                   (write '(funapp 2525 40))
                                   (display "\n")
                                   (f7491 x7492))))
                               (begin
                                 (write '(funapp 2526 32))
                                 (display "\n")
                                 (x8376 j7489 k7490 x8375)))))
                            g8374))))
                        g8365))))
                   g8364)))
               (zombies/c
                (lambda (j7521 k7522 f7523)
                  (letrec*
                   ((g8412
                     (lambda (g7520)
                       (letrec*
                        ((g8413
                          (letrec*
                           ((x7524
                             (begin
                               (write '(funapp 2539 30))
                               (display "\n")
                               ((lambda (g7528 g7529 g7530)
                                  (letrec*
                                   ((g8414
                                     (letrec*
                                      ((x-cnd8415
                                        (begin
                                          (write '(funapp 2544 39))
                                          (display "\n")
                                          ((lambda (v7527)
                                             (letrec*
                                              ((g8416
                                                (letrec*
                                                 ((x-cnd8417
                                                   (begin
                                                     (write '(funapp 2549 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2549 52))
                                                        (display "\n")
                                                        'move-toward)
                                                      v7527))))
                                                 (if x-cnd8417
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8418
                                                      (begin
                                                        (write
                                                         '(funapp 2554 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2554 55))
                                                           (display "\n")
                                                           'draw-on/color)
                                                         v7527))))
                                                    (if x-cnd8418
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8419
                                                         (begin
                                                           (write
                                                            '(funapp 2559 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2559
                                                                 58))
                                                              (display "\n")
                                                              'touching?)
                                                            v7527))))
                                                       (if x-cnd8419
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2562 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2563
                                                                 54))
                                                              (display "\n")
                                                              'kill-all)
                                                            v7527))))))))))
                                              g8416))
                                           g7530))))
                                      (if x-cnd8415
                                        g7530
                                        (begin
                                          (write '(blame g7528 2569 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7528)))))))
                                   g8414))
                                j7521
                                k7522
                                g7520))))
                           (letrec*
                            ((g8420
                              (letrec*
                               ((x8422
                                 (begin
                                   (write '(funapp 2587 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8423
                                         (letrec*
                                          ((x-cnd8424
                                            (begin
                                              (write '(funapp 2591 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2591 64))
                                                 (display "\n")
                                                 'move-toward)))))
                                          (if x-cnd8424
                                            (letrec*
                                             ((g8425
                                               (lambda (j7532 k7533 f7534)
                                                 (letrec*
                                                  ((g8426
                                                    (lambda (g7531)
                                                      (letrec*
                                                       ((g8427
                                                         (letrec*
                                                          ((x8428
                                                            (letrec*
                                                             ((x8429
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2605
                                                                    62))
                                                                 (display "\n")
                                                                 (posn/c
                                                                  j7532
                                                                  k7533
                                                                  g7531))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2609
                                                                  60))
                                                               (display "\n")
                                                               (f7534
                                                                x8429)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2610 57))
                                                            (display "\n")
                                                            (zombies/c
                                                             j7532
                                                             k7533
                                                             x8428)))))
                                                       g8427))))
                                                  g8426))))
                                             g8425)
                                            (letrec*
                                             ((x-cnd8430
                                               (begin
                                                 (write '(funapp 2619 46))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2619 57))
                                                    (display "\n")
                                                    'draw-on/color)))))
                                             (if x-cnd8430
                                               (letrec*
                                                ((g8431
                                                  (lambda (j7537 k7538 f7539)
                                                    (letrec*
                                                     ((g8432
                                                       (lambda (g7535 g7536)
                                                         (letrec*
                                                          ((g8433
                                                            (letrec*
                                                             ((x8434
                                                               (letrec*
                                                                ((x8436
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2633
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (string?
                                                                     j7537
                                                                     k7538
                                                                     g7535)))
                                                                 (x8435
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2638
                                                                       65))
                                                                    (display
                                                                     "\n")
                                                                    (image/c
                                                                     j7537
                                                                     k7538
                                                                     g7536))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2642
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (f7539
                                                                   x8436
                                                                   x8435)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2645
                                                                  60))
                                                               (display "\n")
                                                               (image/c
                                                                j7537
                                                                k7538
                                                                x8434)))))
                                                          g8433))))
                                                     g8432))))
                                                g8431)
                                               (letrec*
                                                ((x-cnd8437
                                                  (begin
                                                    (write '(funapp 2654 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2654 60))
                                                       (display "\n")
                                                       'touching?)))))
                                                (if x-cnd8437
                                                  (letrec*
                                                   ((g8438
                                                     (lambda (j7541
                                                              k7542
                                                              f7543)
                                                       (letrec*
                                                        ((g8439
                                                          (lambda (g7540)
                                                            (letrec*
                                                             ((g8440
                                                               (letrec*
                                                                ((x8441
                                                                  (letrec*
                                                                   ((x8442
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2668
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (posn/c
                                                                        j7541
                                                                        k7542
                                                                        g7540))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2672
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (f7543
                                                                      x8442)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2674
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (boolean?
                                                                   j7541
                                                                   k7542
                                                                   x8441)))))
                                                             g8440))))
                                                        g8439))))
                                                   g8438)
                                                  (letrec*
                                                   ((x-cnd8443
                                                     (begin
                                                       (write
                                                        '(funapp 2683 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2683 63))
                                                          (display "\n")
                                                          'kill-all)))))
                                                   (if x-cnd8443
                                                     (letrec*
                                                      ((g8444
                                                        (lambda (j7545
                                                                 k7546
                                                                 f7547)
                                                          (letrec*
                                                           ((g8445
                                                             (lambda (g7544)
                                                               (letrec*
                                                                ((g8446
                                                                  (letrec*
                                                                   ((x8447
                                                                     (letrec*
                                                                      ((x8448
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             2699
                                                                             71))
                                                                          (display
                                                                           "\n")
                                                                          (zombies/c
                                                                           j7545
                                                                           k7546
                                                                           g7544))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           2703
                                                                           69))
                                                                        (display
                                                                         "\n")
                                                                        (f7547
                                                                         x8448)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2705
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (horde/c
                                                                      j7545
                                                                      k7546
                                                                      x8447)))))
                                                                g8446))))
                                                           g8445))))
                                                      g8444)
                                                     (letrec*
                                                      ((g8449 "error"))
                                                      g8449)))))))))))
                                       g8423))
                                    x7524)))
                                (x8421
                                 (begin
                                   (write '(funapp 2717 40))
                                   (display "\n")
                                   (f7523 x7524))))
                               (begin
                                 (write '(funapp 2718 32))
                                 (display "\n")
                                 (x8422 j7521 k7522 x8421)))))
                            g8420))))
                        g8413))))
                   g8412)))
               (world/c
                (lambda (j7549 k7550 f7551)
                  (letrec*
                   ((g8450
                     (lambda (g7548)
                       (letrec*
                        ((g8451
                          (letrec*
                           ((x7552
                             (begin
                               (write '(funapp 2731 30))
                               (display "\n")
                               ((lambda (g7556 g7557 g7558)
                                  (letrec*
                                   ((g8452
                                     (letrec*
                                      ((x-cnd8453
                                        (begin
                                          (write '(funapp 2736 39))
                                          (display "\n")
                                          ((lambda (v7555)
                                             (letrec*
                                              ((g8454
                                                (letrec*
                                                 ((x-cnd8455
                                                   (begin
                                                     (write '(funapp 2741 48))
                                                     (display "\n")
                                                     (eq?
                                                      (begin
                                                        (write
                                                         '(funapp 2741 52))
                                                        (display "\n")
                                                        'on-mouse)
                                                      v7555))))
                                                 (if x-cnd8455
                                                   #t
                                                   (letrec*
                                                    ((x-cnd8456
                                                      (begin
                                                        (write
                                                         '(funapp 2746 51))
                                                        (display "\n")
                                                        (eq?
                                                         (begin
                                                           (write
                                                            '(funapp 2746 55))
                                                           (display "\n")
                                                           'on-tick)
                                                         v7555))))
                                                    (if x-cnd8456
                                                      #t
                                                      (letrec*
                                                       ((x-cnd8457
                                                         (begin
                                                           (write
                                                            '(funapp 2751 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2751
                                                                 58))
                                                              (display "\n")
                                                              'to-draw)
                                                            v7555))))
                                                       (if x-cnd8457
                                                         #t
                                                         (begin
                                                           (write
                                                            '(funapp 2754 54))
                                                           (display "\n")
                                                           (eq?
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 2755
                                                                 54))
                                                              (display "\n")
                                                              'stop-when)
                                                            v7555))))))))))
                                              g8454))
                                           g7558))))
                                      (if x-cnd8453
                                        g7558
                                        (begin
                                          (write '(blame g7556 2761 38))
                                          (display "\n")
                                          (error
                                           (format
                                            "contract violation, blaming ~a~%"
                                            g7556)))))))
                                   g8452))
                                j7549
                                k7550
                                g7548))))
                           (letrec*
                            ((g8458
                              (letrec*
                               ((x8460
                                 (begin
                                   (write '(funapp 2779 34))
                                   (display "\n")
                                   ((lambda (msg)
                                      (letrec*
                                       ((g8461
                                         (letrec*
                                          ((x-cnd8462
                                            (begin
                                              (write '(funapp 2783 53))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 2783 64))
                                                 (display "\n")
                                                 'on-mouse)))))
                                          (if x-cnd8462
                                            (letrec*
                                             ((g8463
                                               (lambda (j7562 k7563 f7564)
                                                 (letrec*
                                                  ((g8464
                                                    (lambda (g7559 g7560 g7561)
                                                      (letrec*
                                                       ((g8465
                                                         (letrec*
                                                          ((x8466
                                                            (letrec*
                                                             ((x8469
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2797
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7562
                                                                  k7563
                                                                  g7559)))
                                                              (x8468
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2802
                                                                    62))
                                                                 (display "\n")
                                                                 (real?
                                                                  j7562
                                                                  k7563
                                                                  g7560)))
                                                              (x8467
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2807
                                                                    62))
                                                                 (display "\n")
                                                                 (string?
                                                                  j7562
                                                                  k7563
                                                                  g7561))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2811
                                                                  60))
                                                               (display "\n")
                                                               (f7564
                                                                x8469
                                                                x8468
                                                                x8467)))))
                                                          (begin
                                                            (write
                                                             '(funapp 2815 57))
                                                            (display "\n")
                                                            (world/c
                                                             j7562
                                                             k7563
                                                             x8466)))))
                                                       g8465))))
                                                  g8464))))
                                             g8463)
                                            (letrec*
                                             ((x-cnd8470
                                               (begin
                                                 (write '(funapp 2823 56))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 2823 67))
                                                    (display "\n")
                                                    'on-tick)))))
                                             (if x-cnd8470
                                               (letrec*
                                                ((g8471
                                                  (lambda (j7565 k7566 f7567)
                                                    (letrec*
                                                     ((g8472
                                                       (lambda ()
                                                         (letrec*
                                                          ((g8473
                                                            (letrec*
                                                             ((x8474
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    2834
                                                                    68))
                                                                 (display "\n")
                                                                 (f7567))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  2835
                                                                  60))
                                                               (display "\n")
                                                               (world/c
                                                                j7565
                                                                k7566
                                                                x8474)))))
                                                          g8473))))
                                                     g8472))))
                                                g8471)
                                               (letrec*
                                                ((x-cnd8475
                                                  (begin
                                                    (write '(funapp 2844 49))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 2844 60))
                                                       (display "\n")
                                                       'to-draw)))))
                                                (if x-cnd8475
                                                  (letrec*
                                                   ((g8476
                                                     (lambda (j7568
                                                              k7569
                                                              f7570)
                                                       (letrec*
                                                        ((g8477
                                                          (lambda ()
                                                            (letrec*
                                                             ((g8478
                                                               (letrec*
                                                                ((x8479
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       2855
                                                                       71))
                                                                    (display
                                                                     "\n")
                                                                    (f7570))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     2856
                                                                     63))
                                                                  (display
                                                                   "\n")
                                                                  (image/c
                                                                   j7568
                                                                   k7569
                                                                   x8479)))))
                                                             g8478))))
                                                        g8477))))
                                                   g8476)
                                                  (letrec*
                                                   ((x-cnd8480
                                                     (begin
                                                       (write
                                                        '(funapp 2865 52))
                                                       (display "\n")
                                                       (equal?
                                                        msg
                                                        (begin
                                                          (write
                                                           '(funapp 2865 63))
                                                          (display "\n")
                                                          'stop-when)))))
                                                   (if x-cnd8480
                                                     (letrec*
                                                      ((g8481
                                                        (lambda (j7571
                                                                 k7572
                                                                 f7573)
                                                          (letrec*
                                                           ((g8482
                                                             (lambda ()
                                                               (letrec*
                                                                ((g8483
                                                                  (letrec*
                                                                   ((x8484
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          2879
                                                                          68))
                                                                       (display
                                                                        "\n")
                                                                       (f7573))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        2880
                                                                        66))
                                                                     (display
                                                                      "\n")
                                                                     (boolean?
                                                                      j7571
                                                                      k7572
                                                                      x8484)))))
                                                                g8483))))
                                                           g8482))))
                                                      g8481)
                                                     (letrec*
                                                      ((g8485 "error"))
                                                      g8485)))))))))))
                                       g8461))
                                    x7552)))
                                (x8459
                                 (begin
                                   (write '(funapp 2892 40))
                                   (display "\n")
                                   (f7551 x7552))))
                               (begin
                                 (write '(funapp 2893 32))
                                 (display "\n")
                                 (x8460 j7549 k7550 x8459)))))
                            g8458))))
                        g8451))))
                   g8450)))
               (new-world
                (lambda (player mouse zombies)
                  (letrec*
                   ((g8486
                     (lambda (msg)
                       (letrec*
                        ((g8487
                          (letrec*
                           ((x-cnd8488
                             (begin
                               (write '(funapp 2905 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 2905 51))
                                  (display "\n")
                                  'on-mouse)))))
                           (if x-cnd8488
                             (letrec*
                              ((g8489
                                (lambda (x y me)
                                  (letrec*
                                   ((g8490
                                     (letrec*
                                      ((x8491
                                        (letrec*
                                         ((x-cnd8492
                                           (begin
                                             (write '(funapp 2915 54))
                                             (display "\n")
                                             (equal? me "leave"))))
                                         (if x-cnd8492
                                           (letrec*
                                            ((x8493
                                              (begin
                                                (write '(funapp 2918 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2918 60))
                                                   (display "\n")
                                                   'posn)))))
                                            (begin
                                              (write '(funapp 2919 45))
                                              (display "\n")
                                              (x8493)))
                                           (begin
                                             (write '(funapp 2920 44))
                                             (display "\n")
                                             (new-posn x y))))))
                                      (begin
                                        (write '(funapp 2921 39))
                                        (display "\n")
                                        (new-world player x8491 zombies)))))
                                   g8490))))
                              g8489)
                             (letrec*
                              ((x-cnd8494
                                (begin
                                  (write '(funapp 2925 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 2925 54))
                                     (display "\n")
                                     'on-tick)))))
                              (if x-cnd8494
                                (letrec*
                                 ((g8495
                                   (lambda ()
                                     (letrec*
                                      ((g8496
                                        (letrec*
                                         ((x8503
                                           (letrec*
                                            ((x8504
                                              (begin
                                                (write '(funapp 2935 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2935 60))
                                                   (display "\n")
                                                   'move-toward)))))
                                            (begin
                                              (write '(funapp 2936 45))
                                              (display "\n")
                                              (x8504 mouse))))
                                          (x8497
                                           (letrec*
                                            ((x8500
                                              (letrec*
                                               ((x8501
                                                 (letrec*
                                                  ((x8502
                                                    (begin
                                                      (write '(funapp 2944 53))
                                                      (display "\n")
                                                      (zombies
                                                       (begin
                                                         (write
                                                          '(funapp 2944 61))
                                                         (display "\n")
                                                         'eat-brains)))))
                                                  (begin
                                                    (write '(funapp 2945 51))
                                                    (display "\n")
                                                    (x8502)))))
                                               (begin
                                                 (write '(funapp 2946 48))
                                                 (display "\n")
                                                 (x8501
                                                  (begin
                                                    (write '(funapp 2946 54))
                                                    (display "\n")
                                                    'move-toward)))))
                                             (x8498
                                              (letrec*
                                               ((x8499
                                                 (begin
                                                   (write '(funapp 2949 56))
                                                   (display "\n")
                                                   (player
                                                    (begin
                                                      (write '(funapp 2949 63))
                                                      (display "\n")
                                                      'posn)))))
                                               (begin
                                                 (write '(funapp 2950 48))
                                                 (display "\n")
                                                 (x8499)))))
                                            (begin
                                              (write '(funapp 2951 45))
                                              (display "\n")
                                              (x8500 x8498)))))
                                         (begin
                                           (write '(funapp 2952 42))
                                           (display "\n")
                                           (new-world x8503 mouse x8497)))))
                                      g8496))))
                                 g8495)
                                (letrec*
                                 ((x-cnd8505
                                   (begin
                                     (write '(funapp 2956 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 2956 57))
                                        (display "\n")
                                        'to-draw)))))
                                 (if x-cnd8505
                                   (letrec*
                                    ((g8506
                                      (lambda ()
                                        (letrec*
                                         ((g8507
                                           (letrec*
                                            ((x8510
                                              (begin
                                                (write '(funapp 2964 53))
                                                (display "\n")
                                                (player
                                                 (begin
                                                   (write '(funapp 2964 60))
                                                   (display "\n")
                                                   'draw-on))))
                                             (x8508
                                              (letrec*
                                               ((x8509
                                                 (begin
                                                   (write '(funapp 2967 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 2967 64))
                                                      (display "\n")
                                                      'draw-on)))))
                                               (begin
                                                 (write '(funapp 2968 48))
                                                 (display "\n")
                                                 (x8509 MT-SCENE)))))
                                            (begin
                                              (write '(funapp 2969 45))
                                              (display "\n")
                                              (x8510 x8508)))))
                                         g8507))))
                                    g8506)
                                   (letrec*
                                    ((x-cnd8511
                                      (begin
                                        (write '(funapp 2973 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 2973 60))
                                           (display "\n")
                                           'stop-when)))))
                                    (if x-cnd8511
                                      (letrec*
                                       ((g8512
                                         (lambda ()
                                           (letrec*
                                            ((g8513
                                              (letrec*
                                               ((x8516
                                                 (begin
                                                   (write '(funapp 2981 56))
                                                   (display "\n")
                                                   (zombies
                                                    (begin
                                                      (write '(funapp 2981 64))
                                                      (display "\n")
                                                      'touching?))))
                                                (x8514
                                                 (letrec*
                                                  ((x8515
                                                    (begin
                                                      (write '(funapp 2984 59))
                                                      (display "\n")
                                                      (player
                                                       (begin
                                                         (write
                                                          '(funapp 2984 66))
                                                         (display "\n")
                                                         'posn)))))
                                                  (begin
                                                    (write '(funapp 2985 51))
                                                    (display "\n")
                                                    (x8515)))))
                                               (begin
                                                 (write '(funapp 2986 48))
                                                 (display "\n")
                                                 (x8516 x8514)))))
                                            g8513))))
                                       g8512)
                                      (letrec*
                                       ((g8517 "unknown message"))
                                       g8517)))))))))))
                        g8487))))
                   g8486)))
               (new-player
                (lambda (p)
                  (letrec*
                   ((g8518
                     (lambda (msg)
                       (letrec*
                        ((g8519
                          (letrec*
                           ((x-cnd8520
                             (begin
                               (write '(funapp 3002 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3002 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8520
                             (letrec*
                              ((g8521 (lambda () (letrec* ((g8522 p)) g8522))))
                              g8521)
                             (letrec*
                              ((x-cnd8523
                                (begin
                                  (write '(funapp 3008 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3008 54))
                                     (display "\n")
                                     'move-toward)))))
                              (if x-cnd8523
                                (letrec*
                                 ((g8524
                                   (lambda (q)
                                     (letrec*
                                      ((g8525
                                        (letrec*
                                         ((x8526
                                           (letrec*
                                            ((x8527
                                              (begin
                                                (write '(funapp 3018 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3018 55))
                                                   (display "\n")
                                                   'move-toward/speed)))))
                                            (begin
                                              (write '(funapp 3019 45))
                                              (display "\n")
                                              (x8527 q PLAYER-SPEED)))))
                                         (begin
                                           (write '(funapp 3020 42))
                                           (display "\n")
                                           (new-player x8526)))))
                                      g8525))))
                                 g8524)
                                (letrec*
                                 ((x-cnd8528
                                   (begin
                                     (write '(funapp 3024 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3024 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8528
                                   (letrec*
                                    ((g8529
                                      (lambda (scn)
                                        (letrec*
                                         ((g8530
                                           (letrec*
                                            ((x8531
                                              (begin
                                                (write '(funapp 3032 53))
                                                (display "\n")
                                                (p
                                                 (begin
                                                   (write '(funapp 3032 55))
                                                   (display "\n")
                                                   'draw-on/image)))))
                                            (begin
                                              (write '(funapp 3033 45))
                                              (display "\n")
                                              (x8531 PLAYER-IMG scn)))))
                                         g8530))))
                                    g8529)
                                   (letrec*
                                    ((g8532 "unknown message"))
                                    g8532)))))))))
                        g8519))))
                   g8518)))
               (new-horde
                (lambda (undead dead)
                  (letrec*
                   ((g8533
                     (lambda (msg)
                       (letrec*
                        ((g8534
                          (letrec*
                           ((x-cnd8535
                             (begin
                               (write '(funapp 3049 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3049 51))
                                  (display "\n")
                                  'dead)))))
                           (if x-cnd8535
                             (letrec*
                              ((g8536
                                (lambda () (letrec* ((g8537 dead)) g8537))))
                              g8536)
                             (letrec*
                              ((x-cnd8538
                                (begin
                                  (write '(funapp 3056 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3056 54))
                                     (display "\n")
                                     'undead)))))
                              (if x-cnd8538
                                (letrec*
                                 ((g8539
                                   (lambda ()
                                     (letrec* ((g8540 undead)) g8540))))
                                 g8539)
                                (letrec*
                                 ((x-cnd8541
                                   (begin
                                     (write '(funapp 3064 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3064 57))
                                        (display "\n")
                                        'draw-on)))))
                                 (if x-cnd8541
                                   (letrec*
                                    ((g8542
                                      (lambda (scn)
                                        (letrec*
                                         ((g8543
                                           (letrec*
                                            ((x8546
                                              (begin
                                                (write '(funapp 3072 53))
                                                (display "\n")
                                                (undead
                                                 (begin
                                                   (write '(funapp 3072 60))
                                                   (display "\n")
                                                   'draw-on/color))))
                                             (x8544
                                              (letrec*
                                               ((x8545
                                                 (begin
                                                   (write '(funapp 3075 56))
                                                   (display "\n")
                                                   (dead
                                                    (begin
                                                      (write '(funapp 3075 61))
                                                      (display "\n")
                                                      'draw-on/color)))))
                                               (begin
                                                 (write '(funapp 3076 48))
                                                 (display "\n")
                                                 (x8545 "black" scn)))))
                                            (begin
                                              (write '(funapp 3077 45))
                                              (display "\n")
                                              (x8546 "yellow" x8544)))))
                                         g8543))))
                                    g8542)
                                   (letrec*
                                    ((x-cnd8547
                                      (begin
                                        (write '(funapp 3081 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3081 60))
                                           (display "\n")
                                           'touching?)))))
                                    (if x-cnd8547
                                      (letrec*
                                       ((g8548
                                         (lambda (p)
                                           (letrec*
                                            ((g8549
                                              (letrec*
                                               ((val7262
                                                 (letrec*
                                                  ((x8550
                                                    (begin
                                                      (write '(funapp 3091 59))
                                                      (display "\n")
                                                      (undead
                                                       (begin
                                                         (write
                                                          '(funapp 3091 66))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3092 51))
                                                    (display "\n")
                                                    (x8550 p)))))
                                               (letrec*
                                                ((g8551
                                                  (if val7262
                                                    val7262
                                                    (letrec*
                                                     ((x8552
                                                       (begin
                                                         (write
                                                          '(funapp 3099 56))
                                                         (display "\n")
                                                         (dead
                                                          (begin
                                                            (write
                                                             '(funapp 3099 61))
                                                            (display "\n")
                                                            'touching?)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3100 54))
                                                       (display "\n")
                                                       (x8552 p))))))
                                                g8551))))
                                            g8549))))
                                       g8548)
                                      (letrec*
                                       ((x-cnd8553
                                         (begin
                                           (write '(funapp 3105 52))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3105 63))
                                              (display "\n")
                                              'move-toward)))))
                                       (if x-cnd8553
                                         (letrec*
                                          ((g8554
                                            (lambda (p)
                                              (letrec*
                                               ((g8555
                                                 (letrec*
                                                  ((x8556
                                                    (letrec*
                                                     ((x8557
                                                       (begin
                                                         (write
                                                          '(funapp 3116 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3116 63))
                                                            (display "\n")
                                                            'move-toward)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3117 54))
                                                       (display "\n")
                                                       (x8557 p)))))
                                                  (begin
                                                    (write '(funapp 3118 51))
                                                    (display "\n")
                                                    (new-horde x8556 dead)))))
                                               g8555))))
                                          g8554)
                                         (letrec*
                                          ((x-cnd8558
                                            (begin
                                              (write '(funapp 3123 45))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3123 56))
                                                 (display "\n")
                                                 'eat-brains)))))
                                          (if x-cnd8558
                                            (letrec*
                                             ((g8559
                                               (lambda ()
                                                 (letrec*
                                                  ((g8560
                                                    (letrec*
                                                     ((x8561
                                                       (begin
                                                         (write
                                                          '(funapp 3132 56))
                                                         (display "\n")
                                                         (undead
                                                          (begin
                                                            (write
                                                             '(funapp 3132 63))
                                                            (display "\n")
                                                            'kill-all)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3133 54))
                                                       (display "\n")
                                                       (x8561 dead)))))
                                                  g8560))))
                                             g8559)
                                            (letrec*
                                             ((g8562 "unknown message"))
                                             g8562)))))))))))))))
                        g8534))))
                   g8533)))
               (new-cons-zombies
                (lambda (z r)
                  (letrec*
                   ((g8563
                     (lambda (msg)
                       (letrec*
                        ((g8564
                          (letrec*
                           ((x-cnd8565
                             (begin
                               (write '(funapp 3149 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3149 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8565
                             (letrec*
                              ((g8566
                                (lambda (p)
                                  (letrec*
                                   ((g8567
                                     (letrec*
                                      ((x8570
                                        (letrec*
                                         ((x8571
                                           (begin
                                             (write '(funapp 3159 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3159 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3160 42))
                                           (display "\n")
                                           (x8571 p))))
                                       (x8568
                                        (letrec*
                                         ((x8569
                                           (begin
                                             (write '(funapp 3163 50))
                                             (display "\n")
                                             (r
                                              (begin
                                                (write '(funapp 3163 52))
                                                (display "\n")
                                                'move-toward)))))
                                         (begin
                                           (write '(funapp 3164 42))
                                           (display "\n")
                                           (x8569 p)))))
                                      (begin
                                        (write '(funapp 3165 39))
                                        (display "\n")
                                        (new-cons-zombies x8570 x8568)))))
                                   g8567))))
                              g8566)
                             (letrec*
                              ((x-cnd8572
                                (begin
                                  (write '(funapp 3169 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3169 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8572
                                (letrec*
                                 ((g8573
                                   (lambda (c s)
                                     (letrec*
                                      ((g8574
                                        (letrec*
                                         ((x8577
                                           (begin
                                             (write '(funapp 3177 50))
                                             (display "\n")
                                             (z
                                              (begin
                                                (write '(funapp 3177 52))
                                                (display "\n")
                                                'draw-on/color))))
                                          (x8575
                                           (letrec*
                                            ((x8576
                                              (begin
                                                (write '(funapp 3180 53))
                                                (display "\n")
                                                (r
                                                 (begin
                                                   (write '(funapp 3180 55))
                                                   (display "\n")
                                                   'draw-on/color)))))
                                            (begin
                                              (write '(funapp 3181 45))
                                              (display "\n")
                                              (x8576 c s)))))
                                         (begin
                                           (write '(funapp 3182 42))
                                           (display "\n")
                                           (x8577 c x8575)))))
                                      g8574))))
                                 g8573)
                                (letrec*
                                 ((x-cnd8578
                                   (begin
                                     (write '(funapp 3186 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3186 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8578
                                   (letrec*
                                    ((g8579
                                      (lambda (p)
                                        (letrec*
                                         ((g8580
                                           (letrec*
                                            ((val7263
                                              (letrec*
                                               ((x8581
                                                 (begin
                                                   (write '(funapp 3196 56))
                                                   (display "\n")
                                                   (z
                                                    (begin
                                                      (write '(funapp 3196 58))
                                                      (display "\n")
                                                      'touching?)))))
                                               (begin
                                                 (write '(funapp 3197 48))
                                                 (display "\n")
                                                 (x8581 p)))))
                                            (letrec*
                                             ((g8582
                                               (if val7263
                                                 val7263
                                                 (letrec*
                                                  ((x8583
                                                    (begin
                                                      (write '(funapp 3203 59))
                                                      (display "\n")
                                                      (r
                                                       (begin
                                                         (write
                                                          '(funapp 3203 61))
                                                         (display "\n")
                                                         'touching?)))))
                                                  (begin
                                                    (write '(funapp 3204 51))
                                                    (display "\n")
                                                    (x8583 p))))))
                                             g8582))))
                                         g8580))))
                                    g8579)
                                   (letrec*
                                    ((x-cnd8584
                                      (begin
                                        (write '(funapp 3209 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3209 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8584
                                      (letrec*
                                       ((g8585
                                         (lambda (dead)
                                           (letrec*
                                            ((g8586
                                              (letrec*
                                               ((x-cnd8587
                                                 (letrec*
                                                  ((val7264
                                                    (letrec*
                                                     ((x8590
                                                       (begin
                                                         (write
                                                          '(funapp 3221 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3221 64))
                                                            (display "\n")
                                                            'touching?))))
                                                      (x8588
                                                       (letrec*
                                                        ((x8589
                                                          (begin
                                                            (write
                                                             '(funapp 3224 65))
                                                            (display "\n")
                                                            (z
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3224
                                                                  67))
                                                               (display "\n")
                                                               'posn)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3225 57))
                                                          (display "\n")
                                                          (x8589)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3226 54))
                                                       (display "\n")
                                                       (x8590 x8588)))))
                                                  (letrec*
                                                   ((g8591
                                                     (if val7264
                                                       val7264
                                                       (letrec*
                                                        ((x8594
                                                          (begin
                                                            (write
                                                             '(funapp 3233 59))
                                                            (display "\n")
                                                            (dead
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3233
                                                                  64))
                                                               (display "\n")
                                                               'touching?))))
                                                         (x8592
                                                          (letrec*
                                                           ((x8593
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3236
                                                                  68))
                                                               (display "\n")
                                                               (z
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     3236
                                                                     70))
                                                                  (display
                                                                   "\n")
                                                                  'posn)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3237
                                                                60))
                                                             (display "\n")
                                                             (x8593)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3238 57))
                                                          (display "\n")
                                                          (x8594 x8592))))))
                                                   g8591))))
                                               (if x-cnd8587
                                                 (letrec*
                                                  ((g8595
                                                    (letrec*
                                                     ((x8597
                                                       (begin
                                                         (write
                                                          '(funapp 3244 62))
                                                         (display "\n")
                                                         (r
                                                          (begin
                                                            (write
                                                             '(funapp 3244 64))
                                                            (display "\n")
                                                            'kill-all))))
                                                      (x8596
                                                       (begin
                                                         (write
                                                          '(funapp 3246 56))
                                                         (display "\n")
                                                         (new-cons-zombies
                                                          z
                                                          dead))))
                                                     (begin
                                                       (write
                                                        '(funapp 3249 54))
                                                       (display "\n")
                                                       (x8597 x8596)))))
                                                  g8595)
                                                 (letrec*
                                                  ((g8598
                                                    (letrec*
                                                     ((res
                                                       (letrec*
                                                        ((x8599
                                                          (begin
                                                            (write
                                                             '(funapp 3256 65))
                                                            (display "\n")
                                                            (r
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3256
                                                                  67))
                                                               (display "\n")
                                                               'kill-all)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3257 57))
                                                          (display "\n")
                                                          (x8599 dead)))))
                                                     (letrec*
                                                      ((g8600
                                                        (letrec*
                                                         ((x8603
                                                           (letrec*
                                                            ((x8604
                                                              (letrec*
                                                               ((x8605
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3266
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (res
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3267
                                                                         66))
                                                                      (display
                                                                       "\n")
                                                                      'undead)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    3268
                                                                    64))
                                                                 (display "\n")
                                                                 (x8605)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3269
                                                                 61))
                                                              (display "\n")
                                                              (new-cons-zombies
                                                               z
                                                               x8604))))
                                                          (x8601
                                                           (letrec*
                                                            ((x8602
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3275
                                                                   63))
                                                                (display "\n")
                                                                (res
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3275
                                                                      67))
                                                                   (display
                                                                    "\n")
                                                                   'dead)))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3276
                                                                 61))
                                                              (display "\n")
                                                              (x8602)))))
                                                         (begin
                                                           (write
                                                            '(funapp 3277 58))
                                                           (display "\n")
                                                           (new-horde
                                                            x8603
                                                            x8601)))))
                                                      g8600))))
                                                  g8598)))))
                                            g8586))))
                                       g8585)
                                      (letrec*
                                       ((g8606 "unknown message"))
                                       g8606)))))))))))
                        g8564))))
                   g8563)))
               (new-mt-zombies
                (lambda ()
                  (letrec*
                   ((g8607
                     (lambda (msg)
                       (letrec*
                        ((g8608
                          (letrec*
                           ((x-cnd8609
                             (begin
                               (write '(funapp 3297 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3297 51))
                                  (display "\n")
                                  'move-toward)))))
                           (if x-cnd8609
                             (letrec*
                              ((g8610
                                (lambda (p)
                                  (letrec*
                                   ((g8611
                                     (begin
                                       (write '(funapp 3302 52))
                                       (display "\n")
                                       (new-mt-zombies))))
                                   g8611))))
                              g8610)
                             (letrec*
                              ((x-cnd8612
                                (begin
                                  (write '(funapp 3305 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3305 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8612
                                (letrec*
                                 ((g8613
                                   (lambda (c s) (letrec* ((g8614 s)) g8614))))
                                 g8613)
                                (letrec*
                                 ((x-cnd8615
                                   (begin
                                     (write '(funapp 3312 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3312 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8615
                                   (letrec*
                                    ((g8616
                                      (lambda (p)
                                        (letrec* ((g8617 #f)) g8617))))
                                    g8616)
                                   (letrec*
                                    ((x-cnd8618
                                      (begin
                                        (write '(funapp 3320 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3320 60))
                                           (display "\n")
                                           'kill-all)))))
                                    (if x-cnd8618
                                      (letrec*
                                       ((g8619
                                         (lambda (dead)
                                           (letrec*
                                            ((g8620
                                              (letrec*
                                               ((x8621
                                                 (begin
                                                   (write '(funapp 3328 56))
                                                   (display "\n")
                                                   (new-mt-zombies))))
                                               (begin
                                                 (write '(funapp 3329 48))
                                                 (display "\n")
                                                 (new-horde x8621 dead)))))
                                            g8620))))
                                       g8619)
                                      (letrec*
                                       ((g8622 "unknown message"))
                                       g8622)))))))))))
                        g8608))))
                   g8607)))
               (new-zombie
                (lambda (p)
                  (letrec*
                   ((g8623
                     (lambda (msg)
                       (letrec*
                        ((g8624
                          (letrec*
                           ((x-cnd8625
                             (begin
                               (write '(funapp 3345 40))
                               (display "\n")
                               (equal?
                                msg
                                (begin
                                  (write '(funapp 3345 51))
                                  (display "\n")
                                  'posn)))))
                           (if x-cnd8625
                             (letrec*
                              ((g8626 (lambda () (letrec* ((g8627 p)) g8627))))
                              g8626)
                             (letrec*
                              ((x-cnd8628
                                (begin
                                  (write '(funapp 3351 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3351 54))
                                     (display "\n")
                                     'draw-on/color)))))
                              (if x-cnd8628
                                (letrec*
                                 ((g8629
                                   (lambda (c s)
                                     (letrec*
                                      ((g8630
                                        (letrec*
                                         ((x8632
                                           (begin
                                             (write '(funapp 3359 50))
                                             (display "\n")
                                             (p
                                              (begin
                                                (write '(funapp 3359 52))
                                                (display "\n")
                                                'draw-on/image))))
                                          (x8631
                                           (begin
                                             (write '(funapp 3361 44))
                                             (display "\n")
                                             (circle
                                              ZOMBIE-RADIUS
                                              "solid"
                                              c))))
                                         (begin
                                           (write '(funapp 3362 42))
                                           (display "\n")
                                           (x8632 x8631 s)))))
                                      g8630))))
                                 g8629)
                                (letrec*
                                 ((x-cnd8633
                                   (begin
                                     (write '(funapp 3366 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3366 57))
                                        (display "\n")
                                        'touching?)))))
                                 (if x-cnd8633
                                   (letrec*
                                    ((g8634
                                      (lambda (q)
                                        (letrec*
                                         ((g8635
                                           (letrec*
                                            ((x8636
                                              (letrec*
                                               ((x8637
                                                 (begin
                                                   (write '(funapp 3376 56))
                                                   (display "\n")
                                                   (p
                                                    (begin
                                                      (write '(funapp 3376 58))
                                                      (display "\n")
                                                      'dist)))))
                                               (begin
                                                 (write '(funapp 3377 48))
                                                 (display "\n")
                                                 (x8637 q)))))
                                            (begin
                                              (write '(funapp 3378 45))
                                              (display "\n")
                                              (<= x8636 ZOMBIE-RADIUS)))))
                                         g8635))))
                                    g8634)
                                   (letrec*
                                    ((x-cnd8638
                                      (begin
                                        (write '(funapp 3382 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3382 60))
                                           (display "\n")
                                           'move-toward)))))
                                    (if x-cnd8638
                                      (letrec*
                                       ((g8639
                                         (lambda (q)
                                           (letrec*
                                            ((g8640
                                              (letrec*
                                               ((x8641
                                                 (letrec*
                                                  ((x8642
                                                    (begin
                                                      (write '(funapp 3393 53))
                                                      (display "\n")
                                                      (p
                                                       (begin
                                                         (write
                                                          '(funapp 3393 55))
                                                         (display "\n")
                                                         'move-toward/speed)))))
                                                  (begin
                                                    (write '(funapp 3394 51))
                                                    (display "\n")
                                                    (x8642 q ZOMBIE-SPEED)))))
                                               (begin
                                                 (write '(funapp 3395 48))
                                                 (display "\n")
                                                 (new-zombie x8641)))))
                                            g8640))))
                                       g8639)
                                      (letrec*
                                       ((g8643 "unknown message"))
                                       g8643)))))))))))
                        g8624))))
                   g8623)))
               (new-posn
                (lambda (x y)
                  (letrec*
                   ((g8644
                     (letrec*
                      ((this
                        (lambda (msg)
                          (letrec*
                           ((g8645
                             (letrec*
                              ((x-cnd8646
                                (begin
                                  (write '(funapp 3413 43))
                                  (display "\n")
                                  (equal?
                                   msg
                                   (begin
                                     (write '(funapp 3413 54))
                                     (display "\n")
                                     'x)))))
                              (if x-cnd8646
                                (letrec*
                                 ((g8647
                                   (lambda () (letrec* ((g8648 x)) g8648))))
                                 g8647)
                                (letrec*
                                 ((x-cnd8649
                                   (begin
                                     (write '(funapp 3420 46))
                                     (display "\n")
                                     (equal?
                                      msg
                                      (begin
                                        (write '(funapp 3420 57))
                                        (display "\n")
                                        'y)))))
                                 (if x-cnd8649
                                   (letrec*
                                    ((g8650
                                      (lambda () (letrec* ((g8651 y)) g8651))))
                                    g8650)
                                   (letrec*
                                    ((x-cnd8652
                                      (begin
                                        (write '(funapp 3427 49))
                                        (display "\n")
                                        (equal?
                                         msg
                                         (begin
                                           (write '(funapp 3427 60))
                                           (display "\n")
                                           'posn)))))
                                    (if x-cnd8652
                                      (letrec*
                                       ((g8653
                                         (lambda ()
                                           (letrec* ((g8654 this)) g8654))))
                                       g8653)
                                      (letrec*
                                       ((x-cnd8655
                                         (begin
                                           (write '(funapp 3436 42))
                                           (display "\n")
                                           (equal?
                                            msg
                                            (begin
                                              (write '(funapp 3436 53))
                                              (display "\n")
                                              'move-toward/speed)))))
                                       (if x-cnd8655
                                         (letrec*
                                          ((g8656
                                            (lambda (p speed)
                                              (letrec*
                                               ((g8657
                                                 (letrec*
                                                  ((δx
                                                    (letrec*
                                                     ((x8658
                                                       (letrec*
                                                        ((x8659
                                                          (begin
                                                            (write
                                                             '(funapp 3448 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3448
                                                                  67))
                                                               (display "\n")
                                                               'x)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3449 57))
                                                          (display "\n")
                                                          (x8659)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3450 54))
                                                       (display "\n")
                                                       (- x8658 x))))
                                                   (δy
                                                    (letrec*
                                                     ((x8660
                                                       (letrec*
                                                        ((x8661
                                                          (begin
                                                            (write
                                                             '(funapp 3455 65))
                                                            (display "\n")
                                                            (p
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  3455
                                                                  67))
                                                               (display "\n")
                                                               'y)))))
                                                        (begin
                                                          (write
                                                           '(funapp 3456 57))
                                                          (display "\n")
                                                          (x8661)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3457 54))
                                                       (display "\n")
                                                       (- x8660 y))))
                                                   (move-distance
                                                    (letrec*
                                                     ((x8662
                                                       (letrec*
                                                        ((x8664
                                                          (begin
                                                            (write
                                                             '(funapp 3462 65))
                                                            (display "\n")
                                                            (abs δx)))
                                                         (x8663
                                                          (begin
                                                            (write
                                                             '(funapp 3463 65))
                                                            (display "\n")
                                                            (abs δy))))
                                                        (begin
                                                          (write
                                                           '(funapp 3464 57))
                                                          (display "\n")
                                                          (max x8664 x8663)))))
                                                     (begin
                                                       (write
                                                        '(funapp 3465 54))
                                                       (display "\n")
                                                       (min speed x8662)))))
                                                  (letrec*
                                                   ((g8665
                                                     (letrec*
                                                      ((x-cnd8666
                                                        (letrec*
                                                         ((x8668
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3471
                                                                66))
                                                             (display "\n")
                                                             (abs δx)))
                                                          (x8667
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3472
                                                                66))
                                                             (display "\n")
                                                             (abs δy))))
                                                         (begin
                                                           (write
                                                            '(funapp 3473 58))
                                                           (display "\n")
                                                           (< x8668 x8667)))))
                                                      (if x-cnd8666
                                                        (letrec*
                                                         ((g8669
                                                           (letrec*
                                                            ((x8672
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3479
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3479
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8670
                                                              (letrec*
                                                               ((x-cnd8671
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3483
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δy))))
                                                               (if x-cnd8671
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3487
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3490
                                                                 61))
                                                              (display "\n")
                                                              (x8672
                                                               0
                                                               x8670)))))
                                                         g8669)
                                                        (letrec*
                                                         ((g8673
                                                           (letrec*
                                                            ((x8676
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3496
                                                                   63))
                                                                (display "\n")
                                                                (this
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3496
                                                                      68))
                                                                   (display
                                                                    "\n")
                                                                   'move))))
                                                             (x8674
                                                              (letrec*
                                                               ((x-cnd8675
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3500
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (positive?
                                                                    δx))))
                                                               (if x-cnd8675
                                                                 move-distance
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3504
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (-
                                                                    0
                                                                    move-distance))))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 3507
                                                                 61))
                                                              (display "\n")
                                                              (x8676
                                                               x8674
                                                               0)))))
                                                         g8673)))))
                                                   g8665))))
                                               g8657))))
                                          g8656)
                                         (letrec*
                                          ((x-cnd8677
                                            (begin
                                              (write '(funapp 3513 55))
                                              (display "\n")
                                              (equal?
                                               msg
                                               (begin
                                                 (write '(funapp 3513 66))
                                                 (display "\n")
                                                 'move)))))
                                          (if x-cnd8677
                                            (letrec*
                                             ((g8678
                                               (lambda (δx δy)
                                                 (letrec*
                                                  ((g8679
                                                    (letrec*
                                                     ((x8681
                                                       (begin
                                                         (write
                                                          '(funapp 3521 62))
                                                         (display "\n")
                                                         (+ x δx)))
                                                      (x8680
                                                       (begin
                                                         (write
                                                          '(funapp 3522 62))
                                                         (display "\n")
                                                         (+ y δy))))
                                                     (begin
                                                       (write
                                                        '(funapp 3523 54))
                                                       (display "\n")
                                                       (new-posn
                                                        x8681
                                                        x8680)))))
                                                  g8679))))
                                             g8678)
                                            (letrec*
                                             ((x-cnd8682
                                               (begin
                                                 (write '(funapp 3528 48))
                                                 (display "\n")
                                                 (equal?
                                                  msg
                                                  (begin
                                                    (write '(funapp 3528 59))
                                                    (display "\n")
                                                    'draw-on/image)))))
                                             (if x-cnd8682
                                               (letrec*
                                                ((g8683
                                                  (lambda (img scn)
                                                    (letrec*
                                                     ((g8684
                                                       (begin
                                                         (write
                                                          '(funapp 3535 56))
                                                         (display "\n")
                                                         (place-image
                                                          img
                                                          x
                                                          y
                                                          scn))))
                                                     g8684))))
                                                g8683)
                                               (letrec*
                                                ((x-cnd8685
                                                  (begin
                                                    (write '(funapp 3544 51))
                                                    (display "\n")
                                                    (equal?
                                                     msg
                                                     (begin
                                                       (write
                                                        '(funapp 3544 62))
                                                       (display "\n")
                                                       'dist)))))
                                                (if x-cnd8685
                                                  (letrec*
                                                   ((g8686
                                                     (lambda (p)
                                                       (letrec*
                                                        ((g8687
                                                          (letrec*
                                                           ((x8688
                                                             (letrec*
                                                              ((x8693
                                                                (letrec*
                                                                 ((x8694
                                                                   (letrec*
                                                                    ((x8695
                                                                      (letrec*
                                                                       ((x8696
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3561
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3562
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'y)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3563
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8696)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3564
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8695
                                                                       y)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3567
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8694))))
                                                               (x8689
                                                                (letrec*
                                                                 ((x8690
                                                                   (letrec*
                                                                    ((x8691
                                                                      (letrec*
                                                                       ((x8692
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              3575
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (p
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 3576
                                                                                 74))
                                                                              (display
                                                                               "\n")
                                                                              'x)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            3577
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x8692)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         3578
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (-
                                                                       x8691
                                                                       x)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      3581
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (sqr
                                                                    x8690)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   3582
                                                                   63))
                                                                (display "\n")
                                                                (+
                                                                 x8693
                                                                 x8689)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                3585
                                                                60))
                                                             (display "\n")
                                                             (sqrt x8688)))))
                                                        g8687))))
                                                   g8686)
                                                  (letrec*
                                                   ((g8697 "unknown message"))
                                                   g8697)))))))))))))))))
                           g8645))))
                      (letrec* ((g8698 this)) g8698))))
                   g8644)))
               (w0
                (letrec*
                 ((x8712
                   (letrec*
                    ((x8713
                      (begin
                        (write '(funapp 3596 43))
                        (display "\n")
                        (new-posn 0 0))))
                    (begin
                      (write '(funapp 3596 60))
                      (display "\n")
                      (new-player x8713))))
                  (x8711
                   (begin
                     (write '(funapp 3597 26))
                     (display "\n")
                     (new-posn 0 0)))
                  (x8699
                   (letrec*
                    ((x8704
                      (letrec*
                       ((x8709
                         (letrec*
                          ((x8710
                            (begin
                              (write '(funapp 3604 35))
                              (display "\n")
                              (new-posn 100 300))))
                          (begin
                            (write '(funapp 3605 27))
                            (display "\n")
                            (new-zombie x8710))))
                        (x8705
                         (letrec*
                          ((x8707
                            (letrec*
                             ((x8708
                               (begin
                                 (write '(funapp 3610 38))
                                 (display "\n")
                                 (new-posn 100 200))))
                             (begin
                               (write '(funapp 3611 30))
                               (display "\n")
                               (new-zombie x8708))))
                           (x8706
                            (begin
                              (write '(funapp 3612 35))
                              (display "\n")
                              (new-mt-zombies))))
                          (begin
                            (write '(funapp 3613 27))
                            (display "\n")
                            (new-cons-zombies x8707 x8706)))))
                       (begin
                         (write '(funapp 3614 24))
                         (display "\n")
                         (new-cons-zombies x8709 x8705))))
                     (x8700
                      (letrec*
                       ((x8702
                         (letrec*
                          ((x8703
                            (begin
                              (write '(funapp 3619 35))
                              (display "\n")
                              (new-posn 200 200))))
                          (begin
                            (write '(funapp 3620 27))
                            (display "\n")
                            (new-zombie x8703))))
                        (x8701
                         (begin
                           (write '(funapp 3621 32))
                           (display "\n")
                           (new-mt-zombies))))
                       (begin
                         (write '(funapp 3622 24))
                         (display "\n")
                         (new-cons-zombies x8702 x8701)))))
                    (begin
                      (write '(funapp 3623 21))
                      (display "\n")
                      (new-horde x8704 x8700)))))
                 (begin
                   (write '(funapp 3624 18))
                   (display "\n")
                   (new-world x8712 x8711 x8699)))))
              (letrec*
               ((g8714
                 (begin
                   (write '(funapp 3627 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 3628 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8716
                          (letrec*
                           ((xj7574
                             (begin
                               (write '(funapp 3632 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3632 37))
                                  (display "\n")
                                  'module))))
                            (xk7575
                             (begin
                               (write '(funapp 3632 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3632 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8717
                              (begin
                                (write '(funapp 3635 27))
                                (display "\n")
                                ((lambda (j7577 k7578 f7579)
                                   (letrec*
                                    ((g8718
                                      (lambda (g7576)
                                        (letrec*
                                         ((g8719
                                           (letrec*
                                            ((x8720
                                              (letrec*
                                               ((x8721
                                                 (begin
                                                   (write '(funapp 3644 50))
                                                   (display "\n")
                                                   (any/c j7577 k7578 g7576))))
                                               (begin
                                                 (write '(funapp 3645 42))
                                                 (display "\n")
                                                 (f7579 x8721)))))
                                            (begin
                                              (write '(funapp 3646 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7577
                                               k7578
                                               x8720)))))
                                         g8719))))
                                    g8718))
                                 xj7574
                                 xk7575
                                 image/c))))
                            g8717)))
                         (x8715 (input)))
                        (begin
                          (write '(funapp 3654 21))
                          (display "\n")
                          (x8716 x8715)))
                       (letrec*
                        ((x8724
                          (letrec*
                           ((xj7580
                             (begin
                               (write '(funapp 3658 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3658 37))
                                  (display "\n")
                                  'module))))
                            (xk7581
                             (begin
                               (write '(funapp 3658 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3658 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8725
                              (begin
                                (write '(funapp 3661 27))
                                (display "\n")
                                ((lambda (j7584 k7585 f7586)
                                   (letrec*
                                    ((g8726
                                      (lambda (g7582 g7583)
                                        (letrec*
                                         ((g8727
                                           (letrec*
                                            ((x8728
                                              (letrec*
                                               ((x8730
                                                 (begin
                                                   (write '(funapp 3670 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7584
                                                    k7585
                                                    g7582)))
                                                (x8729
                                                 (begin
                                                   (write '(funapp 3671 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7584
                                                    k7585
                                                    g7583))))
                                               (begin
                                                 (write '(funapp 3672 42))
                                                 (display "\n")
                                                 (f7586 x8730 x8729)))))
                                            (begin
                                              (write '(funapp 3673 39))
                                              (display "\n")
                                              (image/c j7584 k7585 x8728)))))
                                         g8727))))
                                    g8726))
                                 xj7580
                                 xk7581
                                 empty-scene))))
                            g8725)))
                         (x8723 (input))
                         (x8722 (input)))
                        (begin
                          (write '(funapp 3682 21))
                          (display "\n")
                          (x8724 x8723 x8722)))
                       (letrec*
                        ((x8735
                          (letrec*
                           ((xj7587
                             (begin
                               (write '(funapp 3686 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3686 37))
                                  (display "\n")
                                  'module))))
                            (xk7588
                             (begin
                               (write '(funapp 3686 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3686 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8736
                              (begin
                                (write '(funapp 3689 27))
                                (display "\n")
                                ((lambda (j7593 k7594 f7595)
                                   (letrec*
                                    ((g8737
                                      (lambda (g7589 g7590 g7591 g7592)
                                        (letrec*
                                         ((g8738
                                           (letrec*
                                            ((x8739
                                              (letrec*
                                               ((x8743
                                                 (begin
                                                   (write '(funapp 3698 50))
                                                   (display "\n")
                                                   (image/c/c
                                                    j7593
                                                    k7594
                                                    g7589)))
                                                (x8742
                                                 (begin
                                                   (write '(funapp 3699 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7593
                                                    k7594
                                                    g7590)))
                                                (x8741
                                                 (begin
                                                   (write '(funapp 3700 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7593
                                                    k7594
                                                    g7591)))
                                                (x8740
                                                 (begin
                                                   (write '(funapp 3701 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7593
                                                    k7594
                                                    g7592))))
                                               (begin
                                                 (write '(funapp 3702 42))
                                                 (display "\n")
                                                 (f7595
                                                  x8743
                                                  x8742
                                                  x8741
                                                  x8740)))))
                                            (begin
                                              (write '(funapp 3703 39))
                                              (display "\n")
                                              (image/c j7593 k7594 x8739)))))
                                         g8738))))
                                    g8737))
                                 xj7587
                                 xk7588
                                 place-image))))
                            g8736)))
                         (x8734 (input))
                         (x8733 (input))
                         (x8732 (input))
                         (x8731
                          (begin
                            (write '(funapp 3713 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3713 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3713 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3714 21))
                          (display "\n")
                          (x8735 x8734 x8733 x8732 x8731)))
                       (letrec*
                        ((x8747
                          (letrec*
                           ((xj7596
                             (begin
                               (write '(funapp 3718 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3718 37))
                                  (display "\n")
                                  'module))))
                            (xk7597
                             (begin
                               (write '(funapp 3718 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3718 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8748
                              (begin
                                (write '(funapp 3721 27))
                                (display "\n")
                                ((lambda (j7601 k7602 f7603)
                                   (letrec*
                                    ((g8749
                                      (lambda (g7598 g7599 g7600)
                                        (letrec*
                                         ((g8750
                                           (letrec*
                                            ((x8751
                                              (letrec*
                                               ((x8754
                                                 (begin
                                                   (write '(funapp 3730 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7601
                                                    k7602
                                                    g7598)))
                                                (x8753
                                                 (begin
                                                   (write '(funapp 3731 50))
                                                   (display "\n")
                                                   (string?/c
                                                    j7601
                                                    k7602
                                                    g7599)))
                                                (x8752
                                                 (begin
                                                   (write '(funapp 3733 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7601
                                                    k7602
                                                    g7600))))
                                               (begin
                                                 (write '(funapp 3734 42))
                                                 (display "\n")
                                                 (f7603 x8754 x8753 x8752)))))
                                            (begin
                                              (write '(funapp 3735 39))
                                              (display "\n")
                                              (image/c j7601 k7602 x8751)))))
                                         g8750))))
                                    g8749))
                                 xj7596
                                 xk7597
                                 circle))))
                            g8748)))
                         (x8746 (input))
                         (x8745 (input))
                         (x8744 (input)))
                        (begin
                          (write '(funapp 3745 21))
                          (display "\n")
                          (x8747 x8746 x8745 x8744)))
                       (letrec*
                        ((x8758
                          (letrec*
                           ((xj7604
                             (begin
                               (write '(funapp 3749 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3749 37))
                                  (display "\n")
                                  'module))))
                            (xk7605
                             (begin
                               (write '(funapp 3749 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3749 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8759
                              (begin
                                (write '(funapp 3752 27))
                                (display "\n")
                                ((lambda (j7609 k7610 f7611)
                                   (letrec*
                                    ((g8760
                                      (lambda (g7606 g7607 g7608)
                                        (letrec*
                                         ((g8761
                                           (letrec*
                                            ((x8762
                                              (letrec*
                                               ((x8765
                                                 (begin
                                                   (write '(funapp 3761 50))
                                                   (display "\n")
                                                   (player/c
                                                    j7609
                                                    k7610
                                                    g7606)))
                                                (x8764
                                                 (begin
                                                   (write '(funapp 3762 50))
                                                   (display "\n")
                                                   (posn/c j7609 k7610 g7607)))
                                                (x8763
                                                 (begin
                                                   (write '(funapp 3763 50))
                                                   (display "\n")
                                                   (horde/c
                                                    j7609
                                                    k7610
                                                    g7608))))
                                               (begin
                                                 (write '(funapp 3764 42))
                                                 (display "\n")
                                                 (f7611 x8765 x8764 x8763)))))
                                            (begin
                                              (write '(funapp 3765 39))
                                              (display "\n")
                                              (world/c j7609 k7610 x8762)))))
                                         g8761))))
                                    g8760))
                                 xj7604
                                 xk7605
                                 new-world))))
                            g8759)))
                         (x8757 (input))
                         (x8756 (input))
                         (x8755 (input)))
                        (begin
                          (write '(funapp 3775 21))
                          (display "\n")
                          (x8758 x8757 x8756 x8755)))
                       (letrec*
                        ((x8767
                          (letrec*
                           ((xj7612
                             (begin
                               (write '(funapp 3779 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3779 37))
                                  (display "\n")
                                  'module))))
                            (xk7613
                             (begin
                               (write '(funapp 3779 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3779 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8768
                              (begin
                                (write '(funapp 3782 27))
                                (display "\n")
                                ((lambda (j7615 k7616 f7617)
                                   (letrec*
                                    ((g8769
                                      (lambda (g7614)
                                        (letrec*
                                         ((g8770
                                           (letrec*
                                            ((x8771
                                              (letrec*
                                               ((x8772
                                                 (begin
                                                   (write '(funapp 3791 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7615
                                                    k7616
                                                    g7614))))
                                               (begin
                                                 (write '(funapp 3792 42))
                                                 (display "\n")
                                                 (f7617 x8772)))))
                                            (begin
                                              (write '(funapp 3793 39))
                                              (display "\n")
                                              (player/c j7615 k7616 x8771)))))
                                         g8770))))
                                    g8769))
                                 xj7612
                                 xk7613
                                 new-player))))
                            g8768)))
                         (x8766 (input)))
                        (begin
                          (write '(funapp 3801 21))
                          (display "\n")
                          (x8767 x8766)))
                       (letrec*
                        ((x8775
                          (letrec*
                           ((xj7618
                             (begin
                               (write '(funapp 3805 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3805 37))
                                  (display "\n")
                                  'module))))
                            (xk7619
                             (begin
                               (write '(funapp 3805 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3805 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8776
                              (begin
                                (write '(funapp 3808 27))
                                (display "\n")
                                ((lambda (j7622 k7623 f7624)
                                   (letrec*
                                    ((g8777
                                      (lambda (g7620 g7621)
                                        (letrec*
                                         ((g8778
                                           (letrec*
                                            ((x8779
                                              (letrec*
                                               ((x8781
                                                 (begin
                                                   (write '(funapp 3817 50))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7622
                                                    k7623
                                                    g7620)))
                                                (x8780
                                                 (begin
                                                   (write '(funapp 3819 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7622
                                                    k7623
                                                    g7621))))
                                               (begin
                                                 (write '(funapp 3820 42))
                                                 (display "\n")
                                                 (f7624 x8781 x8780)))))
                                            (begin
                                              (write '(funapp 3821 39))
                                              (display "\n")
                                              (horde/c j7622 k7623 x8779)))))
                                         g8778))))
                                    g8777))
                                 xj7618
                                 xk7619
                                 new-horde))))
                            g8776)))
                         (x8774 (input))
                         (x8773 (input)))
                        (begin
                          (write '(funapp 3830 21))
                          (display "\n")
                          (x8775 x8774 x8773)))
                       (letrec*
                        ((x8784
                          (letrec*
                           ((xj7625
                             (begin
                               (write '(funapp 3834 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3834 37))
                                  (display "\n")
                                  'module))))
                            (xk7626
                             (begin
                               (write '(funapp 3834 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3834 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8785
                              (begin
                                (write '(funapp 3837 27))
                                (display "\n")
                                ((lambda (j7629 k7630 f7631)
                                   (letrec*
                                    ((g8786
                                      (lambda (g7627 g7628)
                                        (letrec*
                                         ((g8787
                                           (letrec*
                                            ((x8788
                                              (letrec*
                                               ((x8790
                                                 (begin
                                                   (write '(funapp 3846 50))
                                                   (display "\n")
                                                   (zombie/c
                                                    j7629
                                                    k7630
                                                    g7627)))
                                                (x8789
                                                 (begin
                                                   (write '(funapp 3848 44))
                                                   (display "\n")
                                                   (zombies/c
                                                    j7629
                                                    k7630
                                                    g7628))))
                                               (begin
                                                 (write '(funapp 3849 42))
                                                 (display "\n")
                                                 (f7631 x8790 x8789)))))
                                            (begin
                                              (write '(funapp 3850 39))
                                              (display "\n")
                                              (zombies/c j7629 k7630 x8788)))))
                                         g8787))))
                                    g8786))
                                 xj7625
                                 xk7626
                                 new-cons-zombies))))
                            g8785)))
                         (x8783 (input))
                         (x8782 (input)))
                        (begin
                          (write '(funapp 3859 21))
                          (display "\n")
                          (x8784 x8783 x8782)))
                       (letrec*
                        ((xj7632
                          (begin
                            (write '(funapp 3861 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3861 34))
                               (display "\n")
                               'module))))
                         (xk7633
                          (begin
                            (write '(funapp 3861 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3861 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8791
                           (begin
                             (write '(funapp 3864 24))
                             (display "\n")
                             ((lambda (j7634 k7635 f7636)
                                (letrec*
                                 ((g8792
                                   (lambda ()
                                     (letrec*
                                      ((g8793
                                        (letrec*
                                         ((x8794
                                           (begin
                                             (write '(funapp 3871 44))
                                             (display "\n")
                                             (f7636))))
                                         (begin
                                           (write '(funapp 3872 36))
                                           (display "\n")
                                           (zombies/c j7634 k7635 x8794)))))
                                      g8793))))
                                 g8792))
                              xj7632
                              xk7633
                              new-mt-zombies))))
                         g8791))
                       (letrec*
                        ((x8796
                          (letrec*
                           ((xj7637
                             (begin
                               (write '(funapp 3882 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3882 37))
                                  (display "\n")
                                  'module))))
                            (xk7638
                             (begin
                               (write '(funapp 3882 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3882 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8797
                              (begin
                                (write '(funapp 3885 27))
                                (display "\n")
                                ((lambda (j7640 k7641 f7642)
                                   (letrec*
                                    ((g8798
                                      (lambda (g7639)
                                        (letrec*
                                         ((g8799
                                           (letrec*
                                            ((x8800
                                              (letrec*
                                               ((x8801
                                                 (begin
                                                   (write '(funapp 3894 50))
                                                   (display "\n")
                                                   (posn/c
                                                    j7640
                                                    k7641
                                                    g7639))))
                                               (begin
                                                 (write '(funapp 3895 42))
                                                 (display "\n")
                                                 (f7642 x8801)))))
                                            (begin
                                              (write '(funapp 3896 39))
                                              (display "\n")
                                              (zombie/c j7640 k7641 x8800)))))
                                         g8799))))
                                    g8798))
                                 xj7637
                                 xk7638
                                 new-zombie))))
                            g8797)))
                         (x8795 (input)))
                        (begin
                          (write '(funapp 3904 21))
                          (display "\n")
                          (x8796 x8795)))
                       (letrec*
                        ((x8804
                          (letrec*
                           ((xj7643
                             (begin
                               (write '(funapp 3908 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3908 37))
                                  (display "\n")
                                  'module))))
                            (xk7644
                             (begin
                               (write '(funapp 3908 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3908 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8805
                              (begin
                                (write '(funapp 3911 27))
                                (display "\n")
                                ((lambda (j7647 k7648 f7649)
                                   (letrec*
                                    ((g8806
                                      (lambda (g7645 g7646)
                                        (letrec*
                                         ((g8807
                                           (letrec*
                                            ((x8808
                                              (letrec*
                                               ((x8810
                                                 (begin
                                                   (write '(funapp 3920 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7647
                                                    k7648
                                                    g7645)))
                                                (x8809
                                                 (begin
                                                   (write '(funapp 3921 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7647
                                                    k7648
                                                    g7646))))
                                               (begin
                                                 (write '(funapp 3922 42))
                                                 (display "\n")
                                                 (f7649 x8810 x8809)))))
                                            (begin
                                              (write '(funapp 3923 39))
                                              (display "\n")
                                              (posn/c j7647 k7648 x8808)))))
                                         g8807))))
                                    g8806))
                                 xj7643
                                 xk7644
                                 new-posn))))
                            g8805)))
                         (x8803 (input))
                         (x8802 (input)))
                        (begin
                          (write '(funapp 3932 21))
                          (display "\n")
                          (x8804 x8803 x8802)))
                       (letrec*
                        ((xj7650
                          (begin
                            (write '(funapp 3934 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3934 34))
                               (display "\n")
                               'module))))
                         (xk7651
                          (begin
                            (write '(funapp 3934 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 3934 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8811
                           (begin
                             (write '(funapp 3935 38))
                             (display "\n")
                             (world/c xj7650 xk7651 w0))))
                         g8811))))))))
               g8714))))
           g7681))))
       g7664)))
    g7663)))
