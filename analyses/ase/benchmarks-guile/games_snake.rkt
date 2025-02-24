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
          ((>=
            (lambda (x y)
              (letrec*
               ((g7576
                 (letrec*
                  ((x7578
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7578))))
                (g7577
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7579
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7580 (if val7244 val7244 #f))) g7580)))))
                   g7579))))
               g7577)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7581
                 (letrec*
                  ((x7583
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7583))))
                (g7582
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7584
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7585 (if val7246 val7246 #f))) g7585)))))
                   g7584))))
               g7582)))
           (>
            (lambda (x y)
              (letrec*
               ((g7586
                 (letrec*
                  ((x7588
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7588))))
                (g7587
                 (letrec*
                  ((x7589
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7589)))))
               g7587)))
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
           ((g7590 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7591
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7592
                     (lambda (k j lst)
                       (letrec*
                        ((g7593
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7594
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7594))
                             lst))))
                        g7593))))
                   g7592)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x-cnd7596
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7596
                        g7267
                        (begin
                          (write '(blame g7265 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7595)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x-cnd7598
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7598
                        g7270
                        (begin
                          (write '(blame g7268 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7597)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x-cnd7600
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7600
                        g7273
                        (begin
                          (write '(blame g7271 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7599)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x-cnd7602
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7603 #t)) g7603)) g7276))))
                      (if x-cnd7602
                        g7276
                        (begin
                          (write '(blame g7274 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7601)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7606 #t)) g7606)) g7279))))
                      (if x-cnd7605
                        g7279
                        (begin
                          (write '(blame g7277 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7604)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x-cnd7608
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7608
                        g7282
                        (begin
                          (write '(blame g7280 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7607)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7610
                        g7285
                        (begin
                          (write '(blame g7283 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7609)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x-cnd7612
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7612
                        g7288
                        (begin
                          (write '(blame g7286 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7611)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7614
                        g7291
                        (begin
                          (write '(blame g7289 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7613)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7615
                     (lambda (k j v)
                       (letrec*
                        ((g7616
                          (letrec*
                           ((x-cnd7617
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7617
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7616))))
                   g7615)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7618
                     (lambda (k j v)
                       (letrec*
                        ((g7619
                          (letrec*
                           ((x-cnd7620
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7620
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7624
                                (letrec*
                                 ((x7625
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7625))))
                               (x7621
                                (letrec*
                                 ((x7623
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7622
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7623 k j x7622)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7624 x7621)))))))
                        g7619))))
                   g7618)))
               (any? (lambda (v) (letrec* ((g7626 #t)) g7626)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7628)))))
                   g7627)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7631
                                (letrec*
                                 ((x7632
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7632)))))
                              g7631))
                           g7294))))
                      (if x-cnd7630
                        g7294
                        (begin
                          (write '(blame g7292 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7629)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7633
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7634
                          (letrec*
                           ((x-cnd7635
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7636
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7636))
                                g7297))))
                           (if x-cnd7635
                             g7297
                             (begin
                               (write '(blame g7295 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7634))))
                   g7633)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7637
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7638
                          (letrec*
                           ((x-cnd7639
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7640
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7640))
                                g7300))))
                           (if x-cnd7639
                             g7300
                             (begin
                               (write '(blame g7298 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7638))))
                   g7637)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7641
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7642
                          (letrec*
                           ((x-cnd7643
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7644
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7644))
                                g7303))))
                           (if x-cnd7643
                             g7303
                             (begin
                               (write '(blame g7301 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7642))))
                   g7641)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7645
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7646
                          (letrec*
                           ((x-cnd7647
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7648
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7648))
                                g7306))))
                           (if x-cnd7647
                             g7306
                             (begin
                               (write '(blame g7304 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7646))))
                   g7645)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7649
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7650
                          (letrec*
                           ((x-cnd7651
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7652
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7652))
                                g7309))))
                           (if x-cnd7651
                             g7309
                             (begin
                               (write '(blame g7307 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7650))))
                   g7649)))
               (meta (lambda (v) (letrec* ((g7653 v)) g7653)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7654
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7656
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7657
                                 (letrec*
                                  ((x7658
                                    (letrec*
                                     ((x7660
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7659
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7316 x7660 x7659)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7658)))))
                               g7657))))
                          g7656))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7655
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7655))))))
                  g7654)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7661
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7663
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7664
                                 (letrec*
                                  ((x7665
                                    (letrec*
                                     ((x7667
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7666
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7323 x7667 x7666)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7665)))))
                               g7664))))
                          g7663))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7662
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7662))))))
                  g7661)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7668
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7670
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7671
                                 (letrec*
                                  ((x7672
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7673
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7330 x7674 x7673)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7672)))))
                               g7671))))
                          g7670))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7669
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7669))))))
                  g7668)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7675
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7677
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7678
                                 (letrec*
                                  ((x7679
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7680
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7337 x7681 x7680)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7679)))))
                               g7678))))
                          g7677))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7676
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7676))))))
                  g7675)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7682
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7684
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7685
                                 (letrec*
                                  ((x7686
                                    (letrec*
                                     ((x7688
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7687
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7344 x7688 x7687)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7686)))))
                               g7685))))
                          g7684))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7683
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7683))))))
                  g7682)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7689
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7691
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7692
                                 (letrec*
                                  ((x7693
                                    (letrec*
                                     ((x7695
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7694
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7351 x7695 x7694)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7693)))))
                               g7692))))
                          g7691))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7690
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7690))))))
                  g7689)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7696
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7698
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7699
                                 (letrec*
                                  ((x7700
                                    (letrec*
                                     ((x7702
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7701
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7358 x7702 x7701)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7700)))))
                               g7699))))
                          g7698))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7697
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7697))))))
                  g7696)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7703
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7705
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7706
                                 (letrec*
                                  ((x7707
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7708
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7365 x7709 x7708)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7707)))))
                               g7706))))
                          g7705))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7704
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7704))))))
                  g7703)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7710
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7712
                            (lambda (g7368)
                              (letrec*
                               ((g7713
                                 (letrec*
                                  ((x7714
                                    (letrec*
                                     ((x7715
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7371 x7715)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7714)))))
                               g7713))))
                          g7712))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7711
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7711))))))
                  g7710)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7716
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7718
                            (lambda (g7374)
                              (letrec*
                               ((g7719
                                 (letrec*
                                  ((x7720
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7377 x7721)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7720)))))
                               g7719))))
                          g7718))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7717
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7717))))))
                  g7716)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7722
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7724
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7725
                                 (letrec*
                                  ((x7726
                                    (letrec*
                                     ((x7728
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7727
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7384 x7728 x7727)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7726)))))
                               g7725))))
                          g7724))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7723
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7723))))))
                  g7722)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7729
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7731
                            (lambda (g7387)
                              (letrec*
                               ((g7732
                                 (letrec*
                                  ((x7733
                                    (letrec*
                                     ((x7734
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7390 x7734)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7733)))))
                               g7732))))
                          g7731))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7730
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7730))))))
                  g7729)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7735
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7737
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7738
                                 (letrec*
                                  ((x7739
                                    (letrec*
                                     ((x7741
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7740
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7397 x7741 x7740)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7739)))))
                               g7738))))
                          g7737))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7736
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7736))))))
                  g7735)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7742
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7742)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7745)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x-cnd7751
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7751
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7755))))
                          (x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7753)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7754 x7752)))))))
                   g7748)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (cdadar
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7765)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7769))))
                    (g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 707 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 708 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7771
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7772 res))
                       g7772))))
                   g7768)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7777)))))
                   g7776)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        #f
                        (letrec*
                         ((x-cnd7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7785 k)))))
                         (if x-cnd7784
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7786)))))))))
                   g7781)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7788)))))
                   g7787)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        ""
                        (letrec*
                         ((x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7796))))
                          (x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7794)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7795 x7793)))))))
                   g7790)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7800))))
                    (g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7802
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7802))))
                   g7799)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (letrec*
                         ((x7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7806)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7805)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7804)))))
                   g7803)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7812
                        x
                        (letrec*
                         ((x7814
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7813
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7814 x7813)))))))
                   g7809)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7815
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7815)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x-cnd7817
                        (letrec*
                         ((x7818 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7818)))))
                      (if x-cnd7817
                        (letrec*
                         ((x7819 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7819)))
                        #f))))
                   g7816)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7821
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7821 9)))))
                      (letrec*
                       ((g7822
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7823 10)))))
                            (letrec*
                             ((g7824
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7825
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7825 32))))))
                             g7824)))))
                       g7822))))
                   g7820)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7827
                        (letrec*
                         ((x7828
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7828)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7827)))))
                   g7826)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7831))))
                    (g7830
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7830)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7832 #f)) g7832)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7834)))))
                   g7833)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7837))))
                    (g7836
                     (letrec*
                      ((x-cnd7838
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7838
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7836)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7840
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7841
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7841
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7842
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7843
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7843
                                       (letrec*
                                        ((x-cnd7844
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7844
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7845
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7846
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7846
                                             (letrec*
                                              ((x-cnd7847
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7847
                                                (letrec*
                                                 ((x-cnd7848
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7849
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7850 x7849)))))
                                                 (if x-cnd7848
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7851
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7852 x7851)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7853
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7854
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7854
                                                (letrec*
                                                 ((x-cnd7855
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7855
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7856
                                                       (letrec*
                                                        ((x-cnd7857
                                                          (letrec*
                                                           ((x7858
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
                                                             (display "\n")
                                                             (= x7858 n)))))
                                                        (if x-cnd7857
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7859
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          959
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7860
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7861
                                                                           (letrec*
                                                                            ((x7863
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   968
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7862
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   972
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 975
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7863
                                                                               x7862)))))
                                                                         (if x-cnd7861
                                                                           (letrec*
                                                                            ((x7864
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   981
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 984
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7864)))
                                                                           #f)))))
                                                                    g7860))))
                                                                g7859))))
                                                           (letrec*
                                                            ((g7865
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7865))
                                                          #f))))
                                                     g7856))
                                                   #f))
                                                #f)))))
                                         g7853)))))
                                   g7845)))))
                             g7842)))))
                       g7840))))
                   g7839)))
               (cdaaar
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
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7869)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7868)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7867)))))
                   g7866)))
               (caaddr
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7872)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7871)))))
                   g7870)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7874
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7874)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7878))))
                    (g7876
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7879))))
                    (g7877
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1033 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1034 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7880
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7881 res))
                       g7881))))
                   g7877)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7882
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7882)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7886))))
                    (g7884
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7887))))
                    (g7885
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7888
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7888))))
                   g7885)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7891)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7890)))))
                   g7889)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (letrec*
                         ((x7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7895)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7894)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7893)))))
                   g7892)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7901)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7900)))))
                   g7899)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7907)))))
                   g7904)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7911)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7910)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7909)))))
                   g7908)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7913)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7915
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7915)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7918)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7917)))))
                   g7916)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7919
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7919)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7927))))
                          (x7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7925)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7926 x7924)))))))
                   g7921)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7931)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7930)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7935)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7934)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7933)))))
                   g7932)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7939)))))
                   g7937)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7943)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x-cnd7949
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7949
                        (letrec*
                         ((g7950
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7950)
                        (letrec*
                         ((x-cnd7951
                           (letrec*
                            ((x7952
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7952)))))
                         (if x-cnd7951
                           (letrec*
                            ((g7953
                              (letrec*
                               ((x7954
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7954)))))
                            g7953)
                           (letrec*
                            ((x-cnd7955
                              (letrec*
                               ((x7956
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7956)))))
                            (if x-cnd7955
                              (letrec*
                               ((g7957
                                 (letrec*
                                  ((x7959
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7958
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7959 x7958)))))
                               g7957)
                              (letrec*
                               ((x-cnd7960
                                 (letrec*
                                  ((x7961
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7961)))))
                               (if x-cnd7960
                                 (letrec*
                                  ((g7962
                                    (letrec*
                                     ((x7965
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7964
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7963
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7965 x7964 x7963)))))
                                  g7962)
                                 (letrec*
                                  ((x-cnd7966
                                    (letrec*
                                     ((x7967
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7967)))))
                                  (if x-cnd7966
                                    (letrec*
                                     ((g7968
                                       (letrec*
                                        ((x7972
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7971
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7970
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7969
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7972 x7971 x7970 x7969)))))
                                     g7968)
                                    (letrec*
                                     ((x-cnd7973
                                       (letrec*
                                        ((x7974
                                          (letrec*
                                           ((x7975
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7975)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7974)))))
                                     (if x-cnd7973
                                       (letrec*
                                        ((g7976
                                          (letrec*
                                           ((x7982
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7981
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7980
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7979
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7977
                                             (letrec*
                                              ((x7978
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7978)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7982
                                              x7981
                                              x7980
                                              x7979
                                              x7977)))))
                                        g7976)
                                       (letrec*
                                        ((x-cnd7983
                                          (letrec*
                                           ((x7984
                                             (letrec*
                                              ((x7985
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7985)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7984)))))
                                        (if x-cnd7983
                                          (letrec*
                                           ((g7986
                                             (letrec*
                                              ((x7994
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7993
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7992
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7991
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7989
                                                (letrec*
                                                 ((x7990
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7990))))
                                               (x7987
                                                (letrec*
                                                 ((x7988
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7988)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7994
                                                 x7993
                                                 x7992
                                                 x7991
                                                 x7989
                                                 x7987)))))
                                           g7986)
                                          (letrec*
                                           ((x-cnd7995
                                             (letrec*
                                              ((x7996
                                                (letrec*
                                                 ((x7997
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7997)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7996)))))
                                           (if x-cnd7995
                                             (letrec*
                                              ((g7998
                                                (letrec*
                                                 ((x8008
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8007
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8006
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8005
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8003
                                                   (letrec*
                                                    ((x8004
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x8004))))
                                                  (x8001
                                                   (letrec*
                                                    ((x8002
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x8002))))
                                                  (x7999
                                                   (letrec*
                                                    ((x8000
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x8000)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x8008
                                                    x8007
                                                    x8006
                                                    x8005
                                                    x8003
                                                    x8001
                                                    x7999)))))
                                              g7998)
                                             (letrec*
                                              ((g8009
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8009)))))))))))))))))))
                   g7946)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x8012))))
                    (g8011
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8013
                        #f
                        (letrec*
                         ((x-cnd8014
                           (letrec*
                            ((x8015
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x8015 e)))))
                         (if x-cnd8014
                           l
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x8016)))))))))
                   g8011)))
               (cddddr
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x8020)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x8019)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x8018)))))
                   g8017)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8022
                        (letrec*
                         ((x8023
                           (letrec*
                            ((x8024
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x8024)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x8023)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x8022)))))
                   g8021)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8025
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g8025)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x8028))))
                    (g8027
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g8027)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8030
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8030))))
                   g8029)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8031
                     (letrec*
                      ((x8032
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x8032)))))
                   g8031)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8034
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8034
                           (letrec*
                            ((x8035
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x8035)))
                           #f))))
                      (letrec*
                       ((g8036
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g8036))))
                   g8033)))
               (cddaar
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
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x8040)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x8038)))))
                   g8037)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((x-cnd8042
                        (letrec*
                         ((x8043 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x8043 c)))))
                      (if x-cnd8042
                        (letrec*
                         ((x8044 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x8044)))
                        #f))))
                   g8041)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x8047))))
                    (g8046
                     (letrec*
                      ((x-cnd8048
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8048
                        #f
                        (letrec*
                         ((x-cnd8049
                           (letrec*
                            ((x8050
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x8050 k)))))
                         (if x-cnd8049
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8051
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x8051)))))))))
                   g8046)))
               (not (lambda (x) (letrec* ((g8052 (if x #f #t))) g8052)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8053
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g8053)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x8056))))
                    (g8055
                     (letrec*
                      ((x-cnd8057
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8057
                        #f
                        (letrec*
                         ((x-cnd8058
                           (letrec*
                            ((x8059
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x8059 e)))))
                         (if x-cnd8058
                           l
                           (letrec*
                            ((x8060
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x8060)))))))))
                   g8055)))
               (cadaar
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x8064)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x8063)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x8062)))))
                   g8061)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8067
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x8067))))
                    (g8066
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8068
                             (letrec*
                              ((x-cnd8069
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8069
                                0
                                (letrec*
                                 ((x8070
                                   (letrec*
                                    ((x8071
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x8071)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x8070)))))))
                           g8068))))
                      (letrec*
                       ((g8072
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g8072))))
                   g8066)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8076
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x8076))))
                    (g8074
                     (letrec*
                      ((x8077
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x8077))))
                    (g8075
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8078
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8078))))
                   g8075)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x8080)))))
                   g8079)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8082
                        (letrec*
                         ((x8083
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x8083)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x8082)))))
                   g8081)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8086
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x8086))))
                    (g8085
                     (letrec*
                      ((x-cnd8087
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8087
                        #f
                        (letrec*
                         ((x-cnd8088
                           (letrec*
                            ((x8089
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x8089 k)))))
                         (if x-cnd8088
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8090
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x8090)))))))))
                   g8085)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x8092)))))
                   g8091)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8096
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x8096))))
                    (g8094
                     (letrec*
                      ((x8097
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x8097))))
                    (g8095
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x8098)))))
                   g8095)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8099
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8100
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8100))))
                   g8099)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x8104))))
                    (g8102
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x8105))))
                    (g8103
                     (letrec*
                      ((x-cnd8106
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8106
                        #t
                        (letrec*
                         ((x-cnd8107
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8107
                           (letrec*
                            ((g8108
                              (letrec*
                               ((x8110
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x8110))))
                             (g8109
                              (letrec*
                               ((x8111
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x8111)))))
                            g8109)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g8103)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x8114))))
                    (g8113
                     (letrec*
                      ((x-cnd8115
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8115
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8113)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x8120))))
                    (g8118
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8121
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8121))))
                   g8118)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8123
                        (letrec*
                         ((x8124
                           (letrec*
                            ((x8125
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x8125)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x8124)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x8123)))))
                   g8122)))
               (newline (lambda () (letrec* ((g8126 #f)) g8126)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8129
                        (letrec*
                         ((x8130
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x8130))))
                       (x8128
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x8129 x8128)))))
                   g8127)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x8135))))
                    (g8132
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x8136))))
                    (g8133
                     (letrec*
                      ((x8137
                        (letrec*
                         ((x8138
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x8138)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x8137))))
                    (g8134
                     (letrec*
                      ((x-cnd8139
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8139
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8141
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x8140
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
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
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8143
                        a
                        (letrec*
                         ((x8144
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x8144)))))))
                   g8142)))
               (image
                (lambda ()
                  (letrec*
                   ((g8145
                     (begin
                       (write '(funapp 1653 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1653 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1653 62))
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
                          (write '(funapp 1658 39))
                          (display "\n")
                          (car image7548))))
                      (begin
                        (write '(funapp 1658 57))
                        (display "\n")
                        (eq?
                         x8147
                         (begin
                           (write '(funapp 1658 67))
                           (display "\n")
                           'image))))))
                   g8146)))
               (image/c
                (lambda (j7399 k7400 v7398)
                  (letrec*
                   ((g8148
                     (begin
                       (write '(funapp 1662 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1662 47))
                          (display "\n")
                          '())))))
                   g8148)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8149
                     (begin (write '(funapp 1663 57)) (display "\n") (image))))
                   g8149)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8150
                     (begin (write '(funapp 1664 60)) (display "\n") (image))))
                   g8150)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8151
                     (begin (write '(funapp 1666 54)) (display "\n") (image))))
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
                             (write '(funapp 1674 34))
                             (display "\n")
                             (orig-cons
                              y7551
                              (begin
                                (write '(funapp 1674 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1675 26))
                           (display "\n")
                           (orig-cons x7550 x8154)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1676 33)) (display "\n") 'posn)
                         x8153)))))
                   g8152)))
               (posn?
                (lambda (posn7549)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8156
                        (begin
                          (write '(funapp 1682 39))
                          (display "\n")
                          (car posn7549))))
                      (begin
                        (write '(funapp 1682 56))
                        (display "\n")
                        (eq?
                         x8156
                         (begin
                           (write '(funapp 1682 66))
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
                          (write '(funapp 1688 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1688 57))
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
                             (write '(funapp 1696 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1696 60))
                           (display "\n")
                           (orig-cdr x8161)))))
                      (begin
                        (write '(funapp 1697 23))
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
                             (write '(funapp 1706 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8164
                           (begin
                             (write '(funapp 1706 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (= x8165 x8164)))))
                      (if x-cnd8163
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1710 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8166
                           (begin
                             (write '(funapp 1710 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1711 26))
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
                             (write '(funapp 1721 34))
                             (display "\n")
                             (orig-cons
                              segs7556
                              (begin
                                (write '(funapp 1721 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1722 26))
                           (display "\n")
                           (orig-cons dir7555 x8170)))))
                      (begin
                        (write '(funapp 1723 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1723 33))
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
                          (write '(funapp 1729 39))
                          (display "\n")
                          (car snake7554))))
                      (begin
                        (write '(funapp 1729 57))
                        (display "\n")
                        (eq?
                         x8172
                         (begin
                           (write '(funapp 1729 67))
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
                          (write '(funapp 1735 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1735 58))
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
                             (write '(funapp 1743 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1743 61))
                           (display "\n")
                           (orig-cdr x8177)))))
                      (begin
                        (write '(funapp 1744 23))
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
                             (write '(funapp 1753 34))
                             (display "\n")
                             (orig-cons
                              food7561
                              (begin
                                (write '(funapp 1753 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1754 26))
                           (display "\n")
                           (orig-cons snake7560 x8180)))))
                      (begin
                        (write '(funapp 1755 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1755 33))
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
                          (write '(funapp 1761 39))
                          (display "\n")
                          (car world7559))))
                      (begin
                        (write '(funapp 1761 57))
                        (display "\n")
                        (eq?
                         x8182
                         (begin
                           (write '(funapp 1761 67))
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
                          (write '(funapp 1767 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1767 58))
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
                             (write '(funapp 1775 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1775 61))
                           (display "\n")
                           (orig-cdr x8187)))))
                      (begin
                        (write '(funapp 1776 23))
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
                          (write '(funapp 1784 25))
                          (display "\n")
                          ((lambda (v7404)
                             (letrec*
                              ((g8190
                                (letrec*
                                 ((x-cnd8191
                                   (begin
                                     (write '(funapp 1788 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1788 48))
                                        (display "\n")
                                        'up)
                                      v7404))))
                                 (if x-cnd8191
                                   #t
                                   (letrec*
                                    ((x-cnd8192
                                      (begin
                                        (write '(funapp 1792 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1792 51))
                                           (display "\n")
                                           'down)
                                         v7404))))
                                    (if x-cnd8192
                                      #t
                                      (letrec*
                                       ((x-cnd8193
                                         (begin
                                           (write '(funapp 1796 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1796 54))
                                              (display "\n")
                                              'left)
                                            v7404))))
                                       (if x-cnd8193
                                         #t
                                         (begin
                                           (write '(funapp 1799 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1799 44))
                                              (display "\n")
                                              'right)
                                            v7404))))))))))
                              g8190))
                           g7407))))
                      (if x-cnd8189
                        g7407
                        (begin
                          (write '(blame g7405 1804 24))
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
                                (write '(funapp 1824 37))
                                (display "\n")
                                (orig-cdr v7408))))
                            (begin
                              (write '(funapp 1825 29))
                              (display "\n")
                              (orig-car x8196)))))
                         (begin
                           (write '(funapp 1826 26))
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
                                       (write '(funapp 1836 44))
                                       (display "\n")
                                       (orig-cdr v7408))))
                                   (begin
                                     (write '(funapp 1837 36))
                                     (display "\n")
                                     (orig-cdr x8200)))))
                                (begin
                                  (write '(funapp 1838 33))
                                  (display "\n")
                                  (orig-car x8199)))))
                             (begin
                               (write '(funapp 1839 30))
                               (display "\n")
                               (real?/c j7409 k7410 x8198)))))
                          (letrec*
                           ((g8201
                             (letrec*
                              ((x8202
                                (letrec*
                                 ((x8203
                                   (begin
                                     (write '(funapp 1845 42))
                                     (display "\n")
                                     (cons
                                      checked7412
                                      (begin
                                        (write '(funapp 1845 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1846 34))
                                   (display "\n")
                                   (cons checked7411 x8203)))))
                              (begin
                                (write '(funapp 1847 31))
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
                                (write '(funapp 1860 37))
                                (display "\n")
                                (orig-cdr v7414))))
                            (begin
                              (write '(funapp 1861 29))
                              (display "\n")
                              (orig-car x8206)))))
                         (begin
                           (write '(funapp 1862 26))
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
                                    (write '(funapp 1870 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1871 33))
                                  (display "\n")
                                  (and/c cons?/c x8212))))
                              (x8208
                               (letrec*
                                ((x8209
                                  (letrec*
                                   ((x8210
                                     (begin
                                       (write '(funapp 1876 44))
                                       (display "\n")
                                       (orig-cdr v7414))))
                                   (begin
                                     (write '(funapp 1877 36))
                                     (display "\n")
                                     (orig-cdr x8210)))))
                                (begin
                                  (write '(funapp 1878 33))
                                  (display "\n")
                                  (orig-car x8209)))))
                             (begin
                               (write '(funapp 1879 30))
                               (display "\n")
                               (x8211 j7415 k7416 x8208)))))
                          (letrec*
                           ((g8213
                             (letrec*
                              ((x8214
                                (letrec*
                                 ((x8215
                                   (begin
                                     (write '(funapp 1885 42))
                                     (display "\n")
                                     (cons
                                      checked7418
                                      (begin
                                        (write '(funapp 1885 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1886 34))
                                   (display "\n")
                                   (cons checked7417 x8215)))))
                              (begin
                                (write '(funapp 1887 31))
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
                                (write '(funapp 1900 37))
                                (display "\n")
                                (orig-cdr v7420))))
                            (begin
                              (write '(funapp 1901 29))
                              (display "\n")
                              (orig-car x8218)))))
                         (begin
                           (write '(funapp 1902 26))
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
                                       (write '(funapp 1912 44))
                                       (display "\n")
                                       (orig-cdr v7420))))
                                   (begin
                                     (write '(funapp 1913 36))
                                     (display "\n")
                                     (orig-cdr x8222)))))
                                (begin
                                  (write '(funapp 1914 33))
                                  (display "\n")
                                  (orig-car x8221)))))
                             (begin
                               (write '(funapp 1915 30))
                               (display "\n")
                               (POSN/C j7421 k7422 x8220)))))
                          (letrec*
                           ((g8223
                             (letrec*
                              ((x8224
                                (letrec*
                                 ((x8225
                                   (begin
                                     (write '(funapp 1921 42))
                                     (display "\n")
                                     (cons
                                      checked7424
                                      (begin
                                        (write '(funapp 1921 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1922 34))
                                   (display "\n")
                                   (cons checked7423 x8225)))))
                              (begin
                                (write '(funapp 1923 31))
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
                  (write '(funapp 1930 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1931 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1933 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1934 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1935 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1937 28))
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
                           (write '(funapp 1942 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1942 59))
                         (display "\n")
                         (cons x8229 empty)))))
                    (begin
                      (write '(funapp 1943 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1943 27)) (display "\n") 'right)
                       x8228))))
                  (x8226
                   (begin
                     (write '(funapp 1944 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1945 18))
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
                             (write '(funapp 1952 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1952 61))
                           (display "\n")
                           (car x8232)))))
                      (begin
                        (write '(funapp 1953 23))
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
                             (write '(funapp 1960 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1960 63))
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
                                   (write '(funapp 1968 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1969 32))
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
                                         (write '(funapp 1977 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1978 38))
                                       (display "\n")
                                       (<= x8238 0)))))
                                  (letrec*
                                   ((g8239
                                     (if val7263
                                       val7263
                                       (letrec*
                                        ((x8240
                                          (begin
                                            (write '(funapp 1984 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1985 41))
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
                             (write '(funapp 1995 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1995 67))
                           (display "\n")
                           (car x8245))))
                       (x8242
                        (letrec*
                         ((x8243
                           (begin
                             (write '(funapp 1997 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1997 61))
                           (display "\n")
                           (cdr x8243)))))
                      (begin
                        (write '(funapp 1998 23))
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
                          (write '(funapp 2005 35))
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
                                   (write '(funapp 2012 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2012 61))
                                 (display "\n")
                                 (posn=? x8253 h))))
                             (x8250
                              (letrec*
                               ((x8251
                                 (begin
                                   (write '(funapp 2015 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2016 32))
                                 (display "\n")
                                 (segs-self-collide? h x8251)))))
                            (begin
                              (write '(funapp 2017 29))
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
                          (write '(funapp 2025 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8255
                         (letrec*
                          ((x-cnd8256
                            (begin
                              (write '(funapp 2029 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8256
                            (letrec* ((g8257 empty)) g8257)
                            (letrec*
                             ((g8258
                               (letrec*
                                ((x8260
                                  (begin
                                    (write '(funapp 2035 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8259
                                  (begin
                                    (write '(funapp 2035 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2036 33))
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
                          (write '(funapp 2045 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2045 42))
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
                                   (write '(funapp 2051 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2051 63))
                                 (display "\n")
                                 (add1 x8266))))
                             (x8264
                              (begin
                                (write '(funapp 2052 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2053 29))
                              (display "\n")
                              (posn x8265 x8264)))))
                         g8263)
                        (letrec*
                         ((x-cnd8267
                           (begin
                             (write '(funapp 2056 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2056 45))
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
                                      (write '(funapp 2062 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2062 66))
                                    (display "\n")
                                    (sub1 x8271))))
                                (x8269
                                 (begin
                                   (write '(funapp 2063 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2064 32))
                                 (display "\n")
                                 (posn x8270 x8269)))))
                            g8268)
                           (letrec*
                            ((x-cnd8272
                              (begin
                                (write '(funapp 2067 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2067 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8272
                              (letrec*
                               ((g8273
                                 (letrec*
                                  ((x8276
                                    (begin
                                      (write '(funapp 2072 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8274
                                    (letrec*
                                     ((x8275
                                       (begin
                                         (write '(funapp 2075 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2076 38))
                                       (display "\n")
                                       (sub1 x8275)))))
                                  (begin
                                    (write '(funapp 2077 35))
                                    (display "\n")
                                    (posn x8276 x8274)))))
                               g8273)
                              (letrec*
                               ((g8277
                                 (letrec*
                                  ((x8280
                                    (begin
                                      (write '(funapp 2082 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8278
                                    (letrec*
                                     ((x8279
                                       (begin
                                         (write '(funapp 2085 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2086 38))
                                       (display "\n")
                                       (add1 x8279)))))
                                  (begin
                                    (write '(funapp 2087 35))
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
                          (write '(funapp 2095 27))
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
                                       (write '(funapp 2105 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2106 36))
                                     (display "\n")
                                     (car x8288)))))
                                (begin
                                  (write '(funapp 2107 33))
                                  (display "\n")
                                  (next-head x8287 d))))
                              (x8284
                               (letrec*
                                ((x8285
                                  (begin
                                    (write '(funapp 2110 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2111 33))
                                  (display "\n")
                                  (cut-tail x8285)))))
                             (begin
                               (write '(funapp 2112 30))
                               (display "\n")
                               (cons x8286 x8284)))))
                          (begin
                            (write '(funapp 2113 27))
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
                          (write '(funapp 2121 27))
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
                                       (write '(funapp 2131 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2132 36))
                                     (display "\n")
                                     (car x8295)))))
                                (begin
                                  (write '(funapp 2133 33))
                                  (display "\n")
                                  (next-head x8294 d))))
                              (x8292
                               (begin
                                 (write '(funapp 2134 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2135 30))
                               (display "\n")
                               (cons x8293 x8292)))))
                          (begin
                            (write '(funapp 2136 27))
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
                          (write '(funapp 2144 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8297
                        (letrec*
                         ((g8298
                           (begin
                             (write '(funapp 2146 42))
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
                                   (write '(funapp 2152 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2153 32))
                                 (display "\n")
                                 (snake-slither x8302))))
                             (x8300
                              (begin
                                (write '(funapp 2154 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2155 29))
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
                          (write '(funapp 2163 31))
                          (display "\n")
                          (world-food w)))
                       (x8304
                        (letrec*
                         ((x8305
                           (letrec*
                            ((x8306
                              (begin
                                (write '(funapp 2168 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2169 29))
                              (display "\n")
                              (snake-segs x8306)))))
                         (begin
                           (write '(funapp 2170 26))
                           (display "\n")
                           (car x8305)))))
                      (begin
                        (write '(funapp 2171 23))
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
                          (write '(funapp 2177 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2177 58))
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
                             (write '(funapp 2186 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2187 26))
                           (display "\n")
                           (snake-change-direction x8313 dir))))
                       (x8311
                        (begin
                          (write '(funapp 2188 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2189 23))
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
                             (write '(funapp 2197 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2197 60))
                           (display "\n")
                           (snake-grow x8319))))
                       (x8315
                        (letrec*
                         ((x8317
                           (begin
                             (write '(funapp 2200 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8316
                           (begin
                             (write '(funapp 2200 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2201 26))
                           (display "\n")
                           (posn x8317 x8316)))))
                      (begin
                        (write '(funapp 2202 23))
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
                          (write '(funapp 2209 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8321
                        (letrec*
                         ((g8322
                           (begin
                             (write '(funapp 2211 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2211 61))
                                (display "\n")
                                'up)))))
                         g8322)
                        (letrec*
                         ((x-cnd8323
                           (begin
                             (write '(funapp 2213 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8323
                           (letrec*
                            ((g8324
                              (begin
                                (write '(funapp 2215 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2215 64))
                                   (display "\n")
                                   'down)))))
                            g8324)
                           (letrec*
                            ((x-cnd8325
                              (begin
                                (write '(funapp 2217 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8325
                              (letrec*
                               ((g8326
                                 (begin
                                   (write '(funapp 2220 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2220 59))
                                      (display "\n")
                                      'left)))))
                               g8326)
                              (letrec*
                               ((x-cnd8327
                                 (begin
                                   (write '(funapp 2223 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8327
                                 (letrec*
                                  ((g8328
                                    (begin
                                      (write '(funapp 2226 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2226 62))
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
                             (write '(funapp 2237 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2238 26))
                           (display "\n")
                           (snake-wall-collide? x8331)))))
                      (letrec*
                       ((g8332
                         (if val7264
                           val7264
                           (letrec*
                            ((x8333
                              (begin
                                (write '(funapp 2244 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2245 29))
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
                          (write '(funapp 2253 31))
                          (display "\n")
                          (world-snake w)))
                       (x8335
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 2256 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2257 26))
                           (display "\n")
                           (food+scene x8336 BACKGROUND)))))
                      (begin
                        (write '(funapp 2258 23))
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
                          (write '(funapp 2265 31))
                          (display "\n")
                          (posn-x f)))
                       (x8339
                        (begin
                          (write '(funapp 2265 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2266 23))
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
                          (write '(funapp 2273 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8342
                        (letrec*
                         ((x8343
                           (begin
                             (write '(funapp 2276 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2277 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8343)))))
                      (begin
                        (write '(funapp 2278 23))
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
                          (write '(funapp 2285 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2286 23))
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
                          (write '(funapp 2293 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8348
                        (letrec* ((g8349 scn)) g8349)
                        (letrec*
                         ((g8350
                           (letrec*
                            ((x8353
                              (begin
                                (write '(funapp 2299 37))
                                (display "\n")
                                (cdr segs)))
                             (x8351
                              (letrec*
                               ((x8352
                                 (begin
                                   (write '(funapp 2302 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2303 32))
                                 (display "\n")
                                 (segment+scene x8352 scn)))))
                            (begin
                              (write '(funapp 2304 29))
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
                          (write '(funapp 2312 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8355
                        (begin
                          (write '(funapp 2312 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2313 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8356 x8355 scn)))))
                   g8354))))
              (letrec*
               ((g8357
                 (begin
                   (write '(funapp 2317 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2318 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8368
                          (letrec*
                           ((xj7426
                             (begin
                               (write '(funapp 2322 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2322 37))
                                  (display "\n")
                                  'module))))
                            (xk7427
                             (begin
                               (write '(funapp 2322 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2322 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8369
                              (begin
                                (write '(funapp 2325 27))
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
                                                   (write '(funapp 2334 50))
                                                   (display "\n")
                                                   (POSN/C j7430 k7431 g7428)))
                                                (x8373
                                                 (begin
                                                   (write '(funapp 2335 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7430
                                                    k7431
                                                    g7429))))
                                               (begin
                                                 (write '(funapp 2336 42))
                                                 (display "\n")
                                                 (f7432 x8374 x8373)))))
                                            (begin
                                              (write '(funapp 2337 39))
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
                                   (write '(funapp 2350 56))
                                   (display "\n")
                                   (cons
                                    x8366
                                    (begin
                                      (write '(funapp 2350 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2351 27))
                                (display "\n")
                                (cons x8367 x8365)))))
                           (begin
                             (write '(funapp 2352 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2352 29))
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
                                   (write '(funapp 2359 56))
                                   (display "\n")
                                   (cons
                                    x8361
                                    (begin
                                      (write '(funapp 2359 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2360 27))
                                (display "\n")
                                (cons x8362 x8360)))))
                           (begin
                             (write '(funapp 2361 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2361 29))
                                (display "\n")
                                'posn)
                              x8359)))))
                        (begin
                          (write '(funapp 2362 21))
                          (display "\n")
                          (x8368 x8363 x8358)))
                       (letrec*
                        ((xj7433
                          (begin
                            (write '(funapp 2364 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2364 34))
                               (display "\n")
                               'module))))
                         (xk7434
                          (begin
                            (write '(funapp 2364 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2364 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8375
                           (begin
                             (write '(funapp 2365 38))
                             (display "\n")
                             (WORLD/C xj7433 xk7434 WORLD))))
                         g8375))
                       (letrec*
                        ((xj7435
                          (begin
                            (write '(funapp 2367 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2367 34))
                               (display "\n")
                               'module))))
                         (xk7436
                          (begin
                            (write '(funapp 2367 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2367 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8376
                           (begin
                             (write '(funapp 2369 30))
                             (display "\n")
                             (image/c xj7435 xk7436 BACKGROUND))))
                         g8376))
                       (letrec*
                        ((xj7437
                          (begin
                            (write '(funapp 2372 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2372 34))
                               (display "\n")
                               'module))))
                         (xk7438
                          (begin
                            (write '(funapp 2372 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2372 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8377
                           (begin
                             (write '(funapp 2374 30))
                             (display "\n")
                             (image/c xj7437 xk7438 FOOD-IMAGE))))
                         g8377))
                       (letrec*
                        ((xj7439
                          (begin
                            (write '(funapp 2377 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2377 34))
                               (display "\n")
                               'module))))
                         (xk7440
                          (begin
                            (write '(funapp 2377 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2377 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8378
                           (begin
                             (write '(funapp 2379 30))
                             (display "\n")
                             (image/c xj7439 xk7440 SEGMENT-IMAGE))))
                         g8378))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2382 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2382 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2382 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2382 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8379
                           (begin
                             (write '(funapp 2384 30))
                             (display "\n")
                             (real?/c xj7441 xk7442 GRID-SIZE))))
                         g8379))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2387 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2387 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2387 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2387 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8380
                           (begin
                             (write '(funapp 2389 30))
                             (display "\n")
                             (real?/c xj7443 xk7444 BOARD-HEIGHT-PIXELS))))
                         g8380))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2392 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2392 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2392 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2392 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8381
                           (begin
                             (write '(funapp 2394 30))
                             (display "\n")
                             (real?/c xj7445 xk7446 BOARD-WIDTH))))
                         g8381))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2397 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2397 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2397 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2397 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8382
                           (begin
                             (write '(funapp 2399 30))
                             (display "\n")
                             (real?/c xj7447 xk7448 BOARD-HEIGHT))))
                         g8382))
                       (letrec*
                        ((x8388
                          (letrec*
                           ((xj7449
                             (begin
                               (write '(funapp 2404 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2404 37))
                                  (display "\n")
                                  'module))))
                            (xk7450
                             (begin
                               (write '(funapp 2404 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2404 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8389
                              (begin
                                (write '(funapp 2407 27))
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
                                                   (write '(funapp 2416 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7452
                                                    k7453
                                                    g7451))))
                                               (begin
                                                 (write '(funapp 2417 42))
                                                 (display "\n")
                                                 (f7454 x8393)))))
                                            (begin
                                              (write '(funapp 2418 39))
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
                                   (write '(funapp 2431 56))
                                   (display "\n")
                                   (cons
                                    x8386
                                    (begin
                                      (write '(funapp 2431 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2432 27))
                                (display "\n")
                                (cons x8387 x8385)))))
                           (begin
                             (write '(funapp 2433 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2433 29))
                                (display "\n")
                                'snake)
                              x8384)))))
                        (begin
                          (write '(funapp 2434 21))
                          (display "\n")
                          (x8388 x8383)))
                       (letrec*
                        ((x8399
                          (letrec*
                           ((xj7455
                             (begin
                               (write '(funapp 2438 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2438 37))
                                  (display "\n")
                                  'module))))
                            (xk7456
                             (begin
                               (write '(funapp 2438 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2438 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8400
                              (begin
                                (write '(funapp 2441 27))
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
                                                   (write '(funapp 2450 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7458
                                                    k7459
                                                    g7457))))
                                               (begin
                                                 (write '(funapp 2451 42))
                                                 (display "\n")
                                                 (f7460 x8404)))))
                                            (begin
                                              (write '(funapp 2452 39))
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
                                   (write '(funapp 2465 56))
                                   (display "\n")
                                   (cons
                                    x8397
                                    (begin
                                      (write '(funapp 2465 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2466 27))
                                (display "\n")
                                (cons x8398 x8396)))))
                           (begin
                             (write '(funapp 2467 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2467 29))
                                (display "\n")
                                'snake)
                              x8395)))))
                        (begin
                          (write '(funapp 2468 21))
                          (display "\n")
                          (x8399 x8394)))
                       (letrec*
                        ((x8406
                          (letrec*
                           ((xj7461
                             (begin
                               (write '(funapp 2472 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2472 37))
                                  (display "\n")
                                  'module))))
                            (xk7462
                             (begin
                               (write '(funapp 2472 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2472 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8407
                              (begin
                                (write '(funapp 2475 27))
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
                                                (write '(funapp 2482 47))
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
                                                          '(funapp 2489 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2490 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8413)))))
                                                  (begin
                                                    (write '(funapp 2491 45))
                                                    (display "\n")
                                                    (x8412
                                                     j7464
                                                     k7465
                                                     g7463)))))
                                               (begin
                                                 (write '(funapp 2492 42))
                                                 (display "\n")
                                                 (f7466 x8411)))))
                                            (begin
                                              (write '(funapp 2493 39))
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
                          (write '(funapp 2501 21))
                          (display "\n")
                          (x8406 x8405)))
                       (letrec*
                        ((x8420
                          (letrec*
                           ((xj7467
                             (begin
                               (write '(funapp 2505 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2505 37))
                                  (display "\n")
                                  'module))))
                            (xk7468
                             (begin
                               (write '(funapp 2505 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2505 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8421
                              (begin
                                (write '(funapp 2508 27))
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
                                                   (write '(funapp 2517 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7470
                                                    k7471
                                                    g7469))))
                                               (begin
                                                 (write '(funapp 2518 42))
                                                 (display "\n")
                                                 (f7472 x8425)))))
                                            (begin
                                              (write '(funapp 2519 39))
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
                                   (write '(funapp 2532 56))
                                   (display "\n")
                                   (cons
                                    x8418
                                    (begin
                                      (write '(funapp 2532 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2533 27))
                                (display "\n")
                                (cons x8419 x8417)))))
                           (begin
                             (write '(funapp 2534 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2534 29))
                                (display "\n")
                                'snake)
                              x8416)))))
                        (begin
                          (write '(funapp 2535 21))
                          (display "\n")
                          (x8420 x8415)))
                       (letrec*
                        ((x8431
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 2539 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2539 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 2539 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2539 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8432
                              (begin
                                (write '(funapp 2542 27))
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
                                                   (write '(funapp 2551 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7476
                                                    k7477
                                                    g7475))))
                                               (begin
                                                 (write '(funapp 2552 42))
                                                 (display "\n")
                                                 (f7478 x8436)))))
                                            (begin
                                              (write '(funapp 2553 39))
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
                                   (write '(funapp 2566 56))
                                   (display "\n")
                                   (cons
                                    x8429
                                    (begin
                                      (write '(funapp 2566 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2567 27))
                                (display "\n")
                                (cons x8430 x8428)))))
                           (begin
                             (write '(funapp 2568 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2568 29))
                                (display "\n")
                                'snake)
                              x8427)))))
                        (begin
                          (write '(funapp 2569 21))
                          (display "\n")
                          (x8431 x8426)))
                       (letrec*
                        ((x8451
                          (letrec*
                           ((xj7479
                             (begin
                               (write '(funapp 2573 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2573 37))
                                  (display "\n")
                                  'module))))
                            (xk7480
                             (begin
                               (write '(funapp 2573 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2573 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8452
                              (begin
                                (write '(funapp 2576 27))
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
                                                   (write '(funapp 2585 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7483
                                                    k7484
                                                    g7481)))
                                                (x8456
                                                 (begin
                                                   (write '(funapp 2586 50))
                                                   (display "\n")
                                                   (DIR/C j7483 k7484 g7482))))
                                               (begin
                                                 (write '(funapp 2587 42))
                                                 (display "\n")
                                                 (f7485 x8457 x8456)))))
                                            (begin
                                              (write '(funapp 2588 39))
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
                                         (write '(funapp 2607 36))
                                         (display "\n")
                                         (cons
                                          x8449
                                          (begin
                                            (write '(funapp 2607 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2608 33))
                                      (display "\n")
                                      (cons x8450 x8448)))))
                                 (begin
                                   (write '(funapp 2609 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2609 35))
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
                                            (write '(funapp 2620 39))
                                            (display "\n")
                                            (cons
                                             x8444
                                             (begin
                                               (write '(funapp 2620 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2621 36))
                                         (display "\n")
                                         (cons x8445 x8443)))))
                                    (begin
                                      (write '(funapp 2622 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2622 38))
                                         (display "\n")
                                         'posn)
                                       x8442)))))
                                 (begin
                                   (write '(funapp 2623 30))
                                   (display "\n")
                                   (cons
                                    x8441
                                    (begin
                                      (write '(funapp 2623 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2624 27))
                                (display "\n")
                                (cons x8446 x8440)))))
                           (begin
                             (write '(funapp 2625 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2625 29))
                                (display "\n")
                                'world)
                              x8439))))
                         (x8437 (input)))
                        (begin
                          (write '(funapp 2627 21))
                          (display "\n")
                          (x8451 x8438 x8437)))
                       (letrec*
                        ((x8471
                          (letrec*
                           ((xj7486
                             (begin
                               (write '(funapp 2631 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2631 37))
                                  (display "\n")
                                  'module))))
                            (xk7487
                             (begin
                               (write '(funapp 2631 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2631 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8472
                              (begin
                                (write '(funapp 2634 27))
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
                                                   (write '(funapp 2643 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7489
                                                    k7490
                                                    g7488))))
                                               (begin
                                                 (write '(funapp 2644 42))
                                                 (display "\n")
                                                 (f7491 x8476)))))
                                            (begin
                                              (write '(funapp 2645 39))
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
                                         (write '(funapp 2664 36))
                                         (display "\n")
                                         (cons
                                          x8469
                                          (begin
                                            (write '(funapp 2664 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2665 33))
                                      (display "\n")
                                      (cons x8470 x8468)))))
                                 (begin
                                   (write '(funapp 2666 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2666 35))
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
                                            (write '(funapp 2677 39))
                                            (display "\n")
                                            (cons
                                             x8464
                                             (begin
                                               (write '(funapp 2677 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2678 36))
                                         (display "\n")
                                         (cons x8465 x8463)))))
                                    (begin
                                      (write '(funapp 2679 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2679 38))
                                         (display "\n")
                                         'posn)
                                       x8462)))))
                                 (begin
                                   (write '(funapp 2680 30))
                                   (display "\n")
                                   (cons
                                    x8461
                                    (begin
                                      (write '(funapp 2680 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2681 27))
                                (display "\n")
                                (cons x8466 x8460)))))
                           (begin
                             (write '(funapp 2682 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2682 29))
                                (display "\n")
                                'world)
                              x8459)))))
                        (begin
                          (write '(funapp 2683 21))
                          (display "\n")
                          (x8471 x8458)))
                       (letrec*
                        ((x8491
                          (letrec*
                           ((xj7492
                             (begin
                               (write '(funapp 2687 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2687 37))
                                  (display "\n")
                                  'module))))
                            (xk7493
                             (begin
                               (write '(funapp 2687 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2687 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8492
                              (begin
                                (write '(funapp 2690 27))
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
                                                   (write '(funapp 2699 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7496
                                                    k7497
                                                    g7494)))
                                                (x8496
                                                 (begin
                                                   (write '(funapp 2701 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7496
                                                    k7497
                                                    g7495))))
                                               (begin
                                                 (write '(funapp 2702 42))
                                                 (display "\n")
                                                 (f7498 x8497 x8496)))))
                                            (begin
                                              (write '(funapp 2703 39))
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
                                         (write '(funapp 2722 36))
                                         (display "\n")
                                         (cons
                                          x8489
                                          (begin
                                            (write '(funapp 2722 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2723 33))
                                      (display "\n")
                                      (cons x8490 x8488)))))
                                 (begin
                                   (write '(funapp 2724 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2724 35))
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
                                            (write '(funapp 2735 39))
                                            (display "\n")
                                            (cons
                                             x8484
                                             (begin
                                               (write '(funapp 2735 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2736 36))
                                         (display "\n")
                                         (cons x8485 x8483)))))
                                    (begin
                                      (write '(funapp 2737 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2737 38))
                                         (display "\n")
                                         'posn)
                                       x8482)))))
                                 (begin
                                   (write '(funapp 2738 30))
                                   (display "\n")
                                   (cons
                                    x8481
                                    (begin
                                      (write '(funapp 2738 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2739 27))
                                (display "\n")
                                (cons x8486 x8480)))))
                           (begin
                             (write '(funapp 2740 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2740 29))
                                (display "\n")
                                'world)
                              x8479))))
                         (x8477 (input)))
                        (begin
                          (write '(funapp 2742 21))
                          (display "\n")
                          (x8491 x8478 x8477)))
                       (letrec*
                        ((x8511
                          (letrec*
                           ((xj7499
                             (begin
                               (write '(funapp 2746 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2746 37))
                                  (display "\n")
                                  'module))))
                            (xk7500
                             (begin
                               (write '(funapp 2746 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2746 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8512
                              (begin
                                (write '(funapp 2749 27))
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
                                                   (write '(funapp 2758 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7502
                                                    k7503
                                                    g7501))))
                                               (begin
                                                 (write '(funapp 2759 42))
                                                 (display "\n")
                                                 (f7504 x8516)))))
                                            (begin
                                              (write '(funapp 2760 39))
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
                                         (write '(funapp 2779 36))
                                         (display "\n")
                                         (cons
                                          x8509
                                          (begin
                                            (write '(funapp 2779 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2780 33))
                                      (display "\n")
                                      (cons x8510 x8508)))))
                                 (begin
                                   (write '(funapp 2781 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2781 35))
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
                                            (write '(funapp 2792 39))
                                            (display "\n")
                                            (cons
                                             x8504
                                             (begin
                                               (write '(funapp 2792 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2793 36))
                                         (display "\n")
                                         (cons x8505 x8503)))))
                                    (begin
                                      (write '(funapp 2794 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2794 38))
                                         (display "\n")
                                         'posn)
                                       x8502)))))
                                 (begin
                                   (write '(funapp 2795 30))
                                   (display "\n")
                                   (cons
                                    x8501
                                    (begin
                                      (write '(funapp 2795 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2796 27))
                                (display "\n")
                                (cons x8506 x8500)))))
                           (begin
                             (write '(funapp 2797 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2797 29))
                                (display "\n")
                                'world)
                              x8499)))))
                        (begin
                          (write '(funapp 2798 21))
                          (display "\n")
                          (x8511 x8498)))
                       (letrec*
                        ((x8530
                          (letrec*
                           ((xj7505
                             (begin
                               (write '(funapp 2802 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2802 37))
                                  (display "\n")
                                  'module))))
                            (xk7506
                             (begin
                               (write '(funapp 2802 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2802 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8531
                              (begin
                                (write '(funapp 2805 27))
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
                                                   (write '(funapp 2814 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7508
                                                    k7509
                                                    g7507))))
                                               (begin
                                                 (write '(funapp 2815 42))
                                                 (display "\n")
                                                 (f7510 x8535)))))
                                            (begin
                                              (write '(funapp 2816 39))
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
                                         (write '(funapp 2835 36))
                                         (display "\n")
                                         (cons
                                          x8528
                                          (begin
                                            (write '(funapp 2835 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2836 33))
                                      (display "\n")
                                      (cons x8529 x8527)))))
                                 (begin
                                   (write '(funapp 2837 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2837 35))
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
                                            (write '(funapp 2848 39))
                                            (display "\n")
                                            (cons
                                             x8523
                                             (begin
                                               (write '(funapp 2848 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2849 36))
                                         (display "\n")
                                         (cons x8524 x8522)))))
                                    (begin
                                      (write '(funapp 2850 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2850 38))
                                         (display "\n")
                                         'posn)
                                       x8521)))))
                                 (begin
                                   (write '(funapp 2851 30))
                                   (display "\n")
                                   (cons
                                    x8520
                                    (begin
                                      (write '(funapp 2851 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2852 27))
                                (display "\n")
                                (cons x8525 x8519)))))
                           (begin
                             (write '(funapp 2853 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2853 29))
                                (display "\n")
                                'world)
                              x8518)))))
                        (begin
                          (write '(funapp 2854 21))
                          (display "\n")
                          (x8530 x8517)))
                       (letrec*
                        ((x8542
                          (letrec*
                           ((xj7511
                             (begin
                               (write '(funapp 2858 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2858 37))
                                  (display "\n")
                                  'module))))
                            (xk7512
                             (begin
                               (write '(funapp 2858 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2858 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8543
                              (begin
                                (write '(funapp 2861 27))
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
                                                   (write '(funapp 2870 50))
                                                   (display "\n")
                                                   (POSN/C j7515 k7516 g7513)))
                                                (x8547
                                                 (begin
                                                   (write '(funapp 2871 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7515
                                                    k7516
                                                    g7514))))
                                               (begin
                                                 (write '(funapp 2872 42))
                                                 (display "\n")
                                                 (f7517 x8548 x8547)))))
                                            (begin
                                              (write '(funapp 2873 39))
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
                                   (write '(funapp 2886 56))
                                   (display "\n")
                                   (cons
                                    x8540
                                    (begin
                                      (write '(funapp 2886 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2887 27))
                                (display "\n")
                                (cons x8541 x8539)))))
                           (begin
                             (write '(funapp 2888 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2888 29))
                                (display "\n")
                                'posn)
                              x8538))))
                         (x8536
                          (begin
                            (write '(funapp 2889 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2889 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2889 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2890 21))
                          (display "\n")
                          (x8542 x8537 x8536)))
                       (letrec*
                        ((x8553
                          (letrec*
                           ((xj7518
                             (begin
                               (write '(funapp 2894 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2894 37))
                                  (display "\n")
                                  'module))))
                            (xk7519
                             (begin
                               (write '(funapp 2894 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2894 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8554
                              (begin
                                (write '(funapp 2897 27))
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
                                                   (write '(funapp 2906 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7524
                                                    k7525
                                                    g7520)))
                                                (x8560
                                                 (begin
                                                   (write '(funapp 2907 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7524
                                                    k7525
                                                    g7521)))
                                                (x8559
                                                 (begin
                                                   (write '(funapp 2908 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7524
                                                    k7525
                                                    g7522)))
                                                (x8558
                                                 (begin
                                                   (write '(funapp 2909 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7524
                                                    k7525
                                                    g7523))))
                                               (begin
                                                 (write '(funapp 2910 42))
                                                 (display "\n")
                                                 (f7526
                                                  x8561
                                                  x8560
                                                  x8559
                                                  x8558)))))
                                            (begin
                                              (write '(funapp 2911 39))
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
                            (write '(funapp 2918 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2918 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2918 41))
                               (display "\n")
                               '()))))
                         (x8551 (input))
                         (x8550 (input))
                         (x8549
                          (begin
                            (write '(funapp 2921 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2921 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2921 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2922 21))
                          (display "\n")
                          (x8553 x8552 x8551 x8550 x8549)))
                       (letrec*
                        ((x8568
                          (letrec*
                           ((xj7527
                             (begin
                               (write '(funapp 2926 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2926 37))
                                  (display "\n")
                                  'module))))
                            (xk7528
                             (begin
                               (write '(funapp 2926 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2926 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8569
                              (begin
                                (write '(funapp 2929 27))
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
                                                   (write '(funapp 2938 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7531
                                                    k7532
                                                    g7529)))
                                                (x8573
                                                 (begin
                                                   (write '(funapp 2939 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7531
                                                    k7532
                                                    g7530))))
                                               (begin
                                                 (write '(funapp 2940 42))
                                                 (display "\n")
                                                 (f7533 x8574 x8573)))))
                                            (begin
                                              (write '(funapp 2941 39))
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
                                   (write '(funapp 2954 56))
                                   (display "\n")
                                   (cons
                                    x8566
                                    (begin
                                      (write '(funapp 2954 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2955 27))
                                (display "\n")
                                (cons x8567 x8565)))))
                           (begin
                             (write '(funapp 2956 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2956 29))
                                (display "\n")
                                'snake)
                              x8564))))
                         (x8562
                          (begin
                            (write '(funapp 2957 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2957 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2957 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2958 21))
                          (display "\n")
                          (x8568 x8563 x8562)))
                       (letrec*
                        ((x8577
                          (letrec*
                           ((xj7534
                             (begin
                               (write '(funapp 2962 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2962 37))
                                  (display "\n")
                                  'module))))
                            (xk7535
                             (begin
                               (write '(funapp 2962 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2962 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8578
                              (begin
                                (write '(funapp 2965 27))
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
                                                      (write '(funapp 2976 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 2977 45))
                                                    (display "\n")
                                                    (x8584
                                                     j7538
                                                     k7539
                                                     g7536))))
                                                (x8582
                                                 (begin
                                                   (write '(funapp 2978 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7538
                                                    k7539
                                                    g7537))))
                                               (begin
                                                 (write '(funapp 2979 42))
                                                 (display "\n")
                                                 (f7540 x8583 x8582)))))
                                            (begin
                                              (write '(funapp 2980 39))
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
                            (write '(funapp 2988 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2988 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2988 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2989 21))
                          (display "\n")
                          (x8577 x8576 x8575)))
                       (letrec*
                        ((x8591
                          (letrec*
                           ((xj7541
                             (begin
                               (write '(funapp 2993 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2993 37))
                                  (display "\n")
                                  'module))))
                            (xk7542
                             (begin
                               (write '(funapp 2993 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2993 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8592
                              (begin
                                (write '(funapp 2996 27))
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
                                                   (write '(funapp 3005 50))
                                                   (display "\n")
                                                   (POSN/C j7545 k7546 g7543)))
                                                (x8596
                                                 (begin
                                                   (write '(funapp 3006 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7545
                                                    k7546
                                                    g7544))))
                                               (begin
                                                 (write '(funapp 3007 42))
                                                 (display "\n")
                                                 (f7547 x8597 x8596)))))
                                            (begin
                                              (write '(funapp 3008 39))
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
                                   (write '(funapp 3021 56))
                                   (display "\n")
                                   (cons
                                    x8589
                                    (begin
                                      (write '(funapp 3021 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3022 27))
                                (display "\n")
                                (cons x8590 x8588)))))
                           (begin
                             (write '(funapp 3023 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3023 29))
                                (display "\n")
                                'posn)
                              x8587))))
                         (x8585
                          (begin
                            (write '(funapp 3024 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3024 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3024 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3025 21))
                          (display "\n")
                          (x8591 x8586 x8585)))))))))
               g8357))))
           g7591))))
       g7575)))
    g7574)))
