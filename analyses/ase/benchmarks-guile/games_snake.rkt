(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7564 #t)) g7564)))
    (meta (lambda (v) (letrec* ((g7565 v)) g7565)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7566
          (letrec*
           ((g7567
             (letrec*
              ((x-e7568 lst))
              (letrec*
               ((v1742 x-e7568))
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
                   ((x-cnd7569
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7569
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
           g7567)))
        g7566)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7570 (lambda (v) (letrec* ((g7571 v)) g7571)))) g7570)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7572
          (letrec*
           ((x7573 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7573)))))
        g7572))))
   (letrec*
    ((g7574
      (letrec*
       ((g7575
         (letrec*
          ((orig-+ +)
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
           ((g7576 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7577
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7578
                     (lambda (k j lst)
                       (letrec*
                        ((g7579
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7580
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7580))
                             lst))))
                        g7579))))
                   g7578)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x-cnd7582
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7582
                        g7267
                        (begin
                          (write '(blame g7265 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7581)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x-cnd7584
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7584
                        g7270
                        (begin
                          (write '(blame g7268 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7583)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x-cnd7586
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7586
                        g7273
                        (begin
                          (write '(blame g7271 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7585)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x-cnd7588
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7589 #t)) g7589)) g7276))))
                      (if x-cnd7588
                        g7276
                        (begin
                          (write '(blame g7274 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7587)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x-cnd7591
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7592 #t)) g7592)) g7279))))
                      (if x-cnd7591
                        g7279
                        (begin
                          (write '(blame g7277 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7590)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x-cnd7594
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7594
                        g7282
                        (begin
                          (write '(blame g7280 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7593)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x-cnd7596
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7596
                        g7285
                        (begin
                          (write '(blame g7283 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7595)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x-cnd7598
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7598
                        g7288
                        (begin
                          (write '(blame g7286 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7597)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x-cnd7600
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7600
                        g7291
                        (begin
                          (write '(blame g7289 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7599)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7601
                     (lambda (k j v)
                       (letrec*
                        ((g7602
                          (letrec*
                           ((x-cnd7603
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7603
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7602))))
                   g7601)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7604
                     (lambda (k j v)
                       (letrec*
                        ((g7605
                          (letrec*
                           ((x-cnd7606
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7606
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7610
                                (letrec*
                                 ((x7611
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7611))))
                               (x7607
                                (letrec*
                                 ((x7609
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7608
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7609 k j x7608)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7610 x7607)))))))
                        g7605))))
                   g7604)))
               (any? (lambda (v) (letrec* ((g7612 #t)) g7612)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7614)))))
                   g7613)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7617
                                (letrec*
                                 ((x7618
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7618)))))
                              g7617))
                           g7294))))
                      (if x-cnd7616
                        g7294
                        (begin
                          (write '(blame g7292 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7615)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7619
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7620
                          (letrec*
                           ((x-cnd7621
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7622
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7622))
                                g7297))))
                           (if x-cnd7621
                             g7297
                             (begin
                               (write '(blame g7295 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7620))))
                   g7619)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7623
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7624
                          (letrec*
                           ((x-cnd7625
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7626
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7626))
                                g7300))))
                           (if x-cnd7625
                             g7300
                             (begin
                               (write '(blame g7298 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7624))))
                   g7623)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7627
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7628
                          (letrec*
                           ((x-cnd7629
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7630
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7630))
                                g7303))))
                           (if x-cnd7629
                             g7303
                             (begin
                               (write '(blame g7301 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7628))))
                   g7627)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7631
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7632
                          (letrec*
                           ((x-cnd7633
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7634
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7634))
                                g7306))))
                           (if x-cnd7633
                             g7306
                             (begin
                               (write '(blame g7304 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7632))))
                   g7631)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7635
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7636
                          (letrec*
                           ((x-cnd7637
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7638
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7638))
                                g7309))))
                           (if x-cnd7637
                             g7309
                             (begin
                               (write '(blame g7307 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7636))))
                   g7635)))
               (meta (lambda (v) (letrec* ((g7639 v)) g7639)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7640
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7642
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7643
                                 (letrec*
                                  ((x7644
                                    (letrec*
                                     ((x7646
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7645
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7316 x7646 x7645)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7644)))))
                               g7643))))
                          g7642))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7641
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7641))))))
                  g7640)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7647
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7649
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7650
                                 (letrec*
                                  ((x7651
                                    (letrec*
                                     ((x7653
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7652
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7323 x7653 x7652)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7651)))))
                               g7650))))
                          g7649))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7648
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7648))))))
                  g7647)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7654
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7656
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7657
                                 (letrec*
                                  ((x7658
                                    (letrec*
                                     ((x7660
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7659
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7330 x7660 x7659)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7658)))))
                               g7657))))
                          g7656))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7655
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7655))))))
                  g7654)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7661
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7663
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7664
                                 (letrec*
                                  ((x7665
                                    (letrec*
                                     ((x7667
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7666
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7337 x7667 x7666)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7665)))))
                               g7664))))
                          g7663))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7662
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7662))))))
                  g7661)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7668
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7670
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7671
                                 (letrec*
                                  ((x7672
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7673
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7344 x7674 x7673)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7672)))))
                               g7671))))
                          g7670))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7669
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7669))))))
                  g7668)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7675
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7677
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7678
                                 (letrec*
                                  ((x7679
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7680
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7351 x7681 x7680)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7679)))))
                               g7678))))
                          g7677))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7676
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7676))))))
                  g7675)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7682
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7684
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7685
                                 (letrec*
                                  ((x7686
                                    (letrec*
                                     ((x7688
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7687
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7358 x7688 x7687)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7686)))))
                               g7685))))
                          g7684))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7683
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7683))))))
                  g7682)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7689
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7691
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7692
                                 (letrec*
                                  ((x7693
                                    (letrec*
                                     ((x7695
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7694
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7365 x7695 x7694)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7693)))))
                               g7692))))
                          g7691))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7690
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7690))))))
                  g7689)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7696
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7698
                            (lambda (g7368)
                              (letrec*
                               ((g7699
                                 (letrec*
                                  ((x7700
                                    (letrec*
                                     ((x7701
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7371 x7701)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7700)))))
                               g7699))))
                          g7698))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7697
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7697))))))
                  g7696)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7702
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7704
                            (lambda (g7374)
                              (letrec*
                               ((g7705
                                 (letrec*
                                  ((x7706
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7377 x7707)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7706)))))
                               g7705))))
                          g7704))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7703
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7703))))))
                  g7702)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7708
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7710
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7711
                                 (letrec*
                                  ((x7712
                                    (letrec*
                                     ((x7714
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7713
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7384 x7714 x7713)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7712)))))
                               g7711))))
                          g7710))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7709
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7709))))))
                  g7708)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7715
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7717
                            (lambda (g7387)
                              (letrec*
                               ((g7718
                                 (letrec*
                                  ((x7719
                                    (letrec*
                                     ((x7720
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7390 x7720)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7719)))))
                               g7718))))
                          g7717))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7716
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7716))))))
                  g7715)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7721
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7723
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7724
                                 (letrec*
                                  ((x7725
                                    (letrec*
                                     ((x7727
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7726
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7397 x7727 x7726)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7725)))))
                               g7724))))
                          g7723))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7722
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7722))))))
                  g7721)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7728
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7728)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7730)))))
                   g7729)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7737
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7741))))
                          (x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7739)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7740 x7738)))))))
                   g7734)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7747)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7751)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 669 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 670 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7757
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7758 res))
                       g7758))))
                   g7754)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7771 k)))))
                         (if x-cnd7770
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7772)))))))))
                   g7767)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7774)))))
                   g7773)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((x-cnd7778
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7778
                        ""
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7782))))
                          (x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7780)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7781 x7779)))))))
                   g7776)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7788
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7788))))
                   g7785)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7792)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7791)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7790)))))
                   g7789)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7798
                        x
                        (letrec*
                         ((x7800
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7799
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7800 x7799)))))))
                   g7795)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7801
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7801)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x-cnd7803
                        (letrec*
                         ((x7804 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7804)))))
                      (if x-cnd7803
                        (letrec*
                         ((x7805 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7805)))
                        #f))))
                   g7802)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7808))))
                    (g7807
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7809
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7810 (if val7245 val7245 #f)))
                             g7810)))))
                       g7809))))
                   g7807)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7812
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7812 9)))))
                      (letrec*
                       ((g7813
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7814 10)))))
                            (letrec*
                             ((g7815
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7816
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7816 32))))))
                             g7815)))))
                       g7813))))
                   g7811)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7818
                        (letrec*
                         ((x7819
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7819)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7818)))))
                   g7817)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7822))))
                    (g7821
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7821)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7823 #f)) g7823)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7825)))))
                   g7824)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7829
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7827)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7831
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7832
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7832
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7833
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7834
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7834
                                       (letrec*
                                        ((x-cnd7835
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7835
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7836
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7837
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7837
                                             (letrec*
                                              ((x-cnd7838
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7838
                                                (letrec*
                                                 ((x-cnd7839
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7840
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7841 x7840)))))
                                                 (if x-cnd7839
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7842
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7843 x7842)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7844
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7845
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7845
                                                (letrec*
                                                 ((x-cnd7846
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7846
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7847
                                                       (letrec*
                                                        ((x-cnd7848
                                                          (letrec*
                                                           ((x7849
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  928
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 930 60))
                                                             (display "\n")
                                                             (= x7849 n)))))
                                                        (if x-cnd7848
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7850
                                                                  (letrec*
                                                                   ((val7252
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          939
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7851
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7852
                                                                           (letrec*
                                                                            ((x7854
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   948
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7853
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   952
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 955
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7854
                                                                               x7853)))))
                                                                         (if x-cnd7852
                                                                           (letrec*
                                                                            ((x7855
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   961
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 964
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7855)))
                                                                           #f)))))
                                                                    g7851))))
                                                                g7850))))
                                                           (letrec*
                                                            ((g7856
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7856))
                                                          #f))))
                                                     g7847))
                                                   #f))
                                                #f)))))
                                         g7844)))))
                                   g7836)))))
                             g7833)))))
                       g7831))))
                   g7830)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (letrec*
                         ((x7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7860)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7859)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7858)))))
                   g7857)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7864)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7863)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7862)))))
                   g7861)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7865
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7865)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7868))))
                    (g7867
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7869
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7870 (if val7254 val7254 #f)))
                             g7870)))))
                       g7869))))
                   g7867)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7874))))
                    (g7872
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7875))))
                    (g7873
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1031 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1032 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7876
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7877 res))
                       g7877))))
                   g7873)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7878
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7878)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7882))))
                    (g7880
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7883))))
                    (g7881
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7884
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7884))))
                   g7881)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7887)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7891)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7890)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (letrec*
                         ((x7894
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7894)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7893)))))
                   g7892)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7897)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7901))))
                    (g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7903)))))
                   g7900)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7906)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7905)))))
                   g7904)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7909)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7911
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7911)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7915
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7915)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7919
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7923))))
                          (x7920
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7921)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7922 x7920)))))))
                   g7917)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7927)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7926)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7931)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7930)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7929)))))
                   g7928)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7935)))))
                   g7933)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (letrec*
                         ((x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7939)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7938)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7945
                        (letrec*
                         ((g7946
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7946)
                        (letrec*
                         ((x-cnd7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7948)))))
                         (if x-cnd7947
                           (letrec*
                            ((g7949
                              (letrec*
                               ((x7950
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7950)))))
                            g7949)
                           (letrec*
                            ((x-cnd7951
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7952)))))
                            (if x-cnd7951
                              (letrec*
                               ((g7953
                                 (letrec*
                                  ((x7955
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7954
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7955 x7954)))))
                               g7953)
                              (letrec*
                               ((x-cnd7956
                                 (letrec*
                                  ((x7957
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7957)))))
                               (if x-cnd7956
                                 (letrec*
                                  ((g7958
                                    (letrec*
                                     ((x7961
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7960
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7959
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7961 x7960 x7959)))))
                                  g7958)
                                 (letrec*
                                  ((x-cnd7962
                                    (letrec*
                                     ((x7963
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7963)))))
                                  (if x-cnd7962
                                    (letrec*
                                     ((g7964
                                       (letrec*
                                        ((x7968
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7967
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7966
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7965
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7968 x7967 x7966 x7965)))))
                                     g7964)
                                    (letrec*
                                     ((x-cnd7969
                                       (letrec*
                                        ((x7970
                                          (letrec*
                                           ((x7971
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7971)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7970)))))
                                     (if x-cnd7969
                                       (letrec*
                                        ((g7972
                                          (letrec*
                                           ((x7978
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7977
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7976
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7975
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7973
                                             (letrec*
                                              ((x7974
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7974)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7978
                                              x7977
                                              x7976
                                              x7975
                                              x7973)))))
                                        g7972)
                                       (letrec*
                                        ((x-cnd7979
                                          (letrec*
                                           ((x7980
                                             (letrec*
                                              ((x7981
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7981)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7980)))))
                                        (if x-cnd7979
                                          (letrec*
                                           ((g7982
                                             (letrec*
                                              ((x7990
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7989
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7988
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7987
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7985
                                                (letrec*
                                                 ((x7986
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7986))))
                                               (x7983
                                                (letrec*
                                                 ((x7984
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7984)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7990
                                                 x7989
                                                 x7988
                                                 x7987
                                                 x7985
                                                 x7983)))))
                                           g7982)
                                          (letrec*
                                           ((x-cnd7991
                                             (letrec*
                                              ((x7992
                                                (letrec*
                                                 ((x7993
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7993)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7992)))))
                                           (if x-cnd7991
                                             (letrec*
                                              ((g7994
                                                (letrec*
                                                 ((x8004
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8003
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8002
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8001
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7999
                                                   (letrec*
                                                    ((x8000
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x8000))))
                                                  (x7997
                                                   (letrec*
                                                    ((x7998
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7998))))
                                                  (x7995
                                                   (letrec*
                                                    ((x7996
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7996)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x8004
                                                    x8003
                                                    x8002
                                                    x8001
                                                    x7999
                                                    x7997
                                                    x7995)))))
                                              g7994)
                                             (letrec*
                                              ((g8005
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8005)))))))))))))))))))
                   g7942)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x8008))))
                    (g8007
                     (letrec*
                      ((x-cnd8009
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8009
                        #f
                        (letrec*
                         ((x-cnd8010
                           (letrec*
                            ((x8011
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x8011 e)))))
                         (if x-cnd8010
                           l
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x8012)))))))))
                   g8007)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x8014
                        (letrec*
                         ((x8015
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x8016)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x8015)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x8014)))))
                   g8013)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x8020)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x8019)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x8018)))))
                   g8017)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8021
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g8021)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8024
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x8024))))
                    (g8023
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g8023)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8026
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8026))))
                   g8025)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x8028)))))
                   g8027)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8030
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8030
                           (letrec*
                            ((x8031
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x8031)))
                           #f))))
                      (letrec*
                       ((g8032
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g8032))))
                   g8029)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8034
                        (letrec*
                         ((x8035
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x8036)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x8034)))))
                   g8033)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x-cnd8038
                        (letrec*
                         ((x8039 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x8039 c)))))
                      (if x-cnd8038
                        (letrec*
                         ((x8040 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x8040)))
                        #f))))
                   g8037)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x8043))))
                    (g8042
                     (letrec*
                      ((x-cnd8044
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8044
                        #f
                        (letrec*
                         ((x-cnd8045
                           (letrec*
                            ((x8046
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x8046 k)))))
                         (if x-cnd8045
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8047
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x8047)))))))))
                   g8042)))
               (not (lambda (x) (letrec* ((g8048 (if x #f #t))) g8048)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8049
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g8049)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x8052))))
                    (g8051
                     (letrec*
                      ((x-cnd8053
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8053
                        #f
                        (letrec*
                         ((x-cnd8054
                           (letrec*
                            ((x8055
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x8055 e)))))
                         (if x-cnd8054
                           l
                           (letrec*
                            ((x8056
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x8056)))))))))
                   g8051)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((x8058
                        (letrec*
                         ((x8059
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x8060)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x8059)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x8058)))))
                   g8057)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8061
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8063))))
                    (g8062
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8064
                             (letrec*
                              ((x-cnd8065
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8065
                                0
                                (letrec*
                                 ((x8066
                                   (letrec*
                                    ((x8067
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x8067)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x8066)))))))
                           g8064))))
                      (letrec*
                       ((g8068
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g8068))))
                   g8062)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x8072))))
                    (g8070
                     (letrec*
                      ((x8073
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x8073))))
                    (g8071
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8074
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8074))))
                   g8071)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8075
                     (letrec*
                      ((x8076
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x8076)))))
                   g8075)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8078
                        (letrec*
                         ((x8079
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x8079)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x8078)))))
                   g8077)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8080
                     (letrec*
                      ((x8082
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8082))))
                    (g8081
                     (letrec*
                      ((x-cnd8083
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8083
                        #f
                        (letrec*
                         ((x-cnd8084
                           (letrec*
                            ((x8085
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x8085 k)))))
                         (if x-cnd8084
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8086
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x8086)))))))))
                   g8081)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8087
                     (letrec*
                      ((x8088
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x8088)))))
                   g8087)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8092))))
                    (g8090
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8093))))
                    (g8091
                     (letrec*
                      ((x8094
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x8094)))))
                   g8091)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8096
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8096))))
                   g8095)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x8100))))
                    (g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((x-cnd8102
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8102
                        #t
                        (letrec*
                         ((x-cnd8103
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8103
                           (letrec*
                            ((g8104
                              (letrec*
                               ((x8106
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x8106))))
                             (g8105
                              (letrec*
                               ((x8107
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x8107)))))
                            g8105)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g8099)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x8110))))
                    (g8109
                     (letrec*
                      ((x-cnd8111
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8111
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8109)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8115
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x8115))))
                    (g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8117
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8117))))
                   g8114)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x8119
                        (letrec*
                         ((x8120
                           (letrec*
                            ((x8121
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x8121)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x8120)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x8119)))))
                   g8118)))
               (newline (lambda () (letrec* ((g8122 #f)) g8122)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8125
                        (letrec*
                         ((x8126
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x8126))))
                       (x8124
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x8125 x8124)))))
                   g8123)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8129
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x8129))))
                    (g8128
                     (letrec*
                      ((x8130
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x8130)))))
                   g8128)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x8135))))
                    (g8132
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x8136))))
                    (g8133
                     (letrec*
                      ((x8137
                        (letrec*
                         ((x8138
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x8138)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x8137))))
                    (g8134
                     (letrec*
                      ((x-cnd8139
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8139
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8141
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x8140
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x8141 x8140)))))))
                   g8134)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x-cnd8143
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8143
                        a
                        (letrec*
                         ((x8144
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x8144)))))))
                   g8142)))
               (image
                (lambda ()
                  (letrec*
                   ((g8145
                     (begin
                       (write '(funapp 1657 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1657 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1657 62))
                          (display "\n")
                          '())))))
                   g8145)))
               (image?
                (lambda (image7548)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1662 39))
                          (display "\n")
                          (car image7548))))
                      (begin
                        (write '(funapp 1662 57))
                        (display "\n")
                        (eq?
                         x8147
                         (begin
                           (write '(funapp 1662 67))
                           (display "\n")
                           'image))))))
                   g8146)))
               (image/c
                (lambda (j7399 k7400 v7398)
                  (letrec*
                   ((g8148
                     (begin
                       (write '(funapp 1666 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1666 47))
                          (display "\n")
                          '())))))
                   g8148)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8149
                     (begin (write '(funapp 1667 57)) (display "\n") (image))))
                   g8149)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8150
                     (begin (write '(funapp 1668 60)) (display "\n") (image))))
                   g8150)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8151
                     (begin (write '(funapp 1670 54)) (display "\n") (image))))
                   g8151)))
               (posn
                (lambda (x7550 y7551)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x8153
                        (letrec*
                         ((x8154
                           (begin
                             (write '(funapp 1678 34))
                             (display "\n")
                             (orig-cons
                              y7551
                              (begin
                                (write '(funapp 1678 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1679 26))
                           (display "\n")
                           (orig-cons x7550 x8154)))))
                      (begin
                        (write '(funapp 1680 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1680 33)) (display "\n") 'posn)
                         x8153)))))
                   g8152)))
               (posn?
                (lambda (posn7549)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8156
                        (begin
                          (write '(funapp 1686 39))
                          (display "\n")
                          (car posn7549))))
                      (begin
                        (write '(funapp 1686 56))
                        (display "\n")
                        (eq?
                         x8156
                         (begin
                           (write '(funapp 1686 66))
                           (display "\n")
                           'posn))))))
                   g8155)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8157
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1692 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1692 57))
                        (display "\n")
                        (orig-car x8158)))))
                   g8157)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8160
                        (letrec*
                         ((x8161
                           (begin
                             (write '(funapp 1700 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1700 60))
                           (display "\n")
                           (orig-cdr x8161)))))
                      (begin
                        (write '(funapp 1701 23))
                        (display "\n")
                        (orig-car x8160)))))
                   g8159)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x-cnd8163
                        (letrec*
                         ((x8165
                           (begin
                             (write '(funapp 1710 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8164
                           (begin
                             (write '(funapp 1710 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1711 26))
                           (display "\n")
                           (= x8165 x8164)))))
                      (if x-cnd8163
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1714 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8166
                           (begin
                             (write '(funapp 1714 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1715 26))
                           (display "\n")
                           (= x8167 x8166)))
                        #f))))
                   g8162)))
               (snake
                (lambda (dir7555 segs7556)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x8169
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1725 34))
                             (display "\n")
                             (orig-cons
                              segs7556
                              (begin
                                (write '(funapp 1725 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1726 26))
                           (display "\n")
                           (orig-cons dir7555 x8170)))))
                      (begin
                        (write '(funapp 1727 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1727 33))
                           (display "\n")
                           'snake)
                         x8169)))))
                   g8168)))
               (snake?
                (lambda (snake7554)
                  (letrec*
                   ((g8171
                     (letrec*
                      ((x8172
                        (begin
                          (write '(funapp 1733 39))
                          (display "\n")
                          (car snake7554))))
                      (begin
                        (write '(funapp 1733 57))
                        (display "\n")
                        (eq?
                         x8172
                         (begin
                           (write '(funapp 1733 67))
                           (display "\n")
                           'snake))))))
                   g8171)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8173
                     (letrec*
                      ((x8174
                        (begin
                          (write '(funapp 1739 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1739 58))
                        (display "\n")
                        (orig-car x8174)))))
                   g8173)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x8176
                        (letrec*
                         ((x8177
                           (begin
                             (write '(funapp 1747 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1747 61))
                           (display "\n")
                           (orig-cdr x8177)))))
                      (begin
                        (write '(funapp 1748 23))
                        (display "\n")
                        (orig-car x8176)))))
                   g8175)))
               (world
                (lambda (snake7560 food7561)
                  (letrec*
                   ((g8178
                     (letrec*
                      ((x8179
                        (letrec*
                         ((x8180
                           (begin
                             (write '(funapp 1757 34))
                             (display "\n")
                             (orig-cons
                              food7561
                              (begin
                                (write '(funapp 1757 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1758 26))
                           (display "\n")
                           (orig-cons snake7560 x8180)))))
                      (begin
                        (write '(funapp 1759 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1759 33))
                           (display "\n")
                           'world)
                         x8179)))))
                   g8178)))
               (world?
                (lambda (world7559)
                  (letrec*
                   ((g8181
                     (letrec*
                      ((x8182
                        (begin
                          (write '(funapp 1765 39))
                          (display "\n")
                          (car world7559))))
                      (begin
                        (write '(funapp 1765 57))
                        (display "\n")
                        (eq?
                         x8182
                         (begin
                           (write '(funapp 1765 67))
                           (display "\n")
                           'world))))))
                   g8181)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8183
                     (letrec*
                      ((x8184
                        (begin
                          (write '(funapp 1771 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1771 58))
                        (display "\n")
                        (orig-car x8184)))))
                   g8183)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8185
                     (letrec*
                      ((x8186
                        (letrec*
                         ((x8187
                           (begin
                             (write '(funapp 1779 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1779 61))
                           (display "\n")
                           (orig-cdr x8187)))))
                      (begin
                        (write '(funapp 1780 23))
                        (display "\n")
                        (orig-car x8186)))))
                   g8185)))
               (DIR/C
                (lambda (g7405 g7406 g7407)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((x-cnd8189
                        (begin
                          (write '(funapp 1788 25))
                          (display "\n")
                          ((lambda (v7404)
                             (letrec*
                              ((g8190
                                (letrec*
                                 ((x-cnd8191
                                   (begin
                                     (write '(funapp 1792 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1792 48))
                                        (display "\n")
                                        'up)
                                      v7404))))
                                 (if x-cnd8191
                                   #t
                                   (letrec*
                                    ((x-cnd8192
                                      (begin
                                        (write '(funapp 1796 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1796 51))
                                           (display "\n")
                                           'down)
                                         v7404))))
                                    (if x-cnd8192
                                      #t
                                      (letrec*
                                       ((x-cnd8193
                                         (begin
                                           (write '(funapp 1800 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1800 54))
                                              (display "\n")
                                              'left)
                                            v7404))))
                                       (if x-cnd8193
                                         #t
                                         (begin
                                           (write '(funapp 1803 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1803 44))
                                              (display "\n")
                                              'right)
                                            v7404))))))))))
                              g8190))
                           g7407))))
                      (if x-cnd8189
                        g7407
                        (begin
                          (write '(blame g7405 1808 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7405)))))))
                   g8188)))
               (POSN/C
                (lambda (j7409 k7410 v7408)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((checked7411
                        (letrec*
                         ((x8195
                           (letrec*
                            ((x8196
                              (begin
                                (write '(funapp 1828 37))
                                (display "\n")
                                (orig-cdr v7408))))
                            (begin
                              (write '(funapp 1829 29))
                              (display "\n")
                              (orig-car x8196)))))
                         (begin
                           (write '(funapp 1830 26))
                           (display "\n")
                           (real?/c j7409 k7410 x8195)))))
                      (letrec*
                       ((g8197
                         (letrec*
                          ((checked7412
                            (letrec*
                             ((x8198
                               (letrec*
                                ((x8199
                                  (letrec*
                                   ((x8200
                                     (begin
                                       (write '(funapp 1840 44))
                                       (display "\n")
                                       (orig-cdr v7408))))
                                   (begin
                                     (write '(funapp 1841 36))
                                     (display "\n")
                                     (orig-cdr x8200)))))
                                (begin
                                  (write '(funapp 1842 33))
                                  (display "\n")
                                  (orig-car x8199)))))
                             (begin
                               (write '(funapp 1843 30))
                               (display "\n")
                               (real?/c j7409 k7410 x8198)))))
                          (letrec*
                           ((g8201
                             (letrec*
                              ((x8202
                                (letrec*
                                 ((x8203
                                   (begin
                                     (write '(funapp 1849 42))
                                     (display "\n")
                                     (cons
                                      checked7412
                                      (begin
                                        (write '(funapp 1849 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1850 34))
                                   (display "\n")
                                   (cons checked7411 x8203)))))
                              (begin
                                (write '(funapp 1851 31))
                                (display "\n")
                                (cons posn x8202)))))
                           g8201))))
                       g8197))))
                   g8194)))
               (SNAKE/C
                (lambda (j7415 k7416 v7414)
                  (letrec*
                   ((g8204
                     (letrec*
                      ((checked7417
                        (letrec*
                         ((x8205
                           (letrec*
                            ((x8206
                              (begin
                                (write '(funapp 1864 37))
                                (display "\n")
                                (orig-cdr v7414))))
                            (begin
                              (write '(funapp 1865 29))
                              (display "\n")
                              (orig-car x8206)))))
                         (begin
                           (write '(funapp 1866 26))
                           (display "\n")
                           (DIR/C j7415 k7416 x8205)))))
                      (letrec*
                       ((g8207
                         (letrec*
                          ((checked7418
                            (letrec*
                             ((x8211
                               (letrec*
                                ((x8212
                                  (begin
                                    (write '(funapp 1874 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1875 33))
                                  (display "\n")
                                  (and/c cons?/c x8212))))
                              (x8208
                               (letrec*
                                ((x8209
                                  (letrec*
                                   ((x8210
                                     (begin
                                       (write '(funapp 1880 44))
                                       (display "\n")
                                       (orig-cdr v7414))))
                                   (begin
                                     (write '(funapp 1881 36))
                                     (display "\n")
                                     (orig-cdr x8210)))))
                                (begin
                                  (write '(funapp 1882 33))
                                  (display "\n")
                                  (orig-car x8209)))))
                             (begin
                               (write '(funapp 1883 30))
                               (display "\n")
                               (x8211 j7415 k7416 x8208)))))
                          (letrec*
                           ((g8213
                             (letrec*
                              ((x8214
                                (letrec*
                                 ((x8215
                                   (begin
                                     (write '(funapp 1889 42))
                                     (display "\n")
                                     (cons
                                      checked7418
                                      (begin
                                        (write '(funapp 1889 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1890 34))
                                   (display "\n")
                                   (cons checked7417 x8215)))))
                              (begin
                                (write '(funapp 1891 31))
                                (display "\n")
                                (cons snake x8214)))))
                           g8213))))
                       g8207))))
                   g8204)))
               (WORLD/C
                (lambda (j7421 k7422 v7420)
                  (letrec*
                   ((g8216
                     (letrec*
                      ((checked7423
                        (letrec*
                         ((x8217
                           (letrec*
                            ((x8218
                              (begin
                                (write '(funapp 1904 37))
                                (display "\n")
                                (orig-cdr v7420))))
                            (begin
                              (write '(funapp 1905 29))
                              (display "\n")
                              (orig-car x8218)))))
                         (begin
                           (write '(funapp 1906 26))
                           (display "\n")
                           (SNAKE/C j7421 k7422 x8217)))))
                      (letrec*
                       ((g8219
                         (letrec*
                          ((checked7424
                            (letrec*
                             ((x8220
                               (letrec*
                                ((x8221
                                  (letrec*
                                   ((x8222
                                     (begin
                                       (write '(funapp 1916 44))
                                       (display "\n")
                                       (orig-cdr v7420))))
                                   (begin
                                     (write '(funapp 1917 36))
                                     (display "\n")
                                     (orig-cdr x8222)))))
                                (begin
                                  (write '(funapp 1918 33))
                                  (display "\n")
                                  (orig-car x8221)))))
                             (begin
                               (write '(funapp 1919 30))
                               (display "\n")
                               (POSN/C j7421 k7422 x8220)))))
                          (letrec*
                           ((g8223
                             (letrec*
                              ((x8224
                                (letrec*
                                 ((x8225
                                   (begin
                                     (write '(funapp 1925 42))
                                     (display "\n")
                                     (cons
                                      checked7424
                                      (begin
                                        (write '(funapp 1925 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1926 34))
                                   (display "\n")
                                   (cons checked7423 x8225)))))
                              (begin
                                (write '(funapp 1927 31))
                                (display "\n")
                                (cons world x8224)))))
                           g8223))))
                       g8219))))
                   g8216)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1934 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1935 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1937 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1938 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1939 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1941 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8227
                   (letrec*
                    ((x8228
                      (letrec*
                       ((x8229
                         (begin
                           (write '(funapp 1946 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1946 59))
                         (display "\n")
                         (cons x8229 empty)))))
                    (begin
                      (write '(funapp 1947 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1947 27)) (display "\n") 'right)
                       x8228))))
                  (x8226
                   (begin
                     (write '(funapp 1948 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1949 18))
                   (display "\n")
                   (world x8227 x8226))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8230
                     (letrec*
                      ((x8231
                        (letrec*
                         ((x8232
                           (begin
                             (write '(funapp 1956 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1956 61))
                           (display "\n")
                           (car x8232)))))
                      (begin
                        (write '(funapp 1957 23))
                        (display "\n")
                        (head-collide? x8231)))))
                   g8230)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8233
                     (letrec*
                      ((val7261
                        (letrec*
                         ((x8234
                           (begin
                             (write '(funapp 1964 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1964 63))
                           (display "\n")
                           (<= x8234 0)))))
                      (letrec*
                       ((g8235
                         (if val7261
                           val7261
                           (letrec*
                            ((val7262
                              (letrec*
                               ((x8236
                                 (begin
                                   (write '(funapp 1972 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1973 32))
                                 (display "\n")
                                 (>= x8236 BOARD-WIDTH)))))
                            (letrec*
                             ((g8237
                               (if val7262
                                 val7262
                                 (letrec*
                                  ((val7263
                                    (letrec*
                                     ((x8238
                                       (begin
                                         (write '(funapp 1981 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1982 38))
                                       (display "\n")
                                       (<= x8238 0)))))
                                  (letrec*
                                   ((g8239
                                     (if val7263
                                       val7263
                                       (letrec*
                                        ((x8240
                                          (begin
                                            (write '(funapp 1988 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1989 41))
                                          (display "\n")
                                          (>= x8240 BOARD-HEIGHT))))))
                                   g8239)))))
                             g8237)))))
                       g8235))))
                   g8233)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8241
                     (letrec*
                      ((x8244
                        (letrec*
                         ((x8245
                           (begin
                             (write '(funapp 1999 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1999 67))
                           (display "\n")
                           (car x8245))))
                       (x8242
                        (letrec*
                         ((x8243
                           (begin
                             (write '(funapp 2001 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2001 61))
                           (display "\n")
                           (cdr x8243)))))
                      (begin
                        (write '(funapp 2002 23))
                        (display "\n")
                        (segs-self-collide? x8244 x8242)))))
                   g8241)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8246
                     (letrec*
                      ((x-cnd8247
                        (begin
                          (write '(funapp 2009 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8247
                        (letrec* ((g8248 #f)) g8248)
                        (letrec*
                         ((g8249
                           (letrec*
                            ((x8252
                              (letrec*
                               ((x8253
                                 (begin
                                   (write '(funapp 2016 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2016 61))
                                 (display "\n")
                                 (posn=? x8253 h))))
                             (x8250
                              (letrec*
                               ((x8251
                                 (begin
                                   (write '(funapp 2019 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2020 32))
                                 (display "\n")
                                 (segs-self-collide? h x8251)))))
                            (begin
                              (write '(funapp 2021 29))
                              (display "\n")
                              (or x8252 x8250)))))
                         g8249)))))
                   g8246)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2029 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8255
                         (letrec*
                          ((x-cnd8256
                            (begin
                              (write '(funapp 2033 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8256
                            (letrec* ((g8257 empty)) g8257)
                            (letrec*
                             ((g8258
                               (letrec*
                                ((x8260
                                  (begin
                                    (write '(funapp 2039 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8259
                                  (begin
                                    (write '(funapp 2039 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2040 33))
                                  (display "\n")
                                  (cons x8260 x8259)))))
                             g8258)))))
                       g8255))))
                   g8254)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x-cnd8262
                        (begin
                          (write '(funapp 2049 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2049 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8262
                        (letrec*
                         ((g8263
                           (letrec*
                            ((x8265
                              (letrec*
                               ((x8266
                                 (begin
                                   (write '(funapp 2055 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2055 63))
                                 (display "\n")
                                 (add1 x8266))))
                             (x8264
                              (begin
                                (write '(funapp 2056 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2057 29))
                              (display "\n")
                              (posn x8265 x8264)))))
                         g8263)
                        (letrec*
                         ((x-cnd8267
                           (begin
                             (write '(funapp 2060 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2060 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8267
                           (letrec*
                            ((g8268
                              (letrec*
                               ((x8270
                                 (letrec*
                                  ((x8271
                                    (begin
                                      (write '(funapp 2066 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2066 66))
                                    (display "\n")
                                    (sub1 x8271))))
                                (x8269
                                 (begin
                                   (write '(funapp 2067 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2068 32))
                                 (display "\n")
                                 (posn x8270 x8269)))))
                            g8268)
                           (letrec*
                            ((x-cnd8272
                              (begin
                                (write '(funapp 2071 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2071 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8272
                              (letrec*
                               ((g8273
                                 (letrec*
                                  ((x8276
                                    (begin
                                      (write '(funapp 2076 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8274
                                    (letrec*
                                     ((x8275
                                       (begin
                                         (write '(funapp 2079 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2080 38))
                                       (display "\n")
                                       (sub1 x8275)))))
                                  (begin
                                    (write '(funapp 2081 35))
                                    (display "\n")
                                    (posn x8276 x8274)))))
                               g8273)
                              (letrec*
                               ((g8277
                                 (letrec*
                                  ((x8280
                                    (begin
                                      (write '(funapp 2086 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8278
                                    (letrec*
                                     ((x8279
                                       (begin
                                         (write '(funapp 2089 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2090 38))
                                       (display "\n")
                                       (add1 x8279)))))
                                  (begin
                                    (write '(funapp 2091 35))
                                    (display "\n")
                                    (posn x8280 x8278)))))
                               g8277)))))))))
                   g8261)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8281
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2099 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8282
                         (letrec*
                          ((x8283
                            (letrec*
                             ((x8286
                               (letrec*
                                ((x8287
                                  (letrec*
                                   ((x8288
                                     (begin
                                       (write '(funapp 2109 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2110 36))
                                     (display "\n")
                                     (car x8288)))))
                                (begin
                                  (write '(funapp 2111 33))
                                  (display "\n")
                                  (next-head x8287 d))))
                              (x8284
                               (letrec*
                                ((x8285
                                  (begin
                                    (write '(funapp 2114 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2115 33))
                                  (display "\n")
                                  (cut-tail x8285)))))
                             (begin
                               (write '(funapp 2116 30))
                               (display "\n")
                               (cons x8286 x8284)))))
                          (begin
                            (write '(funapp 2117 27))
                            (display "\n")
                            (snake d x8283)))))
                       g8282))))
                   g8281)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8289
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2125 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8290
                         (letrec*
                          ((x8291
                            (letrec*
                             ((x8293
                               (letrec*
                                ((x8294
                                  (letrec*
                                   ((x8295
                                     (begin
                                       (write '(funapp 2135 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2136 36))
                                     (display "\n")
                                     (car x8295)))))
                                (begin
                                  (write '(funapp 2137 33))
                                  (display "\n")
                                  (next-head x8294 d))))
                              (x8292
                               (begin
                                 (write '(funapp 2138 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2139 30))
                               (display "\n")
                               (cons x8293 x8292)))))
                          (begin
                            (write '(funapp 2140 27))
                            (display "\n")
                            (snake d x8291)))))
                       g8290))))
                   g8289)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8296
                     (letrec*
                      ((x-cnd8297
                        (begin
                          (write '(funapp 2148 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8297
                        (letrec*
                         ((g8298
                           (begin
                             (write '(funapp 2150 42))
                             (display "\n")
                             (snake-eat w))))
                         g8298)
                        (letrec*
                         ((g8299
                           (letrec*
                            ((x8301
                              (letrec*
                               ((x8302
                                 (begin
                                   (write '(funapp 2156 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2157 32))
                                 (display "\n")
                                 (snake-slither x8302))))
                             (x8300
                              (begin
                                (write '(funapp 2158 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2159 29))
                              (display "\n")
                              (world x8301 x8300)))))
                         g8299)))))
                   g8296)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8303
                     (letrec*
                      ((x8307
                        (begin
                          (write '(funapp 2167 31))
                          (display "\n")
                          (world-food w)))
                       (x8304
                        (letrec*
                         ((x8305
                           (letrec*
                            ((x8306
                              (begin
                                (write '(funapp 2172 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2173 29))
                              (display "\n")
                              (snake-segs x8306)))))
                         (begin
                           (write '(funapp 2174 26))
                           (display "\n")
                           (car x8305)))))
                      (begin
                        (write '(funapp 2175 23))
                        (display "\n")
                        (posn=? x8307 x8304)))))
                   g8303)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8308
                     (letrec*
                      ((x8309
                        (begin
                          (write '(funapp 2181 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2181 58))
                        (display "\n")
                        (snake dir x8309)))))
                   g8308)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8310
                     (letrec*
                      ((x8312
                        (letrec*
                         ((x8313
                           (begin
                             (write '(funapp 2190 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2191 26))
                           (display "\n")
                           (snake-change-direction x8313 dir))))
                       (x8311
                        (begin
                          (write '(funapp 2192 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2193 23))
                        (display "\n")
                        (world x8312 x8311)))))
                   g8310)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8314
                     (letrec*
                      ((x8318
                        (letrec*
                         ((x8319
                           (begin
                             (write '(funapp 2201 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2201 60))
                           (display "\n")
                           (snake-grow x8319))))
                       (x8315
                        (letrec*
                         ((x8317
                           (begin
                             (write '(funapp 2204 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8316
                           (begin
                             (write '(funapp 2204 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2205 26))
                           (display "\n")
                           (posn x8317 x8316)))))
                      (begin
                        (write '(funapp 2206 23))
                        (display "\n")
                        (world x8318 x8315)))))
                   g8314)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8320
                     (letrec*
                      ((x-cnd8321
                        (begin
                          (write '(funapp 2213 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8321
                        (letrec*
                         ((g8322
                           (begin
                             (write '(funapp 2215 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2215 61))
                                (display "\n")
                                'up)))))
                         g8322)
                        (letrec*
                         ((x-cnd8323
                           (begin
                             (write '(funapp 2217 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8323
                           (letrec*
                            ((g8324
                              (begin
                                (write '(funapp 2219 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2219 64))
                                   (display "\n")
                                   'down)))))
                            g8324)
                           (letrec*
                            ((x-cnd8325
                              (begin
                                (write '(funapp 2221 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8325
                              (letrec*
                               ((g8326
                                 (begin
                                   (write '(funapp 2224 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2224 59))
                                      (display "\n")
                                      'left)))))
                               g8326)
                              (letrec*
                               ((x-cnd8327
                                 (begin
                                   (write '(funapp 2227 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8327
                                 (letrec*
                                  ((g8328
                                    (begin
                                      (write '(funapp 2230 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2230 62))
                                         (display "\n")
                                         'right)))))
                                  g8328)
                                 (letrec* ((g8329 w)) g8329)))))))))))
                   g8320)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8330
                     (letrec*
                      ((val7264
                        (letrec*
                         ((x8331
                           (begin
                             (write '(funapp 2241 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2242 26))
                           (display "\n")
                           (snake-wall-collide? x8331)))))
                      (letrec*
                       ((g8332
                         (if val7264
                           val7264
                           (letrec*
                            ((x8333
                              (begin
                                (write '(funapp 2248 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2249 29))
                              (display "\n")
                              (snake-self-collide? x8333))))))
                       g8332))))
                   g8330)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8334
                     (letrec*
                      ((x8337
                        (begin
                          (write '(funapp 2257 31))
                          (display "\n")
                          (world-snake w)))
                       (x8335
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 2260 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2261 26))
                           (display "\n")
                           (food+scene x8336 BACKGROUND)))))
                      (begin
                        (write '(funapp 2262 23))
                        (display "\n")
                        (snake+scene x8337 x8335)))))
                   g8334)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8338
                     (letrec*
                      ((x8340
                        (begin
                          (write '(funapp 2269 31))
                          (display "\n")
                          (posn-x f)))
                       (x8339
                        (begin
                          (write '(funapp 2269 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2270 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8340 x8339 scn)))))
                   g8338)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8341
                     (letrec*
                      ((x8344
                        (begin
                          (write '(funapp 2277 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8342
                        (letrec*
                         ((x8343
                           (begin
                             (write '(funapp 2280 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2281 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8343)))))
                      (begin
                        (write '(funapp 2282 23))
                        (display "\n")
                        (place-image img x8344 x8342 scn)))))
                   g8341)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8345
                     (letrec*
                      ((x8346
                        (begin
                          (write '(funapp 2289 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2290 23))
                        (display "\n")
                        (segments+scene x8346 scn)))))
                   g8345)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8347
                     (letrec*
                      ((x-cnd8348
                        (begin
                          (write '(funapp 2297 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8348
                        (letrec* ((g8349 scn)) g8349)
                        (letrec*
                         ((g8350
                           (letrec*
                            ((x8353
                              (begin
                                (write '(funapp 2303 37))
                                (display "\n")
                                (cdr segs)))
                             (x8351
                              (letrec*
                               ((x8352
                                 (begin
                                   (write '(funapp 2306 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2307 32))
                                 (display "\n")
                                 (segment+scene x8352 scn)))))
                            (begin
                              (write '(funapp 2308 29))
                              (display "\n")
                              (segments+scene x8353 x8351)))))
                         g8350)))))
                   g8347)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8354
                     (letrec*
                      ((x8356
                        (begin
                          (write '(funapp 2316 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8355
                        (begin
                          (write '(funapp 2316 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2317 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8356 x8355 scn)))))
                   g8354))))
              (letrec*
               ((g8357
                 (begin
                   (write '(funapp 2321 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2322 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8368
                          (letrec*
                           ((xj7426
                             (begin
                               (write '(funapp 2326 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2326 37))
                                  (display "\n")
                                  'module))))
                            (xk7427
                             (begin
                               (write '(funapp 2326 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2326 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8369
                              (begin
                                (write '(funapp 2329 27))
                                (display "\n")
                                ((lambda (j7430 k7431 f7432)
                                   (letrec*
                                    ((g8370
                                      (lambda (g7428 g7429)
                                        (letrec*
                                         ((g8371
                                           (letrec*
                                            ((x8372
                                              (letrec*
                                               ((x8374
                                                 (begin
                                                   (write '(funapp 2338 50))
                                                   (display "\n")
                                                   (POSN/C j7430 k7431 g7428)))
                                                (x8373
                                                 (begin
                                                   (write '(funapp 2339 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7430
                                                    k7431
                                                    g7429))))
                                               (begin
                                                 (write '(funapp 2340 42))
                                                 (display "\n")
                                                 (f7432 x8374 x8373)))))
                                            (begin
                                              (write '(funapp 2341 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7430
                                               k7431
                                               x8372)))))
                                         g8371))))
                                    g8370))
                                 xj7426
                                 xk7427
                                 posn=?))))
                            g8369)))
                         (x8363
                          (letrec*
                           ((x8364
                             (letrec*
                              ((x8367 (input))
                               (x8365
                                (letrec*
                                 ((x8366 (input)))
                                 (begin
                                   (write '(funapp 2354 56))
                                   (display "\n")
                                   (cons
                                    x8366
                                    (begin
                                      (write '(funapp 2354 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2355 27))
                                (display "\n")
                                (cons x8367 x8365)))))
                           (begin
                             (write '(funapp 2356 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2356 29))
                                (display "\n")
                                'posn)
                              x8364))))
                         (x8358
                          (letrec*
                           ((x8359
                             (letrec*
                              ((x8362 (input))
                               (x8360
                                (letrec*
                                 ((x8361 (input)))
                                 (begin
                                   (write '(funapp 2363 56))
                                   (display "\n")
                                   (cons
                                    x8361
                                    (begin
                                      (write '(funapp 2363 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2364 27))
                                (display "\n")
                                (cons x8362 x8360)))))
                           (begin
                             (write '(funapp 2365 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2365 29))
                                (display "\n")
                                'posn)
                              x8359)))))
                        (begin
                          (write '(funapp 2366 21))
                          (display "\n")
                          (x8368 x8363 x8358)))
                       (letrec*
                        ((xj7433
                          (begin
                            (write '(funapp 2368 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2368 34))
                               (display "\n")
                               'module))))
                         (xk7434
                          (begin
                            (write '(funapp 2368 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2368 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8375
                           (begin
                             (write '(funapp 2369 38))
                             (display "\n")
                             (WORLD/C xj7433 xk7434 WORLD))))
                         g8375))
                       (letrec*
                        ((xj7435
                          (begin
                            (write '(funapp 2371 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2371 34))
                               (display "\n")
                               'module))))
                         (xk7436
                          (begin
                            (write '(funapp 2371 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2371 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8376
                           (begin
                             (write '(funapp 2373 30))
                             (display "\n")
                             (image/c xj7435 xk7436 BACKGROUND))))
                         g8376))
                       (letrec*
                        ((xj7437
                          (begin
                            (write '(funapp 2376 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2376 34))
                               (display "\n")
                               'module))))
                         (xk7438
                          (begin
                            (write '(funapp 2376 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2376 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8377
                           (begin
                             (write '(funapp 2378 30))
                             (display "\n")
                             (image/c xj7437 xk7438 FOOD-IMAGE))))
                         g8377))
                       (letrec*
                        ((xj7439
                          (begin
                            (write '(funapp 2381 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2381 34))
                               (display "\n")
                               'module))))
                         (xk7440
                          (begin
                            (write '(funapp 2381 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2381 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8378
                           (begin
                             (write '(funapp 2383 30))
                             (display "\n")
                             (image/c xj7439 xk7440 SEGMENT-IMAGE))))
                         g8378))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2386 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2386 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2386 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2386 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8379
                           (begin
                             (write '(funapp 2388 30))
                             (display "\n")
                             (real?/c xj7441 xk7442 GRID-SIZE))))
                         g8379))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2391 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2391 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2391 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2391 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8380
                           (begin
                             (write '(funapp 2393 30))
                             (display "\n")
                             (real?/c xj7443 xk7444 BOARD-HEIGHT-PIXELS))))
                         g8380))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2396 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2396 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2396 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2396 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8381
                           (begin
                             (write '(funapp 2398 30))
                             (display "\n")
                             (real?/c xj7445 xk7446 BOARD-WIDTH))))
                         g8381))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2401 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2401 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2401 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2401 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8382
                           (begin
                             (write '(funapp 2403 30))
                             (display "\n")
                             (real?/c xj7447 xk7448 BOARD-HEIGHT))))
                         g8382))
                       (letrec*
                        ((x8388
                          (letrec*
                           ((xj7449
                             (begin
                               (write '(funapp 2408 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2408 37))
                                  (display "\n")
                                  'module))))
                            (xk7450
                             (begin
                               (write '(funapp 2408 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2408 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8389
                              (begin
                                (write '(funapp 2411 27))
                                (display "\n")
                                ((lambda (j7452 k7453 f7454)
                                   (letrec*
                                    ((g8390
                                      (lambda (g7451)
                                        (letrec*
                                         ((g8391
                                           (letrec*
                                            ((x8392
                                              (letrec*
                                               ((x8393
                                                 (begin
                                                   (write '(funapp 2420 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7452
                                                    k7453
                                                    g7451))))
                                               (begin
                                                 (write '(funapp 2421 42))
                                                 (display "\n")
                                                 (f7454 x8393)))))
                                            (begin
                                              (write '(funapp 2422 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7452
                                               k7453
                                               x8392)))))
                                         g8391))))
                                    g8390))
                                 xj7449
                                 xk7450
                                 snake-wall-collide?))))
                            g8389)))
                         (x8383
                          (letrec*
                           ((x8384
                             (letrec*
                              ((x8387 (input))
                               (x8385
                                (letrec*
                                 ((x8386 (input)))
                                 (begin
                                   (write '(funapp 2435 56))
                                   (display "\n")
                                   (cons
                                    x8386
                                    (begin
                                      (write '(funapp 2435 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2436 27))
                                (display "\n")
                                (cons x8387 x8385)))))
                           (begin
                             (write '(funapp 2437 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2437 29))
                                (display "\n")
                                'snake)
                              x8384)))))
                        (begin
                          (write '(funapp 2438 21))
                          (display "\n")
                          (x8388 x8383)))
                       (letrec*
                        ((x8399
                          (letrec*
                           ((xj7455
                             (begin
                               (write '(funapp 2442 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2442 37))
                                  (display "\n")
                                  'module))))
                            (xk7456
                             (begin
                               (write '(funapp 2442 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2442 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8400
                              (begin
                                (write '(funapp 2445 27))
                                (display "\n")
                                ((lambda (j7458 k7459 f7460)
                                   (letrec*
                                    ((g8401
                                      (lambda (g7457)
                                        (letrec*
                                         ((g8402
                                           (letrec*
                                            ((x8403
                                              (letrec*
                                               ((x8404
                                                 (begin
                                                   (write '(funapp 2454 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7458
                                                    k7459
                                                    g7457))))
                                               (begin
                                                 (write '(funapp 2455 42))
                                                 (display "\n")
                                                 (f7460 x8404)))))
                                            (begin
                                              (write '(funapp 2456 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7458
                                               k7459
                                               x8403)))))
                                         g8402))))
                                    g8401))
                                 xj7455
                                 xk7456
                                 snake-self-collide?))))
                            g8400)))
                         (x8394
                          (letrec*
                           ((x8395
                             (letrec*
                              ((x8398 (input))
                               (x8396
                                (letrec*
                                 ((x8397 (input)))
                                 (begin
                                   (write '(funapp 2469 56))
                                   (display "\n")
                                   (cons
                                    x8397
                                    (begin
                                      (write '(funapp 2469 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2470 27))
                                (display "\n")
                                (cons x8398 x8396)))))
                           (begin
                             (write '(funapp 2471 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2471 29))
                                (display "\n")
                                'snake)
                              x8395)))))
                        (begin
                          (write '(funapp 2472 21))
                          (display "\n")
                          (x8399 x8394)))
                       (letrec*
                        ((x8406
                          (letrec*
                           ((xj7461
                             (begin
                               (write '(funapp 2476 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2476 37))
                                  (display "\n")
                                  'module))))
                            (xk7462
                             (begin
                               (write '(funapp 2476 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2476 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8407
                              (begin
                                (write '(funapp 2479 27))
                                (display "\n")
                                ((lambda (j7464 k7465 f7466)
                                   (letrec*
                                    ((g8408
                                      (lambda (g7463)
                                        (letrec*
                                         ((g8409
                                           (letrec*
                                            ((x8414
                                              (begin
                                                (write '(funapp 2486 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8410
                                              (letrec*
                                               ((x8411
                                                 (letrec*
                                                  ((x8412
                                                    (letrec*
                                                     ((x8413
                                                       (begin
                                                         (write
                                                          '(funapp 2493 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2494 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8413)))))
                                                  (begin
                                                    (write '(funapp 2495 45))
                                                    (display "\n")
                                                    (x8412
                                                     j7464
                                                     k7465
                                                     g7463)))))
                                               (begin
                                                 (write '(funapp 2496 42))
                                                 (display "\n")
                                                 (f7466 x8411)))))
                                            (begin
                                              (write '(funapp 2497 39))
                                              (display "\n")
                                              (x8414 j7464 k7465 x8410)))))
                                         g8409))))
                                    g8408))
                                 xj7461
                                 xk7462
                                 cut-tail))))
                            g8407)))
                         (x8405 (input)))
                        (begin
                          (write '(funapp 2505 21))
                          (display "\n")
                          (x8406 x8405)))
                       (letrec*
                        ((x8420
                          (letrec*
                           ((xj7467
                             (begin
                               (write '(funapp 2509 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2509 37))
                                  (display "\n")
                                  'module))))
                            (xk7468
                             (begin
                               (write '(funapp 2509 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2509 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8421
                              (begin
                                (write '(funapp 2512 27))
                                (display "\n")
                                ((lambda (j7470 k7471 f7472)
                                   (letrec*
                                    ((g8422
                                      (lambda (g7469)
                                        (letrec*
                                         ((g8423
                                           (letrec*
                                            ((x8424
                                              (letrec*
                                               ((x8425
                                                 (begin
                                                   (write '(funapp 2521 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7470
                                                    k7471
                                                    g7469))))
                                               (begin
                                                 (write '(funapp 2522 42))
                                                 (display "\n")
                                                 (f7472 x8425)))))
                                            (begin
                                              (write '(funapp 2523 39))
                                              (display "\n")
                                              (SNAKE/C j7470 k7471 x8424)))))
                                         g8423))))
                                    g8422))
                                 xj7467
                                 xk7468
                                 snake-slither))))
                            g8421)))
                         (x8415
                          (letrec*
                           ((x8416
                             (letrec*
                              ((x8419 (input))
                               (x8417
                                (letrec*
                                 ((x8418 (input)))
                                 (begin
                                   (write '(funapp 2536 56))
                                   (display "\n")
                                   (cons
                                    x8418
                                    (begin
                                      (write '(funapp 2536 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2537 27))
                                (display "\n")
                                (cons x8419 x8417)))))
                           (begin
                             (write '(funapp 2538 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2538 29))
                                (display "\n")
                                'snake)
                              x8416)))))
                        (begin
                          (write '(funapp 2539 21))
                          (display "\n")
                          (x8420 x8415)))
                       (letrec*
                        ((x8431
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 2543 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2543 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 2543 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2543 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8432
                              (begin
                                (write '(funapp 2546 27))
                                (display "\n")
                                ((lambda (j7476 k7477 f7478)
                                   (letrec*
                                    ((g8433
                                      (lambda (g7475)
                                        (letrec*
                                         ((g8434
                                           (letrec*
                                            ((x8435
                                              (letrec*
                                               ((x8436
                                                 (begin
                                                   (write '(funapp 2555 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7476
                                                    k7477
                                                    g7475))))
                                               (begin
                                                 (write '(funapp 2556 42))
                                                 (display "\n")
                                                 (f7478 x8436)))))
                                            (begin
                                              (write '(funapp 2557 39))
                                              (display "\n")
                                              (SNAKE/C j7476 k7477 x8435)))))
                                         g8434))))
                                    g8433))
                                 xj7473
                                 xk7474
                                 snake-grow))))
                            g8432)))
                         (x8426
                          (letrec*
                           ((x8427
                             (letrec*
                              ((x8430 (input))
                               (x8428
                                (letrec*
                                 ((x8429 (input)))
                                 (begin
                                   (write '(funapp 2570 56))
                                   (display "\n")
                                   (cons
                                    x8429
                                    (begin
                                      (write '(funapp 2570 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2571 27))
                                (display "\n")
                                (cons x8430 x8428)))))
                           (begin
                             (write '(funapp 2572 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2572 29))
                                (display "\n")
                                'snake)
                              x8427)))))
                        (begin
                          (write '(funapp 2573 21))
                          (display "\n")
                          (x8431 x8426)))
                       (letrec*
                        ((x8451
                          (letrec*
                           ((xj7479
                             (begin
                               (write '(funapp 2577 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2577 37))
                                  (display "\n")
                                  'module))))
                            (xk7480
                             (begin
                               (write '(funapp 2577 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2577 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8452
                              (begin
                                (write '(funapp 2580 27))
                                (display "\n")
                                ((lambda (j7483 k7484 f7485)
                                   (letrec*
                                    ((g8453
                                      (lambda (g7481 g7482)
                                        (letrec*
                                         ((g8454
                                           (letrec*
                                            ((x8455
                                              (letrec*
                                               ((x8457
                                                 (begin
                                                   (write '(funapp 2589 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7483
                                                    k7484
                                                    g7481)))
                                                (x8456
                                                 (begin
                                                   (write '(funapp 2590 50))
                                                   (display "\n")
                                                   (DIR/C j7483 k7484 g7482))))
                                               (begin
                                                 (write '(funapp 2591 42))
                                                 (display "\n")
                                                 (f7485 x8457 x8456)))))
                                            (begin
                                              (write '(funapp 2592 39))
                                              (display "\n")
                                              (WORLD/C j7483 k7484 x8455)))))
                                         g8454))))
                                    g8453))
                                 xj7479
                                 xk7480
                                 world-change-dir))))
                            g8452)))
                         (x8438
                          (letrec*
                           ((x8439
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
                                         (write '(funapp 2611 36))
                                         (display "\n")
                                         (cons
                                          x8449
                                          (begin
                                            (write '(funapp 2611 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2612 33))
                                      (display "\n")
                                      (cons x8450 x8448)))))
                                 (begin
                                   (write '(funapp 2613 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2613 35))
                                      (display "\n")
                                      'snake)
                                    x8447))))
                               (x8440
                                (letrec*
                                 ((x8441
                                   (letrec*
                                    ((x8442
                                      (letrec*
                                       ((x8445 (input))
                                        (x8443
                                         (letrec*
                                          ((x8444 (input)))
                                          (begin
                                            (write '(funapp 2624 39))
                                            (display "\n")
                                            (cons
                                             x8444
                                             (begin
                                               (write '(funapp 2624 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2625 36))
                                         (display "\n")
                                         (cons x8445 x8443)))))
                                    (begin
                                      (write '(funapp 2626 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2626 38))
                                         (display "\n")
                                         'posn)
                                       x8442)))))
                                 (begin
                                   (write '(funapp 2627 30))
                                   (display "\n")
                                   (cons
                                    x8441
                                    (begin
                                      (write '(funapp 2627 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2628 27))
                                (display "\n")
                                (cons x8446 x8440)))))
                           (begin
                             (write '(funapp 2629 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2629 29))
                                (display "\n")
                                'world)
                              x8439))))
                         (x8437 (input)))
                        (begin
                          (write '(funapp 2631 21))
                          (display "\n")
                          (x8451 x8438 x8437)))
                       (letrec*
                        ((x8471
                          (letrec*
                           ((xj7486
                             (begin
                               (write '(funapp 2635 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2635 37))
                                  (display "\n")
                                  'module))))
                            (xk7487
                             (begin
                               (write '(funapp 2635 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2635 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8472
                              (begin
                                (write '(funapp 2638 27))
                                (display "\n")
                                ((lambda (j7489 k7490 f7491)
                                   (letrec*
                                    ((g8473
                                      (lambda (g7488)
                                        (letrec*
                                         ((g8474
                                           (letrec*
                                            ((x8475
                                              (letrec*
                                               ((x8476
                                                 (begin
                                                   (write '(funapp 2647 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7489
                                                    k7490
                                                    g7488))))
                                               (begin
                                                 (write '(funapp 2648 42))
                                                 (display "\n")
                                                 (f7491 x8476)))))
                                            (begin
                                              (write '(funapp 2649 39))
                                              (display "\n")
                                              (WORLD/C j7489 k7490 x8475)))))
                                         g8474))))
                                    g8473))
                                 xj7486
                                 xk7487
                                 world->world))))
                            g8472)))
                         (x8458
                          (letrec*
                           ((x8459
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
                                         (write '(funapp 2668 36))
                                         (display "\n")
                                         (cons
                                          x8469
                                          (begin
                                            (write '(funapp 2668 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2669 33))
                                      (display "\n")
                                      (cons x8470 x8468)))))
                                 (begin
                                   (write '(funapp 2670 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2670 35))
                                      (display "\n")
                                      'snake)
                                    x8467))))
                               (x8460
                                (letrec*
                                 ((x8461
                                   (letrec*
                                    ((x8462
                                      (letrec*
                                       ((x8465 (input))
                                        (x8463
                                         (letrec*
                                          ((x8464 (input)))
                                          (begin
                                            (write '(funapp 2681 39))
                                            (display "\n")
                                            (cons
                                             x8464
                                             (begin
                                               (write '(funapp 2681 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2682 36))
                                         (display "\n")
                                         (cons x8465 x8463)))))
                                    (begin
                                      (write '(funapp 2683 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2683 38))
                                         (display "\n")
                                         'posn)
                                       x8462)))))
                                 (begin
                                   (write '(funapp 2684 30))
                                   (display "\n")
                                   (cons
                                    x8461
                                    (begin
                                      (write '(funapp 2684 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2685 27))
                                (display "\n")
                                (cons x8466 x8460)))))
                           (begin
                             (write '(funapp 2686 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2686 29))
                                (display "\n")
                                'world)
                              x8459)))))
                        (begin
                          (write '(funapp 2687 21))
                          (display "\n")
                          (x8471 x8458)))
                       (letrec*
                        ((x8491
                          (letrec*
                           ((xj7492
                             (begin
                               (write '(funapp 2691 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2691 37))
                                  (display "\n")
                                  'module))))
                            (xk7493
                             (begin
                               (write '(funapp 2691 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2691 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8492
                              (begin
                                (write '(funapp 2694 27))
                                (display "\n")
                                ((lambda (j7496 k7497 f7498)
                                   (letrec*
                                    ((g8493
                                      (lambda (g7494 g7495)
                                        (letrec*
                                         ((g8494
                                           (letrec*
                                            ((x8495
                                              (letrec*
                                               ((x8497
                                                 (begin
                                                   (write '(funapp 2703 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7496
                                                    k7497
                                                    g7494)))
                                                (x8496
                                                 (begin
                                                   (write '(funapp 2705 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7496
                                                    k7497
                                                    g7495))))
                                               (begin
                                                 (write '(funapp 2706 42))
                                                 (display "\n")
                                                 (f7498 x8497 x8496)))))
                                            (begin
                                              (write '(funapp 2707 39))
                                              (display "\n")
                                              (WORLD/C j7496 k7497 x8495)))))
                                         g8494))))
                                    g8493))
                                 xj7492
                                 xk7493
                                 handle-key))))
                            g8492)))
                         (x8478
                          (letrec*
                           ((x8479
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
                                         (write '(funapp 2726 36))
                                         (display "\n")
                                         (cons
                                          x8489
                                          (begin
                                            (write '(funapp 2726 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2727 33))
                                      (display "\n")
                                      (cons x8490 x8488)))))
                                 (begin
                                   (write '(funapp 2728 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2728 35))
                                      (display "\n")
                                      'snake)
                                    x8487))))
                               (x8480
                                (letrec*
                                 ((x8481
                                   (letrec*
                                    ((x8482
                                      (letrec*
                                       ((x8485 (input))
                                        (x8483
                                         (letrec*
                                          ((x8484 (input)))
                                          (begin
                                            (write '(funapp 2739 39))
                                            (display "\n")
                                            (cons
                                             x8484
                                             (begin
                                               (write '(funapp 2739 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2740 36))
                                         (display "\n")
                                         (cons x8485 x8483)))))
                                    (begin
                                      (write '(funapp 2741 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2741 38))
                                         (display "\n")
                                         'posn)
                                       x8482)))))
                                 (begin
                                   (write '(funapp 2742 30))
                                   (display "\n")
                                   (cons
                                    x8481
                                    (begin
                                      (write '(funapp 2742 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2743 27))
                                (display "\n")
                                (cons x8486 x8480)))))
                           (begin
                             (write '(funapp 2744 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2744 29))
                                (display "\n")
                                'world)
                              x8479))))
                         (x8477 (input)))
                        (begin
                          (write '(funapp 2746 21))
                          (display "\n")
                          (x8491 x8478 x8477)))
                       (letrec*
                        ((x8511
                          (letrec*
                           ((xj7499
                             (begin
                               (write '(funapp 2750 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2750 37))
                                  (display "\n")
                                  'module))))
                            (xk7500
                             (begin
                               (write '(funapp 2750 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2750 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8512
                              (begin
                                (write '(funapp 2753 27))
                                (display "\n")
                                ((lambda (j7502 k7503 f7504)
                                   (letrec*
                                    ((g8513
                                      (lambda (g7501)
                                        (letrec*
                                         ((g8514
                                           (letrec*
                                            ((x8515
                                              (letrec*
                                               ((x8516
                                                 (begin
                                                   (write '(funapp 2762 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7502
                                                    k7503
                                                    g7501))))
                                               (begin
                                                 (write '(funapp 2763 42))
                                                 (display "\n")
                                                 (f7504 x8516)))))
                                            (begin
                                              (write '(funapp 2764 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7502
                                               k7503
                                               x8515)))))
                                         g8514))))
                                    g8513))
                                 xj7499
                                 xk7500
                                 game-over?))))
                            g8512)))
                         (x8498
                          (letrec*
                           ((x8499
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
                                         (write '(funapp 2783 36))
                                         (display "\n")
                                         (cons
                                          x8509
                                          (begin
                                            (write '(funapp 2783 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2784 33))
                                      (display "\n")
                                      (cons x8510 x8508)))))
                                 (begin
                                   (write '(funapp 2785 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2785 35))
                                      (display "\n")
                                      'snake)
                                    x8507))))
                               (x8500
                                (letrec*
                                 ((x8501
                                   (letrec*
                                    ((x8502
                                      (letrec*
                                       ((x8505 (input))
                                        (x8503
                                         (letrec*
                                          ((x8504 (input)))
                                          (begin
                                            (write '(funapp 2796 39))
                                            (display "\n")
                                            (cons
                                             x8504
                                             (begin
                                               (write '(funapp 2796 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2797 36))
                                         (display "\n")
                                         (cons x8505 x8503)))))
                                    (begin
                                      (write '(funapp 2798 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2798 38))
                                         (display "\n")
                                         'posn)
                                       x8502)))))
                                 (begin
                                   (write '(funapp 2799 30))
                                   (display "\n")
                                   (cons
                                    x8501
                                    (begin
                                      (write '(funapp 2799 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2800 27))
                                (display "\n")
                                (cons x8506 x8500)))))
                           (begin
                             (write '(funapp 2801 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2801 29))
                                (display "\n")
                                'world)
                              x8499)))))
                        (begin
                          (write '(funapp 2802 21))
                          (display "\n")
                          (x8511 x8498)))
                       (letrec*
                        ((x8530
                          (letrec*
                           ((xj7505
                             (begin
                               (write '(funapp 2806 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2806 37))
                                  (display "\n")
                                  'module))))
                            (xk7506
                             (begin
                               (write '(funapp 2806 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2806 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8531
                              (begin
                                (write '(funapp 2809 27))
                                (display "\n")
                                ((lambda (j7508 k7509 f7510)
                                   (letrec*
                                    ((g8532
                                      (lambda (g7507)
                                        (letrec*
                                         ((g8533
                                           (letrec*
                                            ((x8534
                                              (letrec*
                                               ((x8535
                                                 (begin
                                                   (write '(funapp 2818 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7508
                                                    k7509
                                                    g7507))))
                                               (begin
                                                 (write '(funapp 2819 42))
                                                 (display "\n")
                                                 (f7510 x8535)))))
                                            (begin
                                              (write '(funapp 2820 39))
                                              (display "\n")
                                              (image/c j7508 k7509 x8534)))))
                                         g8533))))
                                    g8532))
                                 xj7505
                                 xk7506
                                 world->scene))))
                            g8531)))
                         (x8517
                          (letrec*
                           ((x8518
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
                                         (write '(funapp 2839 36))
                                         (display "\n")
                                         (cons
                                          x8528
                                          (begin
                                            (write '(funapp 2839 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2840 33))
                                      (display "\n")
                                      (cons x8529 x8527)))))
                                 (begin
                                   (write '(funapp 2841 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2841 35))
                                      (display "\n")
                                      'snake)
                                    x8526))))
                               (x8519
                                (letrec*
                                 ((x8520
                                   (letrec*
                                    ((x8521
                                      (letrec*
                                       ((x8524 (input))
                                        (x8522
                                         (letrec*
                                          ((x8523 (input)))
                                          (begin
                                            (write '(funapp 2852 39))
                                            (display "\n")
                                            (cons
                                             x8523
                                             (begin
                                               (write '(funapp 2852 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2853 36))
                                         (display "\n")
                                         (cons x8524 x8522)))))
                                    (begin
                                      (write '(funapp 2854 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2854 38))
                                         (display "\n")
                                         'posn)
                                       x8521)))))
                                 (begin
                                   (write '(funapp 2855 30))
                                   (display "\n")
                                   (cons
                                    x8520
                                    (begin
                                      (write '(funapp 2855 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2856 27))
                                (display "\n")
                                (cons x8525 x8519)))))
                           (begin
                             (write '(funapp 2857 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2857 29))
                                (display "\n")
                                'world)
                              x8518)))))
                        (begin
                          (write '(funapp 2858 21))
                          (display "\n")
                          (x8530 x8517)))
                       (letrec*
                        ((x8542
                          (letrec*
                           ((xj7511
                             (begin
                               (write '(funapp 2862 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2862 37))
                                  (display "\n")
                                  'module))))
                            (xk7512
                             (begin
                               (write '(funapp 2862 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2862 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8543
                              (begin
                                (write '(funapp 2865 27))
                                (display "\n")
                                ((lambda (j7515 k7516 f7517)
                                   (letrec*
                                    ((g8544
                                      (lambda (g7513 g7514)
                                        (letrec*
                                         ((g8545
                                           (letrec*
                                            ((x8546
                                              (letrec*
                                               ((x8548
                                                 (begin
                                                   (write '(funapp 2874 50))
                                                   (display "\n")
                                                   (POSN/C j7515 k7516 g7513)))
                                                (x8547
                                                 (begin
                                                   (write '(funapp 2875 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7515
                                                    k7516
                                                    g7514))))
                                               (begin
                                                 (write '(funapp 2876 42))
                                                 (display "\n")
                                                 (f7517 x8548 x8547)))))
                                            (begin
                                              (write '(funapp 2877 39))
                                              (display "\n")
                                              (image/c j7515 k7516 x8546)))))
                                         g8545))))
                                    g8544))
                                 xj7511
                                 xk7512
                                 food+scene))))
                            g8543)))
                         (x8537
                          (letrec*
                           ((x8538
                             (letrec*
                              ((x8541 (input))
                               (x8539
                                (letrec*
                                 ((x8540 (input)))
                                 (begin
                                   (write '(funapp 2890 56))
                                   (display "\n")
                                   (cons
                                    x8540
                                    (begin
                                      (write '(funapp 2890 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2891 27))
                                (display "\n")
                                (cons x8541 x8539)))))
                           (begin
                             (write '(funapp 2892 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2892 29))
                                (display "\n")
                                'posn)
                              x8538))))
                         (x8536
                          (begin
                            (write '(funapp 2893 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2893 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2893 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2894 21))
                          (display "\n")
                          (x8542 x8537 x8536)))
                       (letrec*
                        ((x8553
                          (letrec*
                           ((xj7518
                             (begin
                               (write '(funapp 2898 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2898 37))
                                  (display "\n")
                                  'module))))
                            (xk7519
                             (begin
                               (write '(funapp 2898 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2898 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8554
                              (begin
                                (write '(funapp 2901 27))
                                (display "\n")
                                ((lambda (j7524 k7525 f7526)
                                   (letrec*
                                    ((g8555
                                      (lambda (g7520 g7521 g7522 g7523)
                                        (letrec*
                                         ((g8556
                                           (letrec*
                                            ((x8557
                                              (letrec*
                                               ((x8561
                                                 (begin
                                                   (write '(funapp 2910 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7524
                                                    k7525
                                                    g7520)))
                                                (x8560
                                                 (begin
                                                   (write '(funapp 2911 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7524
                                                    k7525
                                                    g7521)))
                                                (x8559
                                                 (begin
                                                   (write '(funapp 2912 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7524
                                                    k7525
                                                    g7522)))
                                                (x8558
                                                 (begin
                                                   (write '(funapp 2913 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7524
                                                    k7525
                                                    g7523))))
                                               (begin
                                                 (write '(funapp 2914 42))
                                                 (display "\n")
                                                 (f7526
                                                  x8561
                                                  x8560
                                                  x8559
                                                  x8558)))))
                                            (begin
                                              (write '(funapp 2915 39))
                                              (display "\n")
                                              (image/c j7524 k7525 x8557)))))
                                         g8556))))
                                    g8555))
                                 xj7518
                                 xk7519
                                 place-image-on-grid))))
                            g8554)))
                         (x8552
                          (begin
                            (write '(funapp 2922 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2922 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2922 41))
                               (display "\n")
                               '()))))
                         (x8551 (input))
                         (x8550 (input))
                         (x8549
                          (begin
                            (write '(funapp 2925 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2925 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2925 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2926 21))
                          (display "\n")
                          (x8553 x8552 x8551 x8550 x8549)))
                       (letrec*
                        ((x8568
                          (letrec*
                           ((xj7527
                             (begin
                               (write '(funapp 2930 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2930 37))
                                  (display "\n")
                                  'module))))
                            (xk7528
                             (begin
                               (write '(funapp 2930 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2930 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8569
                              (begin
                                (write '(funapp 2933 27))
                                (display "\n")
                                ((lambda (j7531 k7532 f7533)
                                   (letrec*
                                    ((g8570
                                      (lambda (g7529 g7530)
                                        (letrec*
                                         ((g8571
                                           (letrec*
                                            ((x8572
                                              (letrec*
                                               ((x8574
                                                 (begin
                                                   (write '(funapp 2942 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7531
                                                    k7532
                                                    g7529)))
                                                (x8573
                                                 (begin
                                                   (write '(funapp 2943 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7531
                                                    k7532
                                                    g7530))))
                                               (begin
                                                 (write '(funapp 2944 42))
                                                 (display "\n")
                                                 (f7533 x8574 x8573)))))
                                            (begin
                                              (write '(funapp 2945 39))
                                              (display "\n")
                                              (image/c j7531 k7532 x8572)))))
                                         g8571))))
                                    g8570))
                                 xj7527
                                 xk7528
                                 snake+scene))))
                            g8569)))
                         (x8563
                          (letrec*
                           ((x8564
                             (letrec*
                              ((x8567 (input))
                               (x8565
                                (letrec*
                                 ((x8566 (input)))
                                 (begin
                                   (write '(funapp 2958 56))
                                   (display "\n")
                                   (cons
                                    x8566
                                    (begin
                                      (write '(funapp 2958 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2959 27))
                                (display "\n")
                                (cons x8567 x8565)))))
                           (begin
                             (write '(funapp 2960 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2960 29))
                                (display "\n")
                                'snake)
                              x8564))))
                         (x8562
                          (begin
                            (write '(funapp 2961 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2961 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2961 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2962 21))
                          (display "\n")
                          (x8568 x8563 x8562)))
                       (letrec*
                        ((x8577
                          (letrec*
                           ((xj7534
                             (begin
                               (write '(funapp 2966 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2966 37))
                                  (display "\n")
                                  'module))))
                            (xk7535
                             (begin
                               (write '(funapp 2966 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2966 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8578
                              (begin
                                (write '(funapp 2969 27))
                                (display "\n")
                                ((lambda (j7538 k7539 f7540)
                                   (letrec*
                                    ((g8579
                                      (lambda (g7536 g7537)
                                        (letrec*
                                         ((g8580
                                           (letrec*
                                            ((x8581
                                              (letrec*
                                               ((x8583
                                                 (letrec*
                                                  ((x8584
                                                    (begin
                                                      (write '(funapp 2980 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 2981 45))
                                                    (display "\n")
                                                    (x8584
                                                     j7538
                                                     k7539
                                                     g7536))))
                                                (x8582
                                                 (begin
                                                   (write '(funapp 2982 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7538
                                                    k7539
                                                    g7537))))
                                               (begin
                                                 (write '(funapp 2983 42))
                                                 (display "\n")
                                                 (f7540 x8583 x8582)))))
                                            (begin
                                              (write '(funapp 2984 39))
                                              (display "\n")
                                              (image/c j7538 k7539 x8581)))))
                                         g8580))))
                                    g8579))
                                 xj7534
                                 xk7535
                                 segments+scene))))
                            g8578)))
                         (x8576 (input))
                         (x8575
                          (begin
                            (write '(funapp 2992 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2992 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2992 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2993 21))
                          (display "\n")
                          (x8577 x8576 x8575)))
                       (letrec*
                        ((x8591
                          (letrec*
                           ((xj7541
                             (begin
                               (write '(funapp 2997 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2997 37))
                                  (display "\n")
                                  'module))))
                            (xk7542
                             (begin
                               (write '(funapp 2997 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2997 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8592
                              (begin
                                (write '(funapp 3000 27))
                                (display "\n")
                                ((lambda (j7545 k7546 f7547)
                                   (letrec*
                                    ((g8593
                                      (lambda (g7543 g7544)
                                        (letrec*
                                         ((g8594
                                           (letrec*
                                            ((x8595
                                              (letrec*
                                               ((x8597
                                                 (begin
                                                   (write '(funapp 3009 50))
                                                   (display "\n")
                                                   (POSN/C j7545 k7546 g7543)))
                                                (x8596
                                                 (begin
                                                   (write '(funapp 3010 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7545
                                                    k7546
                                                    g7544))))
                                               (begin
                                                 (write '(funapp 3011 42))
                                                 (display "\n")
                                                 (f7547 x8597 x8596)))))
                                            (begin
                                              (write '(funapp 3012 39))
                                              (display "\n")
                                              (image/c j7545 k7546 x8595)))))
                                         g8594))))
                                    g8593))
                                 xj7541
                                 xk7542
                                 segment+scene))))
                            g8592)))
                         (x8586
                          (letrec*
                           ((x8587
                             (letrec*
                              ((x8590 (input))
                               (x8588
                                (letrec*
                                 ((x8589 (input)))
                                 (begin
                                   (write '(funapp 3025 56))
                                   (display "\n")
                                   (cons
                                    x8589
                                    (begin
                                      (write '(funapp 3025 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3026 27))
                                (display "\n")
                                (cons x8590 x8588)))))
                           (begin
                             (write '(funapp 3027 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3027 29))
                                (display "\n")
                                'posn)
                              x8587))))
                         (x8585
                          (begin
                            (write '(funapp 3028 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3028 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3028 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3029 21))
                          (display "\n")
                          (x8591 x8586 x8585)))))))))
               g8357))))
           g7577))))
       g7575)))
    g7574)))
