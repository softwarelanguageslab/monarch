(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7567 #t)) g7567)))
    (meta (lambda (v) (letrec* ((g7568 v)) g7568)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7569
          (letrec*
           ((g7570
             (letrec*
              ((x-e7571 lst))
              (letrec*
               ((v1742 x-e7571))
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
                   ((x-cnd7572
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7572
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
           g7570)))
        g7569)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7573 (lambda (v) (letrec* ((g7574 v)) g7574)))) g7573)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7575
          (letrec*
           ((x7576 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7576)))))
        g7575))))
   (letrec*
    ((g7577
      (letrec*
       ((g7578
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7579
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7579)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7580
                 (letrec*
                  ((x7582
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7582))))
                (g7581
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7583
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7584 (if val7244 val7244 #f))) g7584)))))
                   g7583))))
               g7581)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7585
                 (letrec*
                  ((x7587
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7587))))
                (g7586
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7588
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7589 (if val7246 val7246 #f))) g7589)))))
                   g7588))))
               g7586)))
           (>
            (lambda (x y)
              (letrec*
               ((g7590
                 (letrec*
                  ((x7592
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7592))))
                (g7591
                 (letrec*
                  ((x7593
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7593)))))
               g7591)))
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
           ((g7594 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7595
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7596
                     (lambda (k j lst)
                       (letrec*
                        ((g7597
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7598
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7598))
                             lst))))
                        g7597))))
                   g7596)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x-cnd7600
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7600
                        g7267
                        (begin
                          (write '(blame g7265 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7599)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x-cnd7602
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7602
                        g7270
                        (begin
                          (write '(blame g7268 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7601)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x-cnd7604
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7604
                        g7273
                        (begin
                          (write '(blame g7271 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7603)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x-cnd7606
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7607 #t)) g7607)) g7276))))
                      (if x-cnd7606
                        g7276
                        (begin
                          (write '(blame g7274 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7605)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x-cnd7609
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7610 #t)) g7610)) g7279))))
                      (if x-cnd7609
                        g7279
                        (begin
                          (write '(blame g7277 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7608)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x-cnd7612
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7612
                        g7282
                        (begin
                          (write '(blame g7280 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7611)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7614
                        g7285
                        (begin
                          (write '(blame g7283 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7613)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7616
                        g7288
                        (begin
                          (write '(blame g7286 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7615)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x-cnd7618
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7618
                        g7291
                        (begin
                          (write '(blame g7289 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7617)))
               (string?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x-cnd7620
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7294))))
                      (if x-cnd7620
                        g7294
                        (begin
                          (write '(blame g7292 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7619)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7621
                     (lambda (k j v)
                       (letrec*
                        ((g7622
                          (letrec*
                           ((x-cnd7623
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7623
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7622))))
                   g7621)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7624
                     (lambda (k j v)
                       (letrec*
                        ((g7625
                          (letrec*
                           ((x-cnd7626
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7626
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7630
                                (letrec*
                                 ((x7631
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7631))))
                               (x7627
                                (letrec*
                                 ((x7629
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7628
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7629 k j x7628)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7630 x7627)))))))
                        g7625))))
                   g7624)))
               (any? (lambda (v) (letrec* ((g7632 #t)) g7632)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7634)))))
                   g7633)))
               (nonzero?/c
                (lambda (g7295 g7296 g7297)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7637
                                (letrec*
                                 ((x7638
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7638)))))
                              g7637))
                           g7297))))
                      (if x-cnd7636
                        g7297
                        (begin
                          (write '(blame g7295 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7295)))))))
                   g7635)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7639
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7640
                          (letrec*
                           ((x-cnd7641
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7642
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7642))
                                g7300))))
                           (if x-cnd7641
                             g7300
                             (begin
                               (write '(blame g7298 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7640))))
                   g7639)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7643
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7644
                          (letrec*
                           ((x-cnd7645
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7646
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7646))
                                g7303))))
                           (if x-cnd7645
                             g7303
                             (begin
                               (write '(blame g7301 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7644))))
                   g7643)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7647
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7648
                          (letrec*
                           ((x-cnd7649
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7650
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7650))
                                g7306))))
                           (if x-cnd7649
                             g7306
                             (begin
                               (write '(blame g7304 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7648))))
                   g7647)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7651
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7652
                          (letrec*
                           ((x-cnd7653
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7654
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7654))
                                g7309))))
                           (if x-cnd7653
                             g7309
                             (begin
                               (write '(blame g7307 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7652))))
                   g7651)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7655
                     (lambda (g7310 g7311 g7312)
                       (letrec*
                        ((g7656
                          (letrec*
                           ((x-cnd7657
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7658
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7658))
                                g7312))))
                           (if x-cnd7657
                             g7312
                             (begin
                               (write '(blame g7310 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7310)))))))
                        g7656))))
                   g7655)))
               (meta (lambda (v) (letrec* ((g7659 v)) g7659)))
               (+
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7660
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7662
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7663
                                 (letrec*
                                  ((x7664
                                    (letrec*
                                     ((x7666
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7665
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7319 x7666 x7665)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7664)))))
                               g7663))))
                          g7662))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7661
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7661))))))
                  g7660)))
               (-
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7667
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7669
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7670
                                 (letrec*
                                  ((x7671
                                    (letrec*
                                     ((x7673
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7672
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7326 x7673 x7672)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7671)))))
                               g7670))))
                          g7669))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7668
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7668))))))
                  g7667)))
               (*
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7674
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7676
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7677
                                 (letrec*
                                  ((x7678
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7679
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7333 x7680 x7679)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7331 k7332 x7678)))))
                               g7677))))
                          g7676))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7675
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7675))))))
                  g7674)))
               (<
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7681
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7683
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7684
                                 (letrec*
                                  ((x7685
                                    (letrec*
                                     ((x7687
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7686
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7340 x7687 x7686)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7685)))))
                               g7684))))
                          g7683))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7682
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7682))))))
                  g7681)))
               (>
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7688
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7690
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7691
                                 (letrec*
                                  ((x7692
                                    (letrec*
                                     ((x7694
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7693
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7347 x7694 x7693)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7692)))))
                               g7691))))
                          g7690))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7689
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7689))))))
                  g7688)))
               (<=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7695
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7697
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7698
                                 (letrec*
                                  ((x7699
                                    (letrec*
                                     ((x7701
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7700
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7354 x7701 x7700)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7699)))))
                               g7698))))
                          g7697))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7696
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7696))))))
                  g7695)))
               (>=
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7702
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7704
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7705
                                 (letrec*
                                  ((x7706
                                    (letrec*
                                     ((x7708
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7707
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7361 x7708 x7707)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7359 k7360 x7706)))))
                               g7705))))
                          g7704))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7703
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7703))))))
                  g7702)))
               (/
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7709
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7711
                            (lambda (g7364 g7365)
                              (letrec*
                               ((g7712
                                 (letrec*
                                  ((x7713
                                    (letrec*
                                     ((x7715
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7364)))
                                      (x7714
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7368 x7715 x7714)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7366 k7367 x7713)))))
                               g7712))))
                          g7711))
                       xj7362
                       xk7363
                       (lambda (a b)
                         (letrec*
                          ((g7710
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7710))))))
                  g7709)))
               (car
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7716
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7718
                            (lambda (g7371)
                              (letrec*
                               ((g7719
                                 (letrec*
                                  ((x7720
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7374 x7721)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7720)))))
                               g7719))))
                          g7718))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7717
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7717))))))
                  g7716)))
               (cdr
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7722
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7724
                            (lambda (g7377)
                              (letrec*
                               ((g7725
                                 (letrec*
                                  ((x7726
                                    (letrec*
                                     ((x7727
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7380 x7727)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7378 k7379 x7726)))))
                               g7725))))
                          g7724))
                       xj7375
                       xk7376
                       (lambda (p)
                         (letrec*
                          ((g7723
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7723))))))
                  g7722)))
               (cons
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7728
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7730
                            (lambda (g7383 g7384)
                              (letrec*
                               ((g7731
                                 (letrec*
                                  ((x7732
                                    (letrec*
                                     ((x7734
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7383)))
                                      (x7733
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7387 x7734 x7733)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7385 k7386 x7732)))))
                               g7731))))
                          g7730))
                       xj7381
                       xk7382
                       (lambda (a b)
                         (letrec*
                          ((g7729
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7729))))))
                  g7728)))
               (vector-ref
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7735
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7737
                            (lambda (g7390)
                              (letrec*
                               ((g7738
                                 (letrec*
                                  ((x7739
                                    (letrec*
                                     ((x7740
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7393 x7740)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7391 k7392 x7739)))))
                               g7738))))
                          g7737))
                       xj7388
                       xk7389
                       (lambda (v i)
                         (letrec*
                          ((g7736
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7736))))))
                  g7735)))
               (vector-set!
                (letrec*
                 ((xj7394
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7395
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7741
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7398 k7399 f7400)
                         (letrec*
                          ((g7743
                            (lambda (g7396 g7397)
                              (letrec*
                               ((g7744
                                 (letrec*
                                  ((x7745
                                    (letrec*
                                     ((x7747
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7398 k7399 g7396)))
                                      (x7746
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7398 k7399 g7397))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7400 x7747 x7746)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7398 k7399 x7745)))))
                               g7744))))
                          g7743))
                       xj7394
                       xk7395
                       (lambda (vec i v)
                         (letrec*
                          ((g7742
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7742))))))
                  g7741)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7750)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x-cnd7756
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7756
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7760))))
                          (x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7758)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7759 x7757)))))))
                   g7753)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7770)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7774))))
                    (g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7775))))
                    (g7773
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
                       ((g7776
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7777 res))
                       g7777))))
                   g7773)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7782)))))
                   g7781)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        #f
                        (letrec*
                         ((x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7790 k)))))
                         (if x-cnd7789
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7791)))))))))
                   g7786)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7793)))))
                   g7792)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        ""
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7801))))
                          (x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7799)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7800 x7798)))))))
                   g7795)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7807
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7807))))
                   g7804)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7809
                        (letrec*
                         ((x7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7811)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7810)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7809)))))
                   g7808)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7817
                        x
                        (letrec*
                         ((x7819
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7818
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7819 x7818)))))))
                   g7814)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7820
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7820)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x-cnd7822
                        (letrec*
                         ((x7823 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7823)))))
                      (if x-cnd7822
                        (letrec*
                         ((x7824 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7824)))
                        #f))))
                   g7821)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7826
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7826 9)))))
                      (letrec*
                       ((g7827
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7828 10)))))
                            (letrec*
                             ((g7829
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7830
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7830 32))))))
                             g7829)))))
                       g7827))))
                   g7825)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (letrec*
                         ((x7833
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7833)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7832)))))
                   g7831)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7836))))
                    (g7835
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7835)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7837 #f)) g7837)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7839)))))
                   g7838)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x-cnd7843
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7843
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7841)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7845
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7846
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7846
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7847
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7848
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7848
                                       (letrec*
                                        ((x-cnd7849
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7849
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7850
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7851
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7851
                                             (letrec*
                                              ((x-cnd7852
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7852
                                                (letrec*
                                                 ((x-cnd7853
                                                   (letrec*
                                                    ((x7855
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7854
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7855 x7854)))))
                                                 (if x-cnd7853
                                                   (letrec*
                                                    ((x7857
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7856
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7857 x7856)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7858
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7859
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7859
                                                (letrec*
                                                 ((x-cnd7860
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7860
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7861
                                                       (letrec*
                                                        ((x-cnd7862
                                                          (letrec*
                                                           ((x7863
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
                                                             (= x7863 n)))))
                                                        (if x-cnd7862
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7864
                                                                  (letrec*
                                                                   ((val7254
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
                                                                    ((g7865
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7866
                                                                           (letrec*
                                                                            ((x7868
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
                                                                             (x7867
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
                                                                               x7868
                                                                               x7867)))))
                                                                         (if x-cnd7866
                                                                           (letrec*
                                                                            ((x7869
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
                                                                               x7869)))
                                                                           #f)))))
                                                                    g7865))))
                                                                g7864))))
                                                           (letrec*
                                                            ((g7870
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7870))
                                                          #f))))
                                                     g7861))
                                                   #f))
                                                #f)))))
                                         g7858)))))
                                   g7850)))))
                             g7847)))))
                       g7845))))
                   g7844)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7874)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7873)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7877)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7879
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7879)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7883))))
                    (g7881
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7884))))
                    (g7882
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
                       ((g7885
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7886 res))
                       g7886))))
                   g7882)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7887
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7887)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7891))))
                    (g7889
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7892))))
                    (g7890
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7893
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7893))))
                   g7890)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7896)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7895)))))
                   g7894)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7898
                        (letrec*
                         ((x7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7900)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7899)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7898)))))
                   g7897)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7902
                        (letrec*
                         ((x7903
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7903)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7902)))))
                   g7901)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7906)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7905)))))
                   g7904)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7912)))))
                   g7909)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7916)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7914)))))
                   g7913)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7919))))
                    (g7918
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7918)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7920
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7920)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7923)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7924
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7924)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((x-cnd7928
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7928
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7932))))
                          (x7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7930)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7931 x7929)))))))
                   g7926)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7936)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7935)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7934)))))
                   g7933)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (letrec*
                         ((x7939
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7940)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7939)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7938)))))
                   g7937)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7943))))
                    (g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7944)))))
                   g7942)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (letrec*
                         ((x7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7948)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7947)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7946)))))
                   g7945)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7954
                        (letrec*
                         ((g7955
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7955)
                        (letrec*
                         ((x-cnd7956
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7957)))))
                         (if x-cnd7956
                           (letrec*
                            ((g7958
                              (letrec*
                               ((x7959
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7959)))))
                            g7958)
                           (letrec*
                            ((x-cnd7960
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7961)))))
                            (if x-cnd7960
                              (letrec*
                               ((g7962
                                 (letrec*
                                  ((x7964
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7963
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7964 x7963)))))
                               g7962)
                              (letrec*
                               ((x-cnd7965
                                 (letrec*
                                  ((x7966
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7966)))))
                               (if x-cnd7965
                                 (letrec*
                                  ((g7967
                                    (letrec*
                                     ((x7970
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7969
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7968
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7970 x7969 x7968)))))
                                  g7967)
                                 (letrec*
                                  ((x-cnd7971
                                    (letrec*
                                     ((x7972
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7972)))))
                                  (if x-cnd7971
                                    (letrec*
                                     ((g7973
                                       (letrec*
                                        ((x7977
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7976
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7975
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7974
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7977 x7976 x7975 x7974)))))
                                     g7973)
                                    (letrec*
                                     ((x-cnd7978
                                       (letrec*
                                        ((x7979
                                          (letrec*
                                           ((x7980
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7980)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7979)))))
                                     (if x-cnd7978
                                       (letrec*
                                        ((g7981
                                          (letrec*
                                           ((x7987
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7986
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7985
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7984
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7982
                                             (letrec*
                                              ((x7983
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7983)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7987
                                              x7986
                                              x7985
                                              x7984
                                              x7982)))))
                                        g7981)
                                       (letrec*
                                        ((x-cnd7988
                                          (letrec*
                                           ((x7989
                                             (letrec*
                                              ((x7990
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7990)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7989)))))
                                        (if x-cnd7988
                                          (letrec*
                                           ((g7991
                                             (letrec*
                                              ((x7999
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7998
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7997
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7996
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7994
                                                (letrec*
                                                 ((x7995
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7995))))
                                               (x7992
                                                (letrec*
                                                 ((x7993
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7993)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7999
                                                 x7998
                                                 x7997
                                                 x7996
                                                 x7994
                                                 x7992)))))
                                           g7991)
                                          (letrec*
                                           ((x-cnd8000
                                             (letrec*
                                              ((x8001
                                                (letrec*
                                                 ((x8002
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x8002)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x8001)))))
                                           (if x-cnd8000
                                             (letrec*
                                              ((g8003
                                                (letrec*
                                                 ((x8013
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8012
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8011
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8010
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8008
                                                   (letrec*
                                                    ((x8009
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x8009))))
                                                  (x8006
                                                   (letrec*
                                                    ((x8007
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x8007))))
                                                  (x8004
                                                   (letrec*
                                                    ((x8005
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x8005)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x8013
                                                    x8012
                                                    x8011
                                                    x8010
                                                    x8008
                                                    x8006
                                                    x8004)))))
                                              g8003)
                                             (letrec*
                                              ((g8014
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8014)))))))))))))))))))
                   g7951)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x8017
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x8017))))
                    (g8016
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8018
                        #f
                        (letrec*
                         ((x-cnd8019
                           (letrec*
                            ((x8020
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x8020 e)))))
                         (if x-cnd8019
                           l
                           (letrec*
                            ((x8021
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x8021)))))))))
                   g8016)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8023
                        (letrec*
                         ((x8024
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x8025)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x8024)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x8023)))))
                   g8022)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8027
                        (letrec*
                         ((x8028
                           (letrec*
                            ((x8029
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x8029)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x8028)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x8027)))))
                   g8026)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8030
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g8030)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8031
                     (letrec*
                      ((x8033
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x8033))))
                    (g8032
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g8032)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8035
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8035))))
                   g8034)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((x8037
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x8037)))))
                   g8036)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8039
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8039
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x8040)))
                           #f))))
                      (letrec*
                       ((g8041
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g8041))))
                   g8038)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x8045)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x8044)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x8043)))))
                   g8042)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x-cnd8047
                        (letrec*
                         ((x8048 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x8048 c)))))
                      (if x-cnd8047
                        (letrec*
                         ((x8049 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x8049)))
                        #f))))
                   g8046)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x8052))))
                    (g8051
                     (letrec*
                      ((x-cnd8053
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8053
                        #f
                        (letrec*
                         ((x-cnd8054
                           (letrec*
                            ((x8055
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x8055 k)))))
                         (if x-cnd8054
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8056
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x8056)))))))))
                   g8051)))
               (not (lambda (x) (letrec* ((g8057 (if x #f #t))) g8057)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8058
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g8058)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8061
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x8061))))
                    (g8060
                     (letrec*
                      ((x-cnd8062
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8062
                        #f
                        (letrec*
                         ((x-cnd8063
                           (letrec*
                            ((x8064
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x8064 e)))))
                         (if x-cnd8063
                           l
                           (letrec*
                            ((x8065
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x8065)))))))))
                   g8060)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x8067
                        (letrec*
                         ((x8068
                           (letrec*
                            ((x8069
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x8069)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x8068)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x8067)))))
                   g8066)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8070
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x8072))))
                    (g8071
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8073
                             (letrec*
                              ((x-cnd8074
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8074
                                0
                                (letrec*
                                 ((x8075
                                   (letrec*
                                    ((x8076
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x8076)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x8075)))))))
                           g8073))))
                      (letrec*
                       ((g8077
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g8077))))
                   g8071)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x8081))))
                    (g8079
                     (letrec*
                      ((x8082
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x8082))))
                    (g8080
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8083
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8083))))
                   g8080)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8085
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x8085)))))
                   g8084)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8087
                        (letrec*
                         ((x8088
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x8088)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x8087)))))
                   g8086)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x8091))))
                    (g8090
                     (letrec*
                      ((x-cnd8092
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8092
                        #f
                        (letrec*
                         ((x-cnd8093
                           (letrec*
                            ((x8094
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x8094 k)))))
                         (if x-cnd8093
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8095
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x8095)))))))))
                   g8090)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8096
                     (letrec*
                      ((x8097
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x8097)))))
                   g8096)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((x8102
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x8102))))
                    (g8100
                     (letrec*
                      ((x8103
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x8103)))))
                   g8100)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8105
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8105))))
                   g8104)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x8109))))
                    (g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x8110))))
                    (g8108
                     (letrec*
                      ((x-cnd8111
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8111
                        #t
                        (letrec*
                         ((x-cnd8112
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8112
                           (letrec*
                            ((g8113
                              (letrec*
                               ((x8115
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x8115))))
                             (g8114
                              (letrec*
                               ((x8116
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x8116)))))
                            g8114)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g8108)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x8119))))
                    (g8118
                     (letrec*
                      ((x-cnd8120
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8120
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8118)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x8124))))
                    (g8122
                     (letrec*
                      ((x8125
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x8125))))
                    (g8123
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8126
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8126))))
                   g8123)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (letrec*
                         ((x8129
                           (letrec*
                            ((x8130
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x8130)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x8129)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (newline (lambda () (letrec* ((g8131 #f)) g8131)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x8134
                        (letrec*
                         ((x8135
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x8135))))
                       (x8133
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x8134 x8133)))))
                   g8132)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x8140))))
                    (g8137
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x8141))))
                    (g8138
                     (letrec*
                      ((x8142
                        (letrec*
                         ((x8143
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x8143)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x8142))))
                    (g8139
                     (letrec*
                      ((x-cnd8144
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8144
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8146
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x8145
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8146 x8145)))))))
                   g8139)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x-cnd8148
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8148
                        a
                        (letrec*
                         ((x8149
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8149)))))))
                   g8147)))
               (image
                (lambda ()
                  (letrec*
                   ((g8150
                     (begin
                       (write '(funapp 1661 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1661 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1661 62))
                          (display "\n")
                          '())))))
                   g8150)))
               (image?
                (lambda (image7551)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1666 39))
                          (display "\n")
                          (car image7551))))
                      (begin
                        (write '(funapp 1666 57))
                        (display "\n")
                        (eq?
                         x8152
                         (begin
                           (write '(funapp 1666 67))
                           (display "\n")
                           'image))))))
                   g8151)))
               (image/c
                (lambda (j7402 k7403 v7401)
                  (letrec*
                   ((g8153
                     (begin
                       (write '(funapp 1670 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1670 47))
                          (display "\n")
                          '())))))
                   g8153)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8154
                     (begin (write '(funapp 1671 57)) (display "\n") (image))))
                   g8154)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8155
                     (begin (write '(funapp 1672 60)) (display "\n") (image))))
                   g8155)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8156
                     (begin (write '(funapp 1674 54)) (display "\n") (image))))
                   g8156)))
               (posn
                (lambda (x7553 y7554)
                  (letrec*
                   ((g8157
                     (letrec*
                      ((x8158
                        (letrec*
                         ((x8159
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (orig-cons
                              y7554
                              (begin
                                (write '(funapp 1682 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (orig-cons x7553 x8159)))))
                      (begin
                        (write '(funapp 1684 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1684 33)) (display "\n") 'posn)
                         x8158)))))
                   g8157)))
               (posn?
                (lambda (posn7552)
                  (letrec*
                   ((g8160
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1690 39))
                          (display "\n")
                          (car posn7552))))
                      (begin
                        (write '(funapp 1690 56))
                        (display "\n")
                        (eq?
                         x8161
                         (begin
                           (write '(funapp 1690 66))
                           (display "\n")
                           'posn))))))
                   g8160)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x8163
                        (begin
                          (write '(funapp 1696 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1696 57))
                        (display "\n")
                        (orig-car x8163)))))
                   g8162)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x8165
                        (letrec*
                         ((x8166
                           (begin
                             (write '(funapp 1704 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1704 60))
                           (display "\n")
                           (orig-cdr x8166)))))
                      (begin
                        (write '(funapp 1705 23))
                        (display "\n")
                        (orig-car x8165)))))
                   g8164)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8167
                     (letrec*
                      ((x-cnd8168
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1714 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8169
                           (begin
                             (write '(funapp 1714 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1715 26))
                           (display "\n")
                           (= x8170 x8169)))))
                      (if x-cnd8168
                        (letrec*
                         ((x8172
                           (begin
                             (write '(funapp 1718 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8171
                           (begin
                             (write '(funapp 1718 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1719 26))
                           (display "\n")
                           (= x8172 x8171)))
                        #f))))
                   g8167)))
               (snake
                (lambda (dir7558 segs7559)
                  (letrec*
                   ((g8173
                     (letrec*
                      ((x8174
                        (letrec*
                         ((x8175
                           (begin
                             (write '(funapp 1729 34))
                             (display "\n")
                             (orig-cons
                              segs7559
                              (begin
                                (write '(funapp 1729 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1730 26))
                           (display "\n")
                           (orig-cons dir7558 x8175)))))
                      (begin
                        (write '(funapp 1731 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1731 33))
                           (display "\n")
                           'snake)
                         x8174)))))
                   g8173)))
               (snake?
                (lambda (snake7557)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((x8177
                        (begin
                          (write '(funapp 1737 39))
                          (display "\n")
                          (car snake7557))))
                      (begin
                        (write '(funapp 1737 57))
                        (display "\n")
                        (eq?
                         x8177
                         (begin
                           (write '(funapp 1737 67))
                           (display "\n")
                           'snake))))))
                   g8176)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8178
                     (letrec*
                      ((x8179
                        (begin
                          (write '(funapp 1743 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1743 58))
                        (display "\n")
                        (orig-car x8179)))))
                   g8178)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8180
                     (letrec*
                      ((x8181
                        (letrec*
                         ((x8182
                           (begin
                             (write '(funapp 1751 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1751 61))
                           (display "\n")
                           (orig-cdr x8182)))))
                      (begin
                        (write '(funapp 1752 23))
                        (display "\n")
                        (orig-car x8181)))))
                   g8180)))
               (world
                (lambda (snake7563 food7564)
                  (letrec*
                   ((g8183
                     (letrec*
                      ((x8184
                        (letrec*
                         ((x8185
                           (begin
                             (write '(funapp 1761 34))
                             (display "\n")
                             (orig-cons
                              food7564
                              (begin
                                (write '(funapp 1761 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1762 26))
                           (display "\n")
                           (orig-cons snake7563 x8185)))))
                      (begin
                        (write '(funapp 1763 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1763 33))
                           (display "\n")
                           'world)
                         x8184)))))
                   g8183)))
               (world?
                (lambda (world7562)
                  (letrec*
                   ((g8186
                     (letrec*
                      ((x8187
                        (begin
                          (write '(funapp 1769 39))
                          (display "\n")
                          (car world7562))))
                      (begin
                        (write '(funapp 1769 57))
                        (display "\n")
                        (eq?
                         x8187
                         (begin
                           (write '(funapp 1769 67))
                           (display "\n")
                           'world))))))
                   g8186)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((x8189
                        (begin
                          (write '(funapp 1775 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1775 58))
                        (display "\n")
                        (orig-car x8189)))))
                   g8188)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8190
                     (letrec*
                      ((x8191
                        (letrec*
                         ((x8192
                           (begin
                             (write '(funapp 1783 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1783 61))
                           (display "\n")
                           (orig-cdr x8192)))))
                      (begin
                        (write '(funapp 1784 23))
                        (display "\n")
                        (orig-car x8191)))))
                   g8190)))
               (DIR/C
                (lambda (g7408 g7409 g7410)
                  (letrec*
                   ((g8193
                     (letrec*
                      ((x-cnd8194
                        (begin
                          (write '(funapp 1792 25))
                          (display "\n")
                          ((lambda (v7407)
                             (letrec*
                              ((g8195
                                (letrec*
                                 ((x-cnd8196
                                   (begin
                                     (write '(funapp 1796 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1796 48))
                                        (display "\n")
                                        'up)
                                      v7407))))
                                 (if x-cnd8196
                                   #t
                                   (letrec*
                                    ((x-cnd8197
                                      (begin
                                        (write '(funapp 1800 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1800 51))
                                           (display "\n")
                                           'down)
                                         v7407))))
                                    (if x-cnd8197
                                      #t
                                      (letrec*
                                       ((x-cnd8198
                                         (begin
                                           (write '(funapp 1804 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1804 54))
                                              (display "\n")
                                              'left)
                                            v7407))))
                                       (if x-cnd8198
                                         #t
                                         (begin
                                           (write '(funapp 1807 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1807 44))
                                              (display "\n")
                                              'right)
                                            v7407))))))))))
                              g8195))
                           g7410))))
                      (if x-cnd8194
                        g7410
                        (begin
                          (write '(blame g7408 1812 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7408)))))))
                   g8193)))
               (POSN/C
                (lambda (j7412 k7413 v7411)
                  (letrec*
                   ((g8199
                     (letrec*
                      ((checked7414
                        (letrec*
                         ((x8200
                           (letrec*
                            ((x8201
                              (begin
                                (write '(funapp 1832 37))
                                (display "\n")
                                (orig-cdr v7411))))
                            (begin
                              (write '(funapp 1833 29))
                              (display "\n")
                              (orig-car x8201)))))
                         (begin
                           (write '(funapp 1834 26))
                           (display "\n")
                           (real?/c j7412 k7413 x8200)))))
                      (letrec*
                       ((g8202
                         (letrec*
                          ((checked7415
                            (letrec*
                             ((x8203
                               (letrec*
                                ((x8204
                                  (letrec*
                                   ((x8205
                                     (begin
                                       (write '(funapp 1844 44))
                                       (display "\n")
                                       (orig-cdr v7411))))
                                   (begin
                                     (write '(funapp 1845 36))
                                     (display "\n")
                                     (orig-cdr x8205)))))
                                (begin
                                  (write '(funapp 1846 33))
                                  (display "\n")
                                  (orig-car x8204)))))
                             (begin
                               (write '(funapp 1847 30))
                               (display "\n")
                               (real?/c j7412 k7413 x8203)))))
                          (letrec*
                           ((g8206
                             (letrec*
                              ((x8207
                                (letrec*
                                 ((x8208
                                   (begin
                                     (write '(funapp 1853 42))
                                     (display "\n")
                                     (cons
                                      checked7415
                                      (begin
                                        (write '(funapp 1853 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1854 34))
                                   (display "\n")
                                   (cons checked7414 x8208)))))
                              (begin
                                (write '(funapp 1855 31))
                                (display "\n")
                                (cons posn x8207)))))
                           g8206))))
                       g8202))))
                   g8199)))
               (SNAKE/C
                (lambda (j7418 k7419 v7417)
                  (letrec*
                   ((g8209
                     (letrec*
                      ((checked7420
                        (letrec*
                         ((x8210
                           (letrec*
                            ((x8211
                              (begin
                                (write '(funapp 1868 37))
                                (display "\n")
                                (orig-cdr v7417))))
                            (begin
                              (write '(funapp 1869 29))
                              (display "\n")
                              (orig-car x8211)))))
                         (begin
                           (write '(funapp 1870 26))
                           (display "\n")
                           (DIR/C j7418 k7419 x8210)))))
                      (letrec*
                       ((g8212
                         (letrec*
                          ((checked7421
                            (letrec*
                             ((x8216
                               (letrec*
                                ((x8217
                                  (begin
                                    (write '(funapp 1878 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1879 33))
                                  (display "\n")
                                  (and/c cons?/c x8217))))
                              (x8213
                               (letrec*
                                ((x8214
                                  (letrec*
                                   ((x8215
                                     (begin
                                       (write '(funapp 1884 44))
                                       (display "\n")
                                       (orig-cdr v7417))))
                                   (begin
                                     (write '(funapp 1885 36))
                                     (display "\n")
                                     (orig-cdr x8215)))))
                                (begin
                                  (write '(funapp 1886 33))
                                  (display "\n")
                                  (orig-car x8214)))))
                             (begin
                               (write '(funapp 1887 30))
                               (display "\n")
                               (x8216 j7418 k7419 x8213)))))
                          (letrec*
                           ((g8218
                             (letrec*
                              ((x8219
                                (letrec*
                                 ((x8220
                                   (begin
                                     (write '(funapp 1893 42))
                                     (display "\n")
                                     (cons
                                      checked7421
                                      (begin
                                        (write '(funapp 1893 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1894 34))
                                   (display "\n")
                                   (cons checked7420 x8220)))))
                              (begin
                                (write '(funapp 1895 31))
                                (display "\n")
                                (cons snake x8219)))))
                           g8218))))
                       g8212))))
                   g8209)))
               (WORLD/C
                (lambda (j7424 k7425 v7423)
                  (letrec*
                   ((g8221
                     (letrec*
                      ((checked7426
                        (letrec*
                         ((x8222
                           (letrec*
                            ((x8223
                              (begin
                                (write '(funapp 1908 37))
                                (display "\n")
                                (orig-cdr v7423))))
                            (begin
                              (write '(funapp 1909 29))
                              (display "\n")
                              (orig-car x8223)))))
                         (begin
                           (write '(funapp 1910 26))
                           (display "\n")
                           (SNAKE/C j7424 k7425 x8222)))))
                      (letrec*
                       ((g8224
                         (letrec*
                          ((checked7427
                            (letrec*
                             ((x8225
                               (letrec*
                                ((x8226
                                  (letrec*
                                   ((x8227
                                     (begin
                                       (write '(funapp 1920 44))
                                       (display "\n")
                                       (orig-cdr v7423))))
                                   (begin
                                     (write '(funapp 1921 36))
                                     (display "\n")
                                     (orig-cdr x8227)))))
                                (begin
                                  (write '(funapp 1922 33))
                                  (display "\n")
                                  (orig-car x8226)))))
                             (begin
                               (write '(funapp 1923 30))
                               (display "\n")
                               (POSN/C j7424 k7425 x8225)))))
                          (letrec*
                           ((g8228
                             (letrec*
                              ((x8229
                                (letrec*
                                 ((x8230
                                   (begin
                                     (write '(funapp 1929 42))
                                     (display "\n")
                                     (cons
                                      checked7427
                                      (begin
                                        (write '(funapp 1929 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1930 34))
                                   (display "\n")
                                   (cons checked7426 x8230)))))
                              (begin
                                (write '(funapp 1931 31))
                                (display "\n")
                                (cons world x8229)))))
                           g8228))))
                       g8224))))
                   g8221)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1938 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1939 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1941 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1942 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1943 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1945 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8232
                   (letrec*
                    ((x8233
                      (letrec*
                       ((x8234
                         (begin
                           (write '(funapp 1950 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1950 59))
                         (display "\n")
                         (cons x8234 empty)))))
                    (begin
                      (write '(funapp 1951 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1951 27)) (display "\n") 'right)
                       x8233))))
                  (x8231
                   (begin
                     (write '(funapp 1952 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1953 18))
                   (display "\n")
                   (world x8232 x8231))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((x8236
                        (letrec*
                         ((x8237
                           (begin
                             (write '(funapp 1960 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1960 61))
                           (display "\n")
                           (car x8237)))))
                      (begin
                        (write '(funapp 1961 23))
                        (display "\n")
                        (head-collide? x8236)))))
                   g8235)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((val7261
                        (letrec*
                         ((x8239
                           (begin
                             (write '(funapp 1968 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1968 63))
                           (display "\n")
                           (<= x8239 0)))))
                      (letrec*
                       ((g8240
                         (if val7261
                           val7261
                           (letrec*
                            ((val7262
                              (letrec*
                               ((x8241
                                 (begin
                                   (write '(funapp 1976 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1977 32))
                                 (display "\n")
                                 (>= x8241 BOARD-WIDTH)))))
                            (letrec*
                             ((g8242
                               (if val7262
                                 val7262
                                 (letrec*
                                  ((val7263
                                    (letrec*
                                     ((x8243
                                       (begin
                                         (write '(funapp 1985 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1986 38))
                                       (display "\n")
                                       (<= x8243 0)))))
                                  (letrec*
                                   ((g8244
                                     (if val7263
                                       val7263
                                       (letrec*
                                        ((x8245
                                          (begin
                                            (write '(funapp 1992 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1993 41))
                                          (display "\n")
                                          (>= x8245 BOARD-HEIGHT))))))
                                   g8244)))))
                             g8242)))))
                       g8240))))
                   g8238)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8246
                     (letrec*
                      ((x8249
                        (letrec*
                         ((x8250
                           (begin
                             (write '(funapp 2003 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2003 67))
                           (display "\n")
                           (car x8250))))
                       (x8247
                        (letrec*
                         ((x8248
                           (begin
                             (write '(funapp 2005 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2005 61))
                           (display "\n")
                           (cdr x8248)))))
                      (begin
                        (write '(funapp 2006 23))
                        (display "\n")
                        (segs-self-collide? x8249 x8247)))))
                   g8246)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8251
                     (letrec*
                      ((x-cnd8252
                        (begin
                          (write '(funapp 2013 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8252
                        (letrec* ((g8253 #f)) g8253)
                        (letrec*
                         ((g8254
                           (letrec*
                            ((x8257
                              (letrec*
                               ((x8258
                                 (begin
                                   (write '(funapp 2020 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2020 61))
                                 (display "\n")
                                 (posn=? x8258 h))))
                             (x8255
                              (letrec*
                               ((x8256
                                 (begin
                                   (write '(funapp 2023 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2024 32))
                                 (display "\n")
                                 (segs-self-collide? h x8256)))))
                            (begin
                              (write '(funapp 2025 29))
                              (display "\n")
                              (or x8257 x8255)))))
                         g8254)))))
                   g8251)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8259
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2033 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8260
                         (letrec*
                          ((x-cnd8261
                            (begin
                              (write '(funapp 2037 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8261
                            (letrec* ((g8262 empty)) g8262)
                            (letrec*
                             ((g8263
                               (letrec*
                                ((x8265
                                  (begin
                                    (write '(funapp 2043 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8264
                                  (begin
                                    (write '(funapp 2043 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2044 33))
                                  (display "\n")
                                  (cons x8265 x8264)))))
                             g8263)))))
                       g8260))))
                   g8259)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8266
                     (letrec*
                      ((x-cnd8267
                        (begin
                          (write '(funapp 2053 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2053 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8267
                        (letrec*
                         ((g8268
                           (letrec*
                            ((x8270
                              (letrec*
                               ((x8271
                                 (begin
                                   (write '(funapp 2059 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2059 63))
                                 (display "\n")
                                 (add1 x8271))))
                             (x8269
                              (begin
                                (write '(funapp 2060 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2061 29))
                              (display "\n")
                              (posn x8270 x8269)))))
                         g8268)
                        (letrec*
                         ((x-cnd8272
                           (begin
                             (write '(funapp 2064 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2064 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8272
                           (letrec*
                            ((g8273
                              (letrec*
                               ((x8275
                                 (letrec*
                                  ((x8276
                                    (begin
                                      (write '(funapp 2070 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2070 66))
                                    (display "\n")
                                    (sub1 x8276))))
                                (x8274
                                 (begin
                                   (write '(funapp 2071 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2072 32))
                                 (display "\n")
                                 (posn x8275 x8274)))))
                            g8273)
                           (letrec*
                            ((x-cnd8277
                              (begin
                                (write '(funapp 2075 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2075 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8277
                              (letrec*
                               ((g8278
                                 (letrec*
                                  ((x8281
                                    (begin
                                      (write '(funapp 2080 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8279
                                    (letrec*
                                     ((x8280
                                       (begin
                                         (write '(funapp 2083 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2084 38))
                                       (display "\n")
                                       (sub1 x8280)))))
                                  (begin
                                    (write '(funapp 2085 35))
                                    (display "\n")
                                    (posn x8281 x8279)))))
                               g8278)
                              (letrec*
                               ((g8282
                                 (letrec*
                                  ((x8285
                                    (begin
                                      (write '(funapp 2090 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8283
                                    (letrec*
                                     ((x8284
                                       (begin
                                         (write '(funapp 2093 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2094 38))
                                       (display "\n")
                                       (add1 x8284)))))
                                  (begin
                                    (write '(funapp 2095 35))
                                    (display "\n")
                                    (posn x8285 x8283)))))
                               g8282)))))))))
                   g8266)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8286
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2103 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8287
                         (letrec*
                          ((x8288
                            (letrec*
                             ((x8291
                               (letrec*
                                ((x8292
                                  (letrec*
                                   ((x8293
                                     (begin
                                       (write '(funapp 2113 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2114 36))
                                     (display "\n")
                                     (car x8293)))))
                                (begin
                                  (write '(funapp 2115 33))
                                  (display "\n")
                                  (next-head x8292 d))))
                              (x8289
                               (letrec*
                                ((x8290
                                  (begin
                                    (write '(funapp 2118 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2119 33))
                                  (display "\n")
                                  (cut-tail x8290)))))
                             (begin
                               (write '(funapp 2120 30))
                               (display "\n")
                               (cons x8291 x8289)))))
                          (begin
                            (write '(funapp 2121 27))
                            (display "\n")
                            (snake d x8288)))))
                       g8287))))
                   g8286)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8294
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2129 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8295
                         (letrec*
                          ((x8296
                            (letrec*
                             ((x8298
                               (letrec*
                                ((x8299
                                  (letrec*
                                   ((x8300
                                     (begin
                                       (write '(funapp 2139 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2140 36))
                                     (display "\n")
                                     (car x8300)))))
                                (begin
                                  (write '(funapp 2141 33))
                                  (display "\n")
                                  (next-head x8299 d))))
                              (x8297
                               (begin
                                 (write '(funapp 2142 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2143 30))
                               (display "\n")
                               (cons x8298 x8297)))))
                          (begin
                            (write '(funapp 2144 27))
                            (display "\n")
                            (snake d x8296)))))
                       g8295))))
                   g8294)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8301
                     (letrec*
                      ((x-cnd8302
                        (begin
                          (write '(funapp 2152 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8302
                        (letrec*
                         ((g8303
                           (begin
                             (write '(funapp 2154 42))
                             (display "\n")
                             (snake-eat w))))
                         g8303)
                        (letrec*
                         ((g8304
                           (letrec*
                            ((x8306
                              (letrec*
                               ((x8307
                                 (begin
                                   (write '(funapp 2160 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2161 32))
                                 (display "\n")
                                 (snake-slither x8307))))
                             (x8305
                              (begin
                                (write '(funapp 2162 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2163 29))
                              (display "\n")
                              (world x8306 x8305)))))
                         g8304)))))
                   g8301)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8308
                     (letrec*
                      ((x8312
                        (begin
                          (write '(funapp 2171 31))
                          (display "\n")
                          (world-food w)))
                       (x8309
                        (letrec*
                         ((x8310
                           (letrec*
                            ((x8311
                              (begin
                                (write '(funapp 2176 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2177 29))
                              (display "\n")
                              (snake-segs x8311)))))
                         (begin
                           (write '(funapp 2178 26))
                           (display "\n")
                           (car x8310)))))
                      (begin
                        (write '(funapp 2179 23))
                        (display "\n")
                        (posn=? x8312 x8309)))))
                   g8308)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((x8314
                        (begin
                          (write '(funapp 2185 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2185 58))
                        (display "\n")
                        (snake dir x8314)))))
                   g8313)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8315
                     (letrec*
                      ((x8317
                        (letrec*
                         ((x8318
                           (begin
                             (write '(funapp 2194 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2195 26))
                           (display "\n")
                           (snake-change-direction x8318 dir))))
                       (x8316
                        (begin
                          (write '(funapp 2196 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2197 23))
                        (display "\n")
                        (world x8317 x8316)))))
                   g8315)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8319
                     (letrec*
                      ((x8323
                        (letrec*
                         ((x8324
                           (begin
                             (write '(funapp 2205 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2205 60))
                           (display "\n")
                           (snake-grow x8324))))
                       (x8320
                        (letrec*
                         ((x8322
                           (begin
                             (write '(funapp 2208 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8321
                           (begin
                             (write '(funapp 2208 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2209 26))
                           (display "\n")
                           (posn x8322 x8321)))))
                      (begin
                        (write '(funapp 2210 23))
                        (display "\n")
                        (world x8323 x8320)))))
                   g8319)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((x-cnd8326
                        (begin
                          (write '(funapp 2217 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8326
                        (letrec*
                         ((g8327
                           (begin
                             (write '(funapp 2219 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2219 61))
                                (display "\n")
                                'up)))))
                         g8327)
                        (letrec*
                         ((x-cnd8328
                           (begin
                             (write '(funapp 2221 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8328
                           (letrec*
                            ((g8329
                              (begin
                                (write '(funapp 2223 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2223 64))
                                   (display "\n")
                                   'down)))))
                            g8329)
                           (letrec*
                            ((x-cnd8330
                              (begin
                                (write '(funapp 2225 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8330
                              (letrec*
                               ((g8331
                                 (begin
                                   (write '(funapp 2228 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2228 59))
                                      (display "\n")
                                      'left)))))
                               g8331)
                              (letrec*
                               ((x-cnd8332
                                 (begin
                                   (write '(funapp 2231 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8332
                                 (letrec*
                                  ((g8333
                                    (begin
                                      (write '(funapp 2234 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2234 62))
                                         (display "\n")
                                         'right)))))
                                  g8333)
                                 (letrec* ((g8334 w)) g8334)))))))))))
                   g8325)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8335
                     (letrec*
                      ((val7264
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 2245 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2246 26))
                           (display "\n")
                           (snake-wall-collide? x8336)))))
                      (letrec*
                       ((g8337
                         (if val7264
                           val7264
                           (letrec*
                            ((x8338
                              (begin
                                (write '(funapp 2252 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2253 29))
                              (display "\n")
                              (snake-self-collide? x8338))))))
                       g8337))))
                   g8335)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8339
                     (letrec*
                      ((x8342
                        (begin
                          (write '(funapp 2261 31))
                          (display "\n")
                          (world-snake w)))
                       (x8340
                        (letrec*
                         ((x8341
                           (begin
                             (write '(funapp 2264 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2265 26))
                           (display "\n")
                           (food+scene x8341 BACKGROUND)))))
                      (begin
                        (write '(funapp 2266 23))
                        (display "\n")
                        (snake+scene x8342 x8340)))))
                   g8339)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8343
                     (letrec*
                      ((x8345
                        (begin
                          (write '(funapp 2273 31))
                          (display "\n")
                          (posn-x f)))
                       (x8344
                        (begin
                          (write '(funapp 2273 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2274 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8345 x8344 scn)))))
                   g8343)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8346
                     (letrec*
                      ((x8349
                        (begin
                          (write '(funapp 2281 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8347
                        (letrec*
                         ((x8348
                           (begin
                             (write '(funapp 2284 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2285 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8348)))))
                      (begin
                        (write '(funapp 2286 23))
                        (display "\n")
                        (place-image img x8349 x8347 scn)))))
                   g8346)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8350
                     (letrec*
                      ((x8351
                        (begin
                          (write '(funapp 2293 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2294 23))
                        (display "\n")
                        (segments+scene x8351 scn)))))
                   g8350)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8352
                     (letrec*
                      ((x-cnd8353
                        (begin
                          (write '(funapp 2301 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8353
                        (letrec* ((g8354 scn)) g8354)
                        (letrec*
                         ((g8355
                           (letrec*
                            ((x8358
                              (begin
                                (write '(funapp 2307 37))
                                (display "\n")
                                (cdr segs)))
                             (x8356
                              (letrec*
                               ((x8357
                                 (begin
                                   (write '(funapp 2310 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2311 32))
                                 (display "\n")
                                 (segment+scene x8357 scn)))))
                            (begin
                              (write '(funapp 2312 29))
                              (display "\n")
                              (segments+scene x8358 x8356)))))
                         g8355)))))
                   g8352)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8359
                     (letrec*
                      ((x8361
                        (begin
                          (write '(funapp 2320 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8360
                        (begin
                          (write '(funapp 2320 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2321 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8361 x8360 scn)))))
                   g8359))))
              (letrec*
               ((g8362
                 (begin
                   (write '(funapp 2325 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2326 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8373
                          (letrec*
                           ((xj7429
                             (begin
                               (write '(funapp 2330 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2330 37))
                                  (display "\n")
                                  'module))))
                            (xk7430
                             (begin
                               (write '(funapp 2330 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2330 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8374
                              (begin
                                (write '(funapp 2333 27))
                                (display "\n")
                                ((lambda (j7433 k7434 f7435)
                                   (letrec*
                                    ((g8375
                                      (lambda (g7431 g7432)
                                        (letrec*
                                         ((g8376
                                           (letrec*
                                            ((x8377
                                              (letrec*
                                               ((x8379
                                                 (begin
                                                   (write '(funapp 2342 50))
                                                   (display "\n")
                                                   (POSN/C j7433 k7434 g7431)))
                                                (x8378
                                                 (begin
                                                   (write '(funapp 2343 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7433
                                                    k7434
                                                    g7432))))
                                               (begin
                                                 (write '(funapp 2344 42))
                                                 (display "\n")
                                                 (f7435 x8379 x8378)))))
                                            (begin
                                              (write '(funapp 2345 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7433
                                               k7434
                                               x8377)))))
                                         g8376))))
                                    g8375))
                                 xj7429
                                 xk7430
                                 posn=?))))
                            g8374)))
                         (x8368
                          (letrec*
                           ((x8369
                             (letrec*
                              ((x8372 (input))
                               (x8370
                                (letrec*
                                 ((x8371 (input)))
                                 (begin
                                   (write '(funapp 2358 56))
                                   (display "\n")
                                   (cons
                                    x8371
                                    (begin
                                      (write '(funapp 2358 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2359 27))
                                (display "\n")
                                (cons x8372 x8370)))))
                           (begin
                             (write '(funapp 2360 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2360 29))
                                (display "\n")
                                'posn)
                              x8369))))
                         (x8363
                          (letrec*
                           ((x8364
                             (letrec*
                              ((x8367 (input))
                               (x8365
                                (letrec*
                                 ((x8366 (input)))
                                 (begin
                                   (write '(funapp 2367 56))
                                   (display "\n")
                                   (cons
                                    x8366
                                    (begin
                                      (write '(funapp 2367 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2368 27))
                                (display "\n")
                                (cons x8367 x8365)))))
                           (begin
                             (write '(funapp 2369 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2369 29))
                                (display "\n")
                                'posn)
                              x8364)))))
                        (begin
                          (write '(funapp 2370 21))
                          (display "\n")
                          (x8373 x8368 x8363)))
                       (letrec*
                        ((xj7436
                          (begin
                            (write '(funapp 2372 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2372 34))
                               (display "\n")
                               'module))))
                         (xk7437
                          (begin
                            (write '(funapp 2372 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2372 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8380
                           (begin
                             (write '(funapp 2373 38))
                             (display "\n")
                             (WORLD/C xj7436 xk7437 WORLD))))
                         g8380))
                       (letrec*
                        ((xj7438
                          (begin
                            (write '(funapp 2375 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2375 34))
                               (display "\n")
                               'module))))
                         (xk7439
                          (begin
                            (write '(funapp 2375 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2375 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8381
                           (begin
                             (write '(funapp 2377 30))
                             (display "\n")
                             (image/c xj7438 xk7439 BACKGROUND))))
                         g8381))
                       (letrec*
                        ((xj7440
                          (begin
                            (write '(funapp 2380 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2380 34))
                               (display "\n")
                               'module))))
                         (xk7441
                          (begin
                            (write '(funapp 2380 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2380 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8382
                           (begin
                             (write '(funapp 2382 30))
                             (display "\n")
                             (image/c xj7440 xk7441 FOOD-IMAGE))))
                         g8382))
                       (letrec*
                        ((xj7442
                          (begin
                            (write '(funapp 2385 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2385 34))
                               (display "\n")
                               'module))))
                         (xk7443
                          (begin
                            (write '(funapp 2385 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2385 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8383
                           (begin
                             (write '(funapp 2387 30))
                             (display "\n")
                             (image/c xj7442 xk7443 SEGMENT-IMAGE))))
                         g8383))
                       (letrec*
                        ((xj7444
                          (begin
                            (write '(funapp 2390 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2390 34))
                               (display "\n")
                               'module))))
                         (xk7445
                          (begin
                            (write '(funapp 2390 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2390 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8384
                           (begin
                             (write '(funapp 2392 30))
                             (display "\n")
                             (real?/c xj7444 xk7445 GRID-SIZE))))
                         g8384))
                       (letrec*
                        ((xj7446
                          (begin
                            (write '(funapp 2395 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2395 34))
                               (display "\n")
                               'module))))
                         (xk7447
                          (begin
                            (write '(funapp 2395 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2395 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8385
                           (begin
                             (write '(funapp 2397 30))
                             (display "\n")
                             (real?/c xj7446 xk7447 BOARD-HEIGHT-PIXELS))))
                         g8385))
                       (letrec*
                        ((xj7448
                          (begin
                            (write '(funapp 2400 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2400 34))
                               (display "\n")
                               'module))))
                         (xk7449
                          (begin
                            (write '(funapp 2400 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2400 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8386
                           (begin
                             (write '(funapp 2402 30))
                             (display "\n")
                             (real?/c xj7448 xk7449 BOARD-WIDTH))))
                         g8386))
                       (letrec*
                        ((xj7450
                          (begin
                            (write '(funapp 2405 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2405 34))
                               (display "\n")
                               'module))))
                         (xk7451
                          (begin
                            (write '(funapp 2405 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2405 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8387
                           (begin
                             (write '(funapp 2407 30))
                             (display "\n")
                             (real?/c xj7450 xk7451 BOARD-HEIGHT))))
                         g8387))
                       (letrec*
                        ((x8393
                          (letrec*
                           ((xj7452
                             (begin
                               (write '(funapp 2412 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2412 37))
                                  (display "\n")
                                  'module))))
                            (xk7453
                             (begin
                               (write '(funapp 2412 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2412 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8394
                              (begin
                                (write '(funapp 2415 27))
                                (display "\n")
                                ((lambda (j7455 k7456 f7457)
                                   (letrec*
                                    ((g8395
                                      (lambda (g7454)
                                        (letrec*
                                         ((g8396
                                           (letrec*
                                            ((x8397
                                              (letrec*
                                               ((x8398
                                                 (begin
                                                   (write '(funapp 2424 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7455
                                                    k7456
                                                    g7454))))
                                               (begin
                                                 (write '(funapp 2425 42))
                                                 (display "\n")
                                                 (f7457 x8398)))))
                                            (begin
                                              (write '(funapp 2426 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7455
                                               k7456
                                               x8397)))))
                                         g8396))))
                                    g8395))
                                 xj7452
                                 xk7453
                                 snake-wall-collide?))))
                            g8394)))
                         (x8388
                          (letrec*
                           ((x8389
                             (letrec*
                              ((x8392 (input))
                               (x8390
                                (letrec*
                                 ((x8391 (input)))
                                 (begin
                                   (write '(funapp 2439 56))
                                   (display "\n")
                                   (cons
                                    x8391
                                    (begin
                                      (write '(funapp 2439 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2440 27))
                                (display "\n")
                                (cons x8392 x8390)))))
                           (begin
                             (write '(funapp 2441 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2441 29))
                                (display "\n")
                                'snake)
                              x8389)))))
                        (begin
                          (write '(funapp 2442 21))
                          (display "\n")
                          (x8393 x8388)))
                       (letrec*
                        ((x8404
                          (letrec*
                           ((xj7458
                             (begin
                               (write '(funapp 2446 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2446 37))
                                  (display "\n")
                                  'module))))
                            (xk7459
                             (begin
                               (write '(funapp 2446 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2446 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8405
                              (begin
                                (write '(funapp 2449 27))
                                (display "\n")
                                ((lambda (j7461 k7462 f7463)
                                   (letrec*
                                    ((g8406
                                      (lambda (g7460)
                                        (letrec*
                                         ((g8407
                                           (letrec*
                                            ((x8408
                                              (letrec*
                                               ((x8409
                                                 (begin
                                                   (write '(funapp 2458 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7461
                                                    k7462
                                                    g7460))))
                                               (begin
                                                 (write '(funapp 2459 42))
                                                 (display "\n")
                                                 (f7463 x8409)))))
                                            (begin
                                              (write '(funapp 2460 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7461
                                               k7462
                                               x8408)))))
                                         g8407))))
                                    g8406))
                                 xj7458
                                 xk7459
                                 snake-self-collide?))))
                            g8405)))
                         (x8399
                          (letrec*
                           ((x8400
                             (letrec*
                              ((x8403 (input))
                               (x8401
                                (letrec*
                                 ((x8402 (input)))
                                 (begin
                                   (write '(funapp 2473 56))
                                   (display "\n")
                                   (cons
                                    x8402
                                    (begin
                                      (write '(funapp 2473 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2474 27))
                                (display "\n")
                                (cons x8403 x8401)))))
                           (begin
                             (write '(funapp 2475 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2475 29))
                                (display "\n")
                                'snake)
                              x8400)))))
                        (begin
                          (write '(funapp 2476 21))
                          (display "\n")
                          (x8404 x8399)))
                       (letrec*
                        ((x8411
                          (letrec*
                           ((xj7464
                             (begin
                               (write '(funapp 2480 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2480 37))
                                  (display "\n")
                                  'module))))
                            (xk7465
                             (begin
                               (write '(funapp 2480 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2480 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8412
                              (begin
                                (write '(funapp 2483 27))
                                (display "\n")
                                ((lambda (j7467 k7468 f7469)
                                   (letrec*
                                    ((g8413
                                      (lambda (g7466)
                                        (letrec*
                                         ((g8414
                                           (letrec*
                                            ((x8419
                                              (begin
                                                (write '(funapp 2490 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8415
                                              (letrec*
                                               ((x8416
                                                 (letrec*
                                                  ((x8417
                                                    (letrec*
                                                     ((x8418
                                                       (begin
                                                         (write
                                                          '(funapp 2497 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2498 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8418)))))
                                                  (begin
                                                    (write '(funapp 2499 45))
                                                    (display "\n")
                                                    (x8417
                                                     j7467
                                                     k7468
                                                     g7466)))))
                                               (begin
                                                 (write '(funapp 2500 42))
                                                 (display "\n")
                                                 (f7469 x8416)))))
                                            (begin
                                              (write '(funapp 2501 39))
                                              (display "\n")
                                              (x8419 j7467 k7468 x8415)))))
                                         g8414))))
                                    g8413))
                                 xj7464
                                 xk7465
                                 cut-tail))))
                            g8412)))
                         (x8410 (input)))
                        (begin
                          (write '(funapp 2509 21))
                          (display "\n")
                          (x8411 x8410)))
                       (letrec*
                        ((x8425
                          (letrec*
                           ((xj7470
                             (begin
                               (write '(funapp 2513 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2513 37))
                                  (display "\n")
                                  'module))))
                            (xk7471
                             (begin
                               (write '(funapp 2513 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2513 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8426
                              (begin
                                (write '(funapp 2516 27))
                                (display "\n")
                                ((lambda (j7473 k7474 f7475)
                                   (letrec*
                                    ((g8427
                                      (lambda (g7472)
                                        (letrec*
                                         ((g8428
                                           (letrec*
                                            ((x8429
                                              (letrec*
                                               ((x8430
                                                 (begin
                                                   (write '(funapp 2525 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7473
                                                    k7474
                                                    g7472))))
                                               (begin
                                                 (write '(funapp 2526 42))
                                                 (display "\n")
                                                 (f7475 x8430)))))
                                            (begin
                                              (write '(funapp 2527 39))
                                              (display "\n")
                                              (SNAKE/C j7473 k7474 x8429)))))
                                         g8428))))
                                    g8427))
                                 xj7470
                                 xk7471
                                 snake-slither))))
                            g8426)))
                         (x8420
                          (letrec*
                           ((x8421
                             (letrec*
                              ((x8424 (input))
                               (x8422
                                (letrec*
                                 ((x8423 (input)))
                                 (begin
                                   (write '(funapp 2540 56))
                                   (display "\n")
                                   (cons
                                    x8423
                                    (begin
                                      (write '(funapp 2540 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2541 27))
                                (display "\n")
                                (cons x8424 x8422)))))
                           (begin
                             (write '(funapp 2542 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2542 29))
                                (display "\n")
                                'snake)
                              x8421)))))
                        (begin
                          (write '(funapp 2543 21))
                          (display "\n")
                          (x8425 x8420)))
                       (letrec*
                        ((x8436
                          (letrec*
                           ((xj7476
                             (begin
                               (write '(funapp 2547 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2547 37))
                                  (display "\n")
                                  'module))))
                            (xk7477
                             (begin
                               (write '(funapp 2547 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2547 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8437
                              (begin
                                (write '(funapp 2550 27))
                                (display "\n")
                                ((lambda (j7479 k7480 f7481)
                                   (letrec*
                                    ((g8438
                                      (lambda (g7478)
                                        (letrec*
                                         ((g8439
                                           (letrec*
                                            ((x8440
                                              (letrec*
                                               ((x8441
                                                 (begin
                                                   (write '(funapp 2559 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7479
                                                    k7480
                                                    g7478))))
                                               (begin
                                                 (write '(funapp 2560 42))
                                                 (display "\n")
                                                 (f7481 x8441)))))
                                            (begin
                                              (write '(funapp 2561 39))
                                              (display "\n")
                                              (SNAKE/C j7479 k7480 x8440)))))
                                         g8439))))
                                    g8438))
                                 xj7476
                                 xk7477
                                 snake-grow))))
                            g8437)))
                         (x8431
                          (letrec*
                           ((x8432
                             (letrec*
                              ((x8435 (input))
                               (x8433
                                (letrec*
                                 ((x8434 (input)))
                                 (begin
                                   (write '(funapp 2574 56))
                                   (display "\n")
                                   (cons
                                    x8434
                                    (begin
                                      (write '(funapp 2574 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2575 27))
                                (display "\n")
                                (cons x8435 x8433)))))
                           (begin
                             (write '(funapp 2576 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2576 29))
                                (display "\n")
                                'snake)
                              x8432)))))
                        (begin
                          (write '(funapp 2577 21))
                          (display "\n")
                          (x8436 x8431)))
                       (letrec*
                        ((x8456
                          (letrec*
                           ((xj7482
                             (begin
                               (write '(funapp 2581 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2581 37))
                                  (display "\n")
                                  'module))))
                            (xk7483
                             (begin
                               (write '(funapp 2581 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2581 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8457
                              (begin
                                (write '(funapp 2584 27))
                                (display "\n")
                                ((lambda (j7486 k7487 f7488)
                                   (letrec*
                                    ((g8458
                                      (lambda (g7484 g7485)
                                        (letrec*
                                         ((g8459
                                           (letrec*
                                            ((x8460
                                              (letrec*
                                               ((x8462
                                                 (begin
                                                   (write '(funapp 2593 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7486
                                                    k7487
                                                    g7484)))
                                                (x8461
                                                 (begin
                                                   (write '(funapp 2594 50))
                                                   (display "\n")
                                                   (DIR/C j7486 k7487 g7485))))
                                               (begin
                                                 (write '(funapp 2595 42))
                                                 (display "\n")
                                                 (f7488 x8462 x8461)))))
                                            (begin
                                              (write '(funapp 2596 39))
                                              (display "\n")
                                              (WORLD/C j7486 k7487 x8460)))))
                                         g8459))))
                                    g8458))
                                 xj7482
                                 xk7483
                                 world-change-dir))))
                            g8457)))
                         (x8443
                          (letrec*
                           ((x8444
                             (letrec*
                              ((x8451
                                (letrec*
                                 ((x8452
                                   (letrec*
                                    ((x8455 (input))
                                     (x8453
                                      (letrec*
                                       ((x8454 (input)))
                                       (begin
                                         (write '(funapp 2615 36))
                                         (display "\n")
                                         (cons
                                          x8454
                                          (begin
                                            (write '(funapp 2615 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2616 33))
                                      (display "\n")
                                      (cons x8455 x8453)))))
                                 (begin
                                   (write '(funapp 2617 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2617 35))
                                      (display "\n")
                                      'snake)
                                    x8452))))
                               (x8445
                                (letrec*
                                 ((x8446
                                   (letrec*
                                    ((x8447
                                      (letrec*
                                       ((x8450 (input))
                                        (x8448
                                         (letrec*
                                          ((x8449 (input)))
                                          (begin
                                            (write '(funapp 2628 39))
                                            (display "\n")
                                            (cons
                                             x8449
                                             (begin
                                               (write '(funapp 2628 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2629 36))
                                         (display "\n")
                                         (cons x8450 x8448)))))
                                    (begin
                                      (write '(funapp 2630 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2630 38))
                                         (display "\n")
                                         'posn)
                                       x8447)))))
                                 (begin
                                   (write '(funapp 2631 30))
                                   (display "\n")
                                   (cons
                                    x8446
                                    (begin
                                      (write '(funapp 2631 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2632 27))
                                (display "\n")
                                (cons x8451 x8445)))))
                           (begin
                             (write '(funapp 2633 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2633 29))
                                (display "\n")
                                'world)
                              x8444))))
                         (x8442 (input)))
                        (begin
                          (write '(funapp 2635 21))
                          (display "\n")
                          (x8456 x8443 x8442)))
                       (letrec*
                        ((x8476
                          (letrec*
                           ((xj7489
                             (begin
                               (write '(funapp 2639 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2639 37))
                                  (display "\n")
                                  'module))))
                            (xk7490
                             (begin
                               (write '(funapp 2639 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2639 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8477
                              (begin
                                (write '(funapp 2642 27))
                                (display "\n")
                                ((lambda (j7492 k7493 f7494)
                                   (letrec*
                                    ((g8478
                                      (lambda (g7491)
                                        (letrec*
                                         ((g8479
                                           (letrec*
                                            ((x8480
                                              (letrec*
                                               ((x8481
                                                 (begin
                                                   (write '(funapp 2651 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7492
                                                    k7493
                                                    g7491))))
                                               (begin
                                                 (write '(funapp 2652 42))
                                                 (display "\n")
                                                 (f7494 x8481)))))
                                            (begin
                                              (write '(funapp 2653 39))
                                              (display "\n")
                                              (WORLD/C j7492 k7493 x8480)))))
                                         g8479))))
                                    g8478))
                                 xj7489
                                 xk7490
                                 world->world))))
                            g8477)))
                         (x8463
                          (letrec*
                           ((x8464
                             (letrec*
                              ((x8471
                                (letrec*
                                 ((x8472
                                   (letrec*
                                    ((x8475 (input))
                                     (x8473
                                      (letrec*
                                       ((x8474 (input)))
                                       (begin
                                         (write '(funapp 2672 36))
                                         (display "\n")
                                         (cons
                                          x8474
                                          (begin
                                            (write '(funapp 2672 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2673 33))
                                      (display "\n")
                                      (cons x8475 x8473)))))
                                 (begin
                                   (write '(funapp 2674 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2674 35))
                                      (display "\n")
                                      'snake)
                                    x8472))))
                               (x8465
                                (letrec*
                                 ((x8466
                                   (letrec*
                                    ((x8467
                                      (letrec*
                                       ((x8470 (input))
                                        (x8468
                                         (letrec*
                                          ((x8469 (input)))
                                          (begin
                                            (write '(funapp 2685 39))
                                            (display "\n")
                                            (cons
                                             x8469
                                             (begin
                                               (write '(funapp 2685 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2686 36))
                                         (display "\n")
                                         (cons x8470 x8468)))))
                                    (begin
                                      (write '(funapp 2687 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2687 38))
                                         (display "\n")
                                         'posn)
                                       x8467)))))
                                 (begin
                                   (write '(funapp 2688 30))
                                   (display "\n")
                                   (cons
                                    x8466
                                    (begin
                                      (write '(funapp 2688 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2689 27))
                                (display "\n")
                                (cons x8471 x8465)))))
                           (begin
                             (write '(funapp 2690 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2690 29))
                                (display "\n")
                                'world)
                              x8464)))))
                        (begin
                          (write '(funapp 2691 21))
                          (display "\n")
                          (x8476 x8463)))
                       (letrec*
                        ((x8496
                          (letrec*
                           ((xj7495
                             (begin
                               (write '(funapp 2695 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2695 37))
                                  (display "\n")
                                  'module))))
                            (xk7496
                             (begin
                               (write '(funapp 2695 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2695 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8497
                              (begin
                                (write '(funapp 2698 27))
                                (display "\n")
                                ((lambda (j7499 k7500 f7501)
                                   (letrec*
                                    ((g8498
                                      (lambda (g7497 g7498)
                                        (letrec*
                                         ((g8499
                                           (letrec*
                                            ((x8500
                                              (letrec*
                                               ((x8502
                                                 (begin
                                                   (write '(funapp 2707 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7499
                                                    k7500
                                                    g7497)))
                                                (x8501
                                                 (begin
                                                   (write '(funapp 2709 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7499
                                                    k7500
                                                    g7498))))
                                               (begin
                                                 (write '(funapp 2710 42))
                                                 (display "\n")
                                                 (f7501 x8502 x8501)))))
                                            (begin
                                              (write '(funapp 2711 39))
                                              (display "\n")
                                              (WORLD/C j7499 k7500 x8500)))))
                                         g8499))))
                                    g8498))
                                 xj7495
                                 xk7496
                                 handle-key))))
                            g8497)))
                         (x8483
                          (letrec*
                           ((x8484
                             (letrec*
                              ((x8491
                                (letrec*
                                 ((x8492
                                   (letrec*
                                    ((x8495 (input))
                                     (x8493
                                      (letrec*
                                       ((x8494 (input)))
                                       (begin
                                         (write '(funapp 2730 36))
                                         (display "\n")
                                         (cons
                                          x8494
                                          (begin
                                            (write '(funapp 2730 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2731 33))
                                      (display "\n")
                                      (cons x8495 x8493)))))
                                 (begin
                                   (write '(funapp 2732 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2732 35))
                                      (display "\n")
                                      'snake)
                                    x8492))))
                               (x8485
                                (letrec*
                                 ((x8486
                                   (letrec*
                                    ((x8487
                                      (letrec*
                                       ((x8490 (input))
                                        (x8488
                                         (letrec*
                                          ((x8489 (input)))
                                          (begin
                                            (write '(funapp 2743 39))
                                            (display "\n")
                                            (cons
                                             x8489
                                             (begin
                                               (write '(funapp 2743 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2744 36))
                                         (display "\n")
                                         (cons x8490 x8488)))))
                                    (begin
                                      (write '(funapp 2745 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2745 38))
                                         (display "\n")
                                         'posn)
                                       x8487)))))
                                 (begin
                                   (write '(funapp 2746 30))
                                   (display "\n")
                                   (cons
                                    x8486
                                    (begin
                                      (write '(funapp 2746 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2747 27))
                                (display "\n")
                                (cons x8491 x8485)))))
                           (begin
                             (write '(funapp 2748 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2748 29))
                                (display "\n")
                                'world)
                              x8484))))
                         (x8482 (input)))
                        (begin
                          (write '(funapp 2750 21))
                          (display "\n")
                          (x8496 x8483 x8482)))
                       (letrec*
                        ((x8516
                          (letrec*
                           ((xj7502
                             (begin
                               (write '(funapp 2754 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2754 37))
                                  (display "\n")
                                  'module))))
                            (xk7503
                             (begin
                               (write '(funapp 2754 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2754 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8517
                              (begin
                                (write '(funapp 2757 27))
                                (display "\n")
                                ((lambda (j7505 k7506 f7507)
                                   (letrec*
                                    ((g8518
                                      (lambda (g7504)
                                        (letrec*
                                         ((g8519
                                           (letrec*
                                            ((x8520
                                              (letrec*
                                               ((x8521
                                                 (begin
                                                   (write '(funapp 2766 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7505
                                                    k7506
                                                    g7504))))
                                               (begin
                                                 (write '(funapp 2767 42))
                                                 (display "\n")
                                                 (f7507 x8521)))))
                                            (begin
                                              (write '(funapp 2768 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7505
                                               k7506
                                               x8520)))))
                                         g8519))))
                                    g8518))
                                 xj7502
                                 xk7503
                                 game-over?))))
                            g8517)))
                         (x8503
                          (letrec*
                           ((x8504
                             (letrec*
                              ((x8511
                                (letrec*
                                 ((x8512
                                   (letrec*
                                    ((x8515 (input))
                                     (x8513
                                      (letrec*
                                       ((x8514 (input)))
                                       (begin
                                         (write '(funapp 2787 36))
                                         (display "\n")
                                         (cons
                                          x8514
                                          (begin
                                            (write '(funapp 2787 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2788 33))
                                      (display "\n")
                                      (cons x8515 x8513)))))
                                 (begin
                                   (write '(funapp 2789 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2789 35))
                                      (display "\n")
                                      'snake)
                                    x8512))))
                               (x8505
                                (letrec*
                                 ((x8506
                                   (letrec*
                                    ((x8507
                                      (letrec*
                                       ((x8510 (input))
                                        (x8508
                                         (letrec*
                                          ((x8509 (input)))
                                          (begin
                                            (write '(funapp 2800 39))
                                            (display "\n")
                                            (cons
                                             x8509
                                             (begin
                                               (write '(funapp 2800 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2801 36))
                                         (display "\n")
                                         (cons x8510 x8508)))))
                                    (begin
                                      (write '(funapp 2802 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2802 38))
                                         (display "\n")
                                         'posn)
                                       x8507)))))
                                 (begin
                                   (write '(funapp 2803 30))
                                   (display "\n")
                                   (cons
                                    x8506
                                    (begin
                                      (write '(funapp 2803 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2804 27))
                                (display "\n")
                                (cons x8511 x8505)))))
                           (begin
                             (write '(funapp 2805 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2805 29))
                                (display "\n")
                                'world)
                              x8504)))))
                        (begin
                          (write '(funapp 2806 21))
                          (display "\n")
                          (x8516 x8503)))
                       (letrec*
                        ((x8535
                          (letrec*
                           ((xj7508
                             (begin
                               (write '(funapp 2810 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2810 37))
                                  (display "\n")
                                  'module))))
                            (xk7509
                             (begin
                               (write '(funapp 2810 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2810 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8536
                              (begin
                                (write '(funapp 2813 27))
                                (display "\n")
                                ((lambda (j7511 k7512 f7513)
                                   (letrec*
                                    ((g8537
                                      (lambda (g7510)
                                        (letrec*
                                         ((g8538
                                           (letrec*
                                            ((x8539
                                              (letrec*
                                               ((x8540
                                                 (begin
                                                   (write '(funapp 2822 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7511
                                                    k7512
                                                    g7510))))
                                               (begin
                                                 (write '(funapp 2823 42))
                                                 (display "\n")
                                                 (f7513 x8540)))))
                                            (begin
                                              (write '(funapp 2824 39))
                                              (display "\n")
                                              (image/c j7511 k7512 x8539)))))
                                         g8538))))
                                    g8537))
                                 xj7508
                                 xk7509
                                 world->scene))))
                            g8536)))
                         (x8522
                          (letrec*
                           ((x8523
                             (letrec*
                              ((x8530
                                (letrec*
                                 ((x8531
                                   (letrec*
                                    ((x8534 (input))
                                     (x8532
                                      (letrec*
                                       ((x8533 (input)))
                                       (begin
                                         (write '(funapp 2843 36))
                                         (display "\n")
                                         (cons
                                          x8533
                                          (begin
                                            (write '(funapp 2843 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2844 33))
                                      (display "\n")
                                      (cons x8534 x8532)))))
                                 (begin
                                   (write '(funapp 2845 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2845 35))
                                      (display "\n")
                                      'snake)
                                    x8531))))
                               (x8524
                                (letrec*
                                 ((x8525
                                   (letrec*
                                    ((x8526
                                      (letrec*
                                       ((x8529 (input))
                                        (x8527
                                         (letrec*
                                          ((x8528 (input)))
                                          (begin
                                            (write '(funapp 2856 39))
                                            (display "\n")
                                            (cons
                                             x8528
                                             (begin
                                               (write '(funapp 2856 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2857 36))
                                         (display "\n")
                                         (cons x8529 x8527)))))
                                    (begin
                                      (write '(funapp 2858 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2858 38))
                                         (display "\n")
                                         'posn)
                                       x8526)))))
                                 (begin
                                   (write '(funapp 2859 30))
                                   (display "\n")
                                   (cons
                                    x8525
                                    (begin
                                      (write '(funapp 2859 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2860 27))
                                (display "\n")
                                (cons x8530 x8524)))))
                           (begin
                             (write '(funapp 2861 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2861 29))
                                (display "\n")
                                'world)
                              x8523)))))
                        (begin
                          (write '(funapp 2862 21))
                          (display "\n")
                          (x8535 x8522)))
                       (letrec*
                        ((x8547
                          (letrec*
                           ((xj7514
                             (begin
                               (write '(funapp 2866 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2866 37))
                                  (display "\n")
                                  'module))))
                            (xk7515
                             (begin
                               (write '(funapp 2866 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2866 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8548
                              (begin
                                (write '(funapp 2869 27))
                                (display "\n")
                                ((lambda (j7518 k7519 f7520)
                                   (letrec*
                                    ((g8549
                                      (lambda (g7516 g7517)
                                        (letrec*
                                         ((g8550
                                           (letrec*
                                            ((x8551
                                              (letrec*
                                               ((x8553
                                                 (begin
                                                   (write '(funapp 2878 50))
                                                   (display "\n")
                                                   (POSN/C j7518 k7519 g7516)))
                                                (x8552
                                                 (begin
                                                   (write '(funapp 2879 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7518
                                                    k7519
                                                    g7517))))
                                               (begin
                                                 (write '(funapp 2880 42))
                                                 (display "\n")
                                                 (f7520 x8553 x8552)))))
                                            (begin
                                              (write '(funapp 2881 39))
                                              (display "\n")
                                              (image/c j7518 k7519 x8551)))))
                                         g8550))))
                                    g8549))
                                 xj7514
                                 xk7515
                                 food+scene))))
                            g8548)))
                         (x8542
                          (letrec*
                           ((x8543
                             (letrec*
                              ((x8546 (input))
                               (x8544
                                (letrec*
                                 ((x8545 (input)))
                                 (begin
                                   (write '(funapp 2894 56))
                                   (display "\n")
                                   (cons
                                    x8545
                                    (begin
                                      (write '(funapp 2894 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2895 27))
                                (display "\n")
                                (cons x8546 x8544)))))
                           (begin
                             (write '(funapp 2896 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2896 29))
                                (display "\n")
                                'posn)
                              x8543))))
                         (x8541
                          (begin
                            (write '(funapp 2897 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2897 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2897 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2898 21))
                          (display "\n")
                          (x8547 x8542 x8541)))
                       (letrec*
                        ((x8558
                          (letrec*
                           ((xj7521
                             (begin
                               (write '(funapp 2902 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2902 37))
                                  (display "\n")
                                  'module))))
                            (xk7522
                             (begin
                               (write '(funapp 2902 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2902 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8559
                              (begin
                                (write '(funapp 2905 27))
                                (display "\n")
                                ((lambda (j7527 k7528 f7529)
                                   (letrec*
                                    ((g8560
                                      (lambda (g7523 g7524 g7525 g7526)
                                        (letrec*
                                         ((g8561
                                           (letrec*
                                            ((x8562
                                              (letrec*
                                               ((x8566
                                                 (begin
                                                   (write '(funapp 2914 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7527
                                                    k7528
                                                    g7523)))
                                                (x8565
                                                 (begin
                                                   (write '(funapp 2915 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7527
                                                    k7528
                                                    g7524)))
                                                (x8564
                                                 (begin
                                                   (write '(funapp 2916 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7527
                                                    k7528
                                                    g7525)))
                                                (x8563
                                                 (begin
                                                   (write '(funapp 2917 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7527
                                                    k7528
                                                    g7526))))
                                               (begin
                                                 (write '(funapp 2918 42))
                                                 (display "\n")
                                                 (f7529
                                                  x8566
                                                  x8565
                                                  x8564
                                                  x8563)))))
                                            (begin
                                              (write '(funapp 2919 39))
                                              (display "\n")
                                              (image/c j7527 k7528 x8562)))))
                                         g8561))))
                                    g8560))
                                 xj7521
                                 xk7522
                                 place-image-on-grid))))
                            g8559)))
                         (x8557
                          (begin
                            (write '(funapp 2926 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2926 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2926 41))
                               (display "\n")
                               '()))))
                         (x8556 (input))
                         (x8555 (input))
                         (x8554
                          (begin
                            (write '(funapp 2929 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2929 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2929 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2930 21))
                          (display "\n")
                          (x8558 x8557 x8556 x8555 x8554)))
                       (letrec*
                        ((x8573
                          (letrec*
                           ((xj7530
                             (begin
                               (write '(funapp 2934 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2934 37))
                                  (display "\n")
                                  'module))))
                            (xk7531
                             (begin
                               (write '(funapp 2934 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2934 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8574
                              (begin
                                (write '(funapp 2937 27))
                                (display "\n")
                                ((lambda (j7534 k7535 f7536)
                                   (letrec*
                                    ((g8575
                                      (lambda (g7532 g7533)
                                        (letrec*
                                         ((g8576
                                           (letrec*
                                            ((x8577
                                              (letrec*
                                               ((x8579
                                                 (begin
                                                   (write '(funapp 2946 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7534
                                                    k7535
                                                    g7532)))
                                                (x8578
                                                 (begin
                                                   (write '(funapp 2947 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7534
                                                    k7535
                                                    g7533))))
                                               (begin
                                                 (write '(funapp 2948 42))
                                                 (display "\n")
                                                 (f7536 x8579 x8578)))))
                                            (begin
                                              (write '(funapp 2949 39))
                                              (display "\n")
                                              (image/c j7534 k7535 x8577)))))
                                         g8576))))
                                    g8575))
                                 xj7530
                                 xk7531
                                 snake+scene))))
                            g8574)))
                         (x8568
                          (letrec*
                           ((x8569
                             (letrec*
                              ((x8572 (input))
                               (x8570
                                (letrec*
                                 ((x8571 (input)))
                                 (begin
                                   (write '(funapp 2962 56))
                                   (display "\n")
                                   (cons
                                    x8571
                                    (begin
                                      (write '(funapp 2962 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2963 27))
                                (display "\n")
                                (cons x8572 x8570)))))
                           (begin
                             (write '(funapp 2964 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2964 29))
                                (display "\n")
                                'snake)
                              x8569))))
                         (x8567
                          (begin
                            (write '(funapp 2965 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2965 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2965 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2966 21))
                          (display "\n")
                          (x8573 x8568 x8567)))
                       (letrec*
                        ((x8582
                          (letrec*
                           ((xj7537
                             (begin
                               (write '(funapp 2970 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2970 37))
                                  (display "\n")
                                  'module))))
                            (xk7538
                             (begin
                               (write '(funapp 2970 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2970 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8583
                              (begin
                                (write '(funapp 2973 27))
                                (display "\n")
                                ((lambda (j7541 k7542 f7543)
                                   (letrec*
                                    ((g8584
                                      (lambda (g7539 g7540)
                                        (letrec*
                                         ((g8585
                                           (letrec*
                                            ((x8586
                                              (letrec*
                                               ((x8588
                                                 (letrec*
                                                  ((x8589
                                                    (begin
                                                      (write '(funapp 2984 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 2985 45))
                                                    (display "\n")
                                                    (x8589
                                                     j7541
                                                     k7542
                                                     g7539))))
                                                (x8587
                                                 (begin
                                                   (write '(funapp 2986 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7541
                                                    k7542
                                                    g7540))))
                                               (begin
                                                 (write '(funapp 2987 42))
                                                 (display "\n")
                                                 (f7543 x8588 x8587)))))
                                            (begin
                                              (write '(funapp 2988 39))
                                              (display "\n")
                                              (image/c j7541 k7542 x8586)))))
                                         g8585))))
                                    g8584))
                                 xj7537
                                 xk7538
                                 segments+scene))))
                            g8583)))
                         (x8581 (input))
                         (x8580
                          (begin
                            (write '(funapp 2996 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2996 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2996 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2997 21))
                          (display "\n")
                          (x8582 x8581 x8580)))
                       (letrec*
                        ((x8596
                          (letrec*
                           ((xj7544
                             (begin
                               (write '(funapp 3001 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3001 37))
                                  (display "\n")
                                  'module))))
                            (xk7545
                             (begin
                               (write '(funapp 3001 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3001 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8597
                              (begin
                                (write '(funapp 3004 27))
                                (display "\n")
                                ((lambda (j7548 k7549 f7550)
                                   (letrec*
                                    ((g8598
                                      (lambda (g7546 g7547)
                                        (letrec*
                                         ((g8599
                                           (letrec*
                                            ((x8600
                                              (letrec*
                                               ((x8602
                                                 (begin
                                                   (write '(funapp 3013 50))
                                                   (display "\n")
                                                   (POSN/C j7548 k7549 g7546)))
                                                (x8601
                                                 (begin
                                                   (write '(funapp 3014 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7548
                                                    k7549
                                                    g7547))))
                                               (begin
                                                 (write '(funapp 3015 42))
                                                 (display "\n")
                                                 (f7550 x8602 x8601)))))
                                            (begin
                                              (write '(funapp 3016 39))
                                              (display "\n")
                                              (image/c j7548 k7549 x8600)))))
                                         g8599))))
                                    g8598))
                                 xj7544
                                 xk7545
                                 segment+scene))))
                            g8597)))
                         (x8591
                          (letrec*
                           ((x8592
                             (letrec*
                              ((x8595 (input))
                               (x8593
                                (letrec*
                                 ((x8594 (input)))
                                 (begin
                                   (write '(funapp 3029 56))
                                   (display "\n")
                                   (cons
                                    x8594
                                    (begin
                                      (write '(funapp 3029 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3030 27))
                                (display "\n")
                                (cons x8595 x8593)))))
                           (begin
                             (write '(funapp 3031 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3031 29))
                                (display "\n")
                                'posn)
                              x8592))))
                         (x8590
                          (begin
                            (write '(funapp 3032 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3032 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3032 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3033 21))
                          (display "\n")
                          (x8596 x8591 x8590)))))))))
               g8362))))
           g7595))))
       g7578)))
    g7577)))
