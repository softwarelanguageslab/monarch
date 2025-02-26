(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7572 #t)) g7572)))
    (meta (lambda (v) (letrec* ((g7573 v)) g7573)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7574
          (letrec*
           ((g7575
             (letrec*
              ((x-e7576 lst))
              (letrec*
               ((v1742 x-e7576))
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
                   ((x-cnd7577
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7577
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
           g7575)))
        g7574)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7578 (lambda (v) (letrec* ((g7579 v)) g7579)))) g7578)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7580
          (letrec*
           ((x7581 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7581)))))
        g7580))))
   (letrec*
    ((g7582
      (letrec*
       ((g7583
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7584
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7584)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7585
                 (letrec*
                  ((x7587
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7587))))
                (g7586
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7588
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7589 (if val7245 val7245 #f))) g7589)))))
                   g7588))))
               g7586)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7590
                 (letrec*
                  ((x7592
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7592))))
                (g7591
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7593
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7594 (if val7247 val7247 #f))) g7594)))))
                   g7593))))
               g7591)))
           (>
            (lambda (x y)
              (letrec*
               ((g7595
                 (letrec*
                  ((x7597
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7597))))
                (g7596
                 (letrec*
                  ((x7598
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7598)))))
               g7596)))
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
           ((g7599 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7600
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7601
                     (lambda (k j lst)
                       (letrec*
                        ((g7602
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7603
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7603))
                             lst))))
                        g7602))))
                   g7601)))
               (real?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7269))))
                      (if x-cnd7605
                        g7269
                        (begin
                          (write '(blame g7267 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7604)))
               (boolean?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x-cnd7607
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7272))))
                      (if x-cnd7607
                        g7272
                        (begin
                          (write '(blame g7270 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7606)))
               (number?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x-cnd7609
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7275))))
                      (if x-cnd7609
                        g7275
                        (begin
                          (write '(blame g7273 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7608)))
               (any/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x-cnd7611
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7612 #t)) g7612)) g7278))))
                      (if x-cnd7611
                        g7278
                        (begin
                          (write '(blame g7276 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7610)))
               (any?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7615 #t)) g7615)) g7281))))
                      (if x-cnd7614
                        g7281
                        (begin
                          (write '(blame g7279 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7613)))
               (cons?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7617
                        g7284
                        (begin
                          (write '(blame g7282 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7616)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7618
                     (lambda (k j v)
                       (letrec*
                        ((g7619
                          (letrec*
                           ((x7622
                             (letrec*
                              ((x7623
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7623))))
                            (x7620
                             (letrec*
                              ((x7621
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7621)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7622 x7620)))))
                        g7619))))
                   g7618)))
               (pair?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7287))))
                      (if x-cnd7625
                        g7287
                        (begin
                          (write '(blame g7285 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7624)))
               (integer?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7290))))
                      (if x-cnd7627
                        g7290
                        (begin
                          (write '(blame g7288 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7626)))
               (symbol?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x-cnd7629
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7293))))
                      (if x-cnd7629
                        g7293
                        (begin
                          (write '(blame g7291 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7628)))
               (string?/c
                (lambda (g7294 g7295 g7296)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7296))))
                      (if x-cnd7631
                        g7296
                        (begin
                          (write '(blame g7294 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7294)))))))
                   g7630)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7632
                     (lambda (k j v)
                       (letrec*
                        ((g7633
                          (letrec*
                           ((x-cnd7634
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7634
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7633))))
                   g7632)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7635
                     (lambda (k j v)
                       (letrec*
                        ((g7636
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7637
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7637))))
                        g7636))))
                   g7635)))
               (null?/c
                (lambda (g7297 g7298 g7299)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7299))))
                      (if x-cnd7639
                        g7299
                        (begin
                          (write '(blame g7297 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7297)))))))
                   g7638)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7640
                     (lambda (k j v)
                       (letrec*
                        ((g7641
                          (letrec*
                           ((x-cnd7642
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7642
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7646
                                (letrec*
                                 ((x7647
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7647))))
                               (x7643
                                (letrec*
                                 ((x7645
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7644
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7645 k j x7644)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7646 x7643)))))))
                        g7641))))
                   g7640)))
               (any? (lambda (v) (letrec* ((g7648 #t)) g7648)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7650)))))
                   g7649)))
               (nonzero?/c
                (lambda (g7300 g7301 g7302)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7653
                                (letrec*
                                 ((x7654
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7654)))))
                              g7653))
                           g7302))))
                      (if x-cnd7652
                        g7302
                        (begin
                          (write '(blame g7300 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7300)))))))
                   g7651)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7655
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7656
                          (letrec*
                           ((x-cnd7657
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7658
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7658))
                                g7305))))
                           (if x-cnd7657
                             g7305
                             (begin
                               (write '(blame g7303 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7656))))
                   g7655)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7659
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7660
                          (letrec*
                           ((x-cnd7661
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7662
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7662))
                                g7308))))
                           (if x-cnd7661
                             g7308
                             (begin
                               (write '(blame g7306 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7660))))
                   g7659)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7663
                     (lambda (g7309 g7310 g7311)
                       (letrec*
                        ((g7664
                          (letrec*
                           ((x-cnd7665
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7666
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7666))
                                g7311))))
                           (if x-cnd7665
                             g7311
                             (begin
                               (write '(blame g7309 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7309)))))))
                        g7664))))
                   g7663)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7667
                     (lambda (g7312 g7313 g7314)
                       (letrec*
                        ((g7668
                          (letrec*
                           ((x-cnd7669
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7670
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7670))
                                g7314))))
                           (if x-cnd7669
                             g7314
                             (begin
                               (write '(blame g7312 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7312)))))))
                        g7668))))
                   g7667)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7671
                     (lambda (g7315 g7316 g7317)
                       (letrec*
                        ((g7672
                          (letrec*
                           ((x-cnd7673
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7674
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7674))
                                g7317))))
                           (if x-cnd7673
                             g7317
                             (begin
                               (write '(blame g7315 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7315)))))))
                        g7672))))
                   g7671)))
               (meta (lambda (v) (letrec* ((g7675 v)) g7675)))
               (+
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7676
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7678
                            (lambda (g7320 g7321)
                              (letrec*
                               ((g7679
                                 (letrec*
                                  ((x7680
                                    (letrec*
                                     ((x7682
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7320)))
                                      (x7681
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7324 x7682 x7681)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7322 k7323 x7680)))))
                               g7679))))
                          g7678))
                       xj7318
                       xk7319
                       (lambda (a b)
                         (letrec*
                          ((g7677
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7677))))))
                  g7676)))
               (-
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7683
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7685
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7686
                                 (letrec*
                                  ((x7687
                                    (letrec*
                                     ((x7689
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7327)))
                                      (x7688
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7328))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7331 x7689 x7688)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7329 k7330 x7687)))))
                               g7686))))
                          g7685))
                       xj7325
                       xk7326
                       (lambda (a b)
                         (letrec*
                          ((g7684
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7684))))))
                  g7683)))
               (*
                (letrec*
                 ((xj7332
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7333
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7690
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7336 k7337 f7338)
                         (letrec*
                          ((g7692
                            (lambda (g7334 g7335)
                              (letrec*
                               ((g7693
                                 (letrec*
                                  ((x7694
                                    (letrec*
                                     ((x7696
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7334)))
                                      (x7695
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7335))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7338 x7696 x7695)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7336 k7337 x7694)))))
                               g7693))))
                          g7692))
                       xj7332
                       xk7333
                       (lambda (a b)
                         (letrec*
                          ((g7691
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7691))))))
                  g7690)))
               (<
                (letrec*
                 ((xj7339
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7340
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7697
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7699
                            (lambda (g7341 g7342)
                              (letrec*
                               ((g7700
                                 (letrec*
                                  ((x7701
                                    (letrec*
                                     ((x7703
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7341)))
                                      (x7702
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7345 x7703 x7702)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7343 k7344 x7701)))))
                               g7700))))
                          g7699))
                       xj7339
                       xk7340
                       (lambda (a b)
                         (letrec*
                          ((g7698
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7698))))))
                  g7697)))
               (>
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7704
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7706
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7707
                                 (letrec*
                                  ((x7708
                                    (letrec*
                                     ((x7710
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7348)))
                                      (x7709
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7352 x7710 x7709)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7350 k7351 x7708)))))
                               g7707))))
                          g7706))
                       xj7346
                       xk7347
                       (lambda (a b)
                         (letrec*
                          ((g7705
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7705))))))
                  g7704)))
               (<=
                (letrec*
                 ((xj7353
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7354
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7711
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7357 k7358 f7359)
                         (letrec*
                          ((g7713
                            (lambda (g7355 g7356)
                              (letrec*
                               ((g7714
                                 (letrec*
                                  ((x7715
                                    (letrec*
                                     ((x7717
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7355)))
                                      (x7716
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7356))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7359 x7717 x7716)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7357 k7358 x7715)))))
                               g7714))))
                          g7713))
                       xj7353
                       xk7354
                       (lambda (a b)
                         (letrec*
                          ((g7712
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7712))))))
                  g7711)))
               (>=
                (letrec*
                 ((xj7360
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7361
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7718
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7364 k7365 f7366)
                         (letrec*
                          ((g7720
                            (lambda (g7362 g7363)
                              (letrec*
                               ((g7721
                                 (letrec*
                                  ((x7722
                                    (letrec*
                                     ((x7724
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7362)))
                                      (x7723
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7363))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7366 x7724 x7723)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7364 k7365 x7722)))))
                               g7721))))
                          g7720))
                       xj7360
                       xk7361
                       (lambda (a b)
                         (letrec*
                          ((g7719
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7719))))))
                  g7718)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7725
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7725)))
               (/
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7726
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7728
                            (lambda (g7369 g7370)
                              (letrec*
                               ((g7729
                                 (letrec*
                                  ((x7730
                                    (letrec*
                                     ((x7732
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7369)))
                                      (x7731
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7373 x7732 x7731)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7371 k7372 x7730)))))
                               g7729))))
                          g7728))
                       xj7367
                       xk7368
                       (lambda (a b)
                         (letrec*
                          ((g7727
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7727))))))
                  g7726)))
               (car
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7733
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g7735
                            (lambda (g7376)
                              (letrec*
                               ((g7736
                                 (letrec*
                                  ((x7737
                                    (letrec*
                                     ((x7738
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7377 k7378 g7376))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7379 x7738)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7377 k7378 x7737)))))
                               g7736))))
                          g7735))
                       xj7374
                       xk7375
                       (lambda (p)
                         (letrec*
                          ((g7734
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7734))))))
                  g7733)))
               (cdr
                (letrec*
                 ((xj7380
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7381
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7739
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7741
                            (lambda (g7382)
                              (letrec*
                               ((g7742
                                 (letrec*
                                  ((x7743
                                    (letrec*
                                     ((x7744
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7385 x7744)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7383 k7384 x7743)))))
                               g7742))))
                          g7741))
                       xj7380
                       xk7381
                       (lambda (p)
                         (letrec*
                          ((g7740
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7740))))))
                  g7739)))
               (cons
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7745
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g7747
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g7748
                                 (letrec*
                                  ((x7749
                                    (letrec*
                                     ((x7751
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7388)))
                                      (x7750
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7392 x7751 x7750)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7390 k7391 x7749)))))
                               g7748))))
                          g7747))
                       xj7386
                       xk7387
                       (lambda (a b)
                         (letrec*
                          ((g7746
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7746))))))
                  g7745)))
               (vector-ref
                (letrec*
                 ((xj7393
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7394
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7752
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7754
                            (lambda (g7395)
                              (letrec*
                               ((g7755
                                 (letrec*
                                  ((x7756
                                    (letrec*
                                     ((x7757
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7398 x7757)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7396 k7397 x7756)))))
                               g7755))))
                          g7754))
                       xj7393
                       xk7394
                       (lambda (v i)
                         (letrec*
                          ((g7753
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7753))))))
                  g7752)))
               (vector-set!
                (letrec*
                 ((xj7399
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7400
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7758
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7403 k7404 f7405)
                         (letrec*
                          ((g7760
                            (lambda (g7401 g7402)
                              (letrec*
                               ((g7761
                                 (letrec*
                                  ((x7762
                                    (letrec*
                                     ((x7764
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7403 k7404 g7401)))
                                      (x7763
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7403 k7404 g7402))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7405 x7764 x7763)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7403 k7404 x7762)))))
                               g7761))))
                          g7760))
                       xj7399
                       xk7400
                       (lambda (vec i v)
                         (letrec*
                          ((g7759
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7759))))))
                  g7758)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7777))))
                          (x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7775)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7776 x7774)))))))
                   g7770)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7779)))))
                   g7778)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (cdadar
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
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7787)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7785)))))
                   g7784)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7792))))
                    (g7790
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
                       ((g7793
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7794 res))
                       g7794))))
                   g7790)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7797)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7796)))))
                   g7795)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7801)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7799)))))
                   g7798)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7805
                        #f
                        (letrec*
                         ((x-cnd7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7807 k)))))
                         (if x-cnd7806
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7808)))))))))
                   g7803)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7810)))))
                   g7809)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7813))))
                    (g7812
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7814
                        ""
                        (letrec*
                         ((x7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7818))))
                          (x7815
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7816)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7817 x7815)))))))
                   g7812)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7824
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7824))))
                   g7821)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7826
                        (letrec*
                         ((x7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7828)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7827)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7826)))))
                   g7825)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((x-cnd7834
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7834
                        x
                        (letrec*
                         ((x7836
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7835
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7836 x7835)))))))
                   g7831)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7837
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7837)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x-cnd7839
                        (letrec*
                         ((x7840 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7840)))))
                      (if x-cnd7839
                        (letrec*
                         ((x7841 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7841)))
                        #f))))
                   g7838)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7843
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7843 9)))))
                      (letrec*
                       ((g7844
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7845
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7845 10)))))
                            (letrec*
                             ((g7846
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7847
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7847 32))))))
                             g7846)))))
                       g7844))))
                   g7842)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7850)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7849)))))
                   g7848)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7852)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7854
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7854)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7855 #f)) g7855)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7857)))))
                   g7856)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7861
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7859)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7863
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7864
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7864
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7865
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7866
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7866
                                       (letrec*
                                        ((x-cnd7867
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7867
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7868
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7869
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7869
                                             (letrec*
                                              ((x-cnd7870
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7870
                                                (letrec*
                                                 ((x-cnd7871
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7872
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7873 x7872)))))
                                                 (if x-cnd7871
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7874
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7875 x7874)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7876
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7877
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7877
                                                (letrec*
                                                 ((x-cnd7878
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7878
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7879
                                                       (letrec*
                                                        ((x-cnd7880
                                                          (letrec*
                                                           ((x7881
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
                                                             (= x7881 n)))))
                                                        (if x-cnd7880
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7882
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
                                                                    ((g7883
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7884
                                                                           (letrec*
                                                                            ((x7886
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
                                                                             (x7885
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
                                                                               x7886
                                                                               x7885)))))
                                                                         (if x-cnd7884
                                                                           (letrec*
                                                                            ((x7887
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
                                                                               x7887)))
                                                                           #f)))))
                                                                    g7883))))
                                                                g7882))))
                                                           (letrec*
                                                            ((g7888
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7888))
                                                          #f))))
                                                     g7879))
                                                   #f))
                                                #f)))))
                                         g7876)))))
                                   g7868)))))
                             g7865)))))
                       g7863))))
                   g7862)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7892)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7891)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7890)))))
                   g7889)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (letrec*
                         ((x7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7896)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7895)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7894)))))
                   g7893)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7897
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7897)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7901))))
                    (g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7902))))
                    (g7900
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
                       ((g7903
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7904 res))
                       g7904))))
                   g7900)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7905
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7905)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7911
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7911))))
                   g7908)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7913)))))
                   g7912)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7918)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7917)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7916)))))
                   g7915)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7921)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7920)))))
                   g7919)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (letrec*
                         ((x7924
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7924)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7923)))))
                   g7922)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7930)))))
                   g7927)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7932
                        (letrec*
                         ((x7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7934)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7933)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7932)))))
                   g7931)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7936)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7938
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7938)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (letrec*
                         ((x7941
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7941)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7942
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7942)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x-cnd7946
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7946
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7949
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7950))))
                          (x7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7948)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7949 x7947)))))))
                   g7944)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (letrec*
                         ((x7953
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7954)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7953)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7952)))))
                   g7951)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (letrec*
                         ((x7957
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7958)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7957)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7956)))))
                   g7955)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7962)))))
                   g7960)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7966)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7965)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7964)))))
                   g7963)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x-cnd7972
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7972
                        (letrec*
                         ((g7973
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7973)
                        (letrec*
                         ((x-cnd7974
                           (letrec*
                            ((x7975
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7975)))))
                         (if x-cnd7974
                           (letrec*
                            ((g7976
                              (letrec*
                               ((x7977
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7977)))))
                            g7976)
                           (letrec*
                            ((x-cnd7978
                              (letrec*
                               ((x7979
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7979)))))
                            (if x-cnd7978
                              (letrec*
                               ((g7980
                                 (letrec*
                                  ((x7982
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7981
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7982 x7981)))))
                               g7980)
                              (letrec*
                               ((x-cnd7983
                                 (letrec*
                                  ((x7984
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7984)))))
                               (if x-cnd7983
                                 (letrec*
                                  ((g7985
                                    (letrec*
                                     ((x7988
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7987
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7986
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7988 x7987 x7986)))))
                                  g7985)
                                 (letrec*
                                  ((x-cnd7989
                                    (letrec*
                                     ((x7990
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7990)))))
                                  (if x-cnd7989
                                    (letrec*
                                     ((g7991
                                       (letrec*
                                        ((x7995
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7994
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7993
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7992
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7995 x7994 x7993 x7992)))))
                                     g7991)
                                    (letrec*
                                     ((x-cnd7996
                                       (letrec*
                                        ((x7997
                                          (letrec*
                                           ((x7998
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7998)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7997)))))
                                     (if x-cnd7996
                                       (letrec*
                                        ((g7999
                                          (letrec*
                                           ((x8005
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x8004
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8003
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8002
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8000
                                             (letrec*
                                              ((x8001
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x8001)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x8005
                                              x8004
                                              x8003
                                              x8002
                                              x8000)))))
                                        g7999)
                                       (letrec*
                                        ((x-cnd8006
                                          (letrec*
                                           ((x8007
                                             (letrec*
                                              ((x8008
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x8008)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x8007)))))
                                        (if x-cnd8006
                                          (letrec*
                                           ((g8009
                                             (letrec*
                                              ((x8017
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8016
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8015
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8014
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8012
                                                (letrec*
                                                 ((x8013
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x8013))))
                                               (x8010
                                                (letrec*
                                                 ((x8011
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x8011)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x8017
                                                 x8016
                                                 x8015
                                                 x8014
                                                 x8012
                                                 x8010)))))
                                           g8009)
                                          (letrec*
                                           ((x-cnd8018
                                             (letrec*
                                              ((x8019
                                                (letrec*
                                                 ((x8020
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x8020)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x8019)))))
                                           (if x-cnd8018
                                             (letrec*
                                              ((g8021
                                                (letrec*
                                                 ((x8031
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8030
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8029
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8028
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8026
                                                   (letrec*
                                                    ((x8027
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x8027))))
                                                  (x8024
                                                   (letrec*
                                                    ((x8025
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x8025))))
                                                  (x8022
                                                   (letrec*
                                                    ((x8023
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x8023)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x8031
                                                    x8030
                                                    x8029
                                                    x8028
                                                    x8026
                                                    x8024
                                                    x8022)))))
                                              g8021)
                                             (letrec*
                                              ((g8032
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8032)))))))))))))))))))
                   g7969)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8035
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x8035))))
                    (g8034
                     (letrec*
                      ((x-cnd8036
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8036
                        #f
                        (letrec*
                         ((x-cnd8037
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x8038 e)))))
                         (if x-cnd8037
                           l
                           (letrec*
                            ((x8039
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x8039)))))))))
                   g8034)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x8043)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x8042)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x8041)))))
                   g8040)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8045
                        (letrec*
                         ((x8046
                           (letrec*
                            ((x8047
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x8047)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x8046)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x8045)))))
                   g8044)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8048
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g8048)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8051
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x8051))))
                    (g8050
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g8050)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8052
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8053
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8053))))
                   g8052)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x8055)))))
                   g8054)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8056
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8057
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8057
                           (letrec*
                            ((x8058
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x8058)))
                           #f))))
                      (letrec*
                       ((g8059
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g8059))))
                   g8056)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x8061
                        (letrec*
                         ((x8062
                           (letrec*
                            ((x8063
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x8063)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x8062)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x8061)))))
                   g8060)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8064
                     (letrec*
                      ((x-cnd8065
                        (letrec*
                         ((x8066 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x8066 c)))))
                      (if x-cnd8065
                        (letrec*
                         ((x8067 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x8067)))
                        #f))))
                   g8064)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8068
                     (letrec*
                      ((x8070
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8070))))
                    (g8069
                     (letrec*
                      ((x-cnd8071
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8071
                        #f
                        (letrec*
                         ((x-cnd8072
                           (letrec*
                            ((x8073
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x8073 k)))))
                         (if x-cnd8072
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8074
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x8074)))))))))
                   g8069)))
               (not (lambda (x) (letrec* ((g8075 (if x #f #t))) g8075)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8076
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g8076)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8079
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x8079))))
                    (g8078
                     (letrec*
                      ((x-cnd8080
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8080
                        #f
                        (letrec*
                         ((x-cnd8081
                           (letrec*
                            ((x8082
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x8082 e)))))
                         (if x-cnd8081
                           l
                           (letrec*
                            ((x8083
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x8083)))))))))
                   g8078)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8085
                        (letrec*
                         ((x8086
                           (letrec*
                            ((x8087
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x8087)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x8086)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x8085)))))
                   g8084)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8088
                     (letrec*
                      ((x8090
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8090))))
                    (g8089
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8091
                             (letrec*
                              ((x-cnd8092
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8092
                                0
                                (letrec*
                                 ((x8093
                                   (letrec*
                                    ((x8094
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x8094)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x8093)))))))
                           g8091))))
                      (letrec*
                       ((g8095
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g8095))))
                   g8089)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8096
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8099))))
                    (g8097
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8100))))
                    (g8098
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8101
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8101))))
                   g8098)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8103
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x8103)))))
                   g8102)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((x8105
                        (letrec*
                         ((x8106
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x8106)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x8105)))))
                   g8104)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x8109))))
                    (g8108
                     (letrec*
                      ((x-cnd8110
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8110
                        #f
                        (letrec*
                         ((x-cnd8111
                           (letrec*
                            ((x8112
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x8112 k)))))
                         (if x-cnd8111
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8113
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x8113)))))))))
                   g8108)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8114
                     (letrec*
                      ((x8115
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x8115)))))
                   g8114)))
               (char>?
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
                      ((x8121
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x8121)))))
                   g8118)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8123
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8123))))
                   g8122)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8127
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x8127))))
                    (g8125
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x8128))))
                    (g8126
                     (letrec*
                      ((x-cnd8129
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8129
                        #t
                        (letrec*
                         ((x-cnd8130
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8130
                           (letrec*
                            ((g8131
                              (letrec*
                               ((x8133
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x8133))))
                             (g8132
                              (letrec*
                               ((x8134
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x8134)))))
                            g8132)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g8126)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x8137))))
                    (g8136
                     (letrec*
                      ((x-cnd8138
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8138
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8136)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8142))))
                    (g8140
                     (letrec*
                      ((x8143
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8143))))
                    (g8141
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8144
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8144))))
                   g8141)))
               (caddar
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
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8148)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x8147)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x8146)))))
                   g8145)))
               (newline (lambda () (letrec* ((g8149 #f)) g8149)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8152
                        (letrec*
                         ((x8153
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8153))))
                       (x8151
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8152 x8151)))))
                   g8150)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8158))))
                    (g8155
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x8160
                        (letrec*
                         ((x8161
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8161)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8160))))
                    (g8157
                     (letrec*
                      ((x-cnd8162
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8162
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8164
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8163
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8164 x8163)))))))
                   g8157)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8165
                     (letrec*
                      ((x-cnd8166
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8166
                        a
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8167)))))))
                   g8165)))
               (image
                (lambda ()
                  (letrec*
                   ((g8168
                     (begin
                       (write '(funapp 1697 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1697 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1697 62))
                          (display "\n")
                          '())))))
                   g8168)))
               (image?
                (lambda (image7556)
                  (letrec*
                   ((g8169
                     (letrec*
                      ((x8170
                        (begin
                          (write '(funapp 1702 39))
                          (display "\n")
                          (car image7556))))
                      (begin
                        (write '(funapp 1702 57))
                        (display "\n")
                        (eq?
                         x8170
                         (begin
                           (write '(funapp 1702 67))
                           (display "\n")
                           'image))))))
                   g8169)))
               (image/c
                (lambda (j7407 k7408 v7406)
                  (letrec*
                   ((g8171
                     (begin
                       (write '(funapp 1706 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1706 47))
                          (display "\n")
                          '())))))
                   g8171)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8172
                     (begin (write '(funapp 1707 57)) (display "\n") (image))))
                   g8172)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8173
                     (begin (write '(funapp 1708 60)) (display "\n") (image))))
                   g8173)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8174
                     (begin (write '(funapp 1710 54)) (display "\n") (image))))
                   g8174)))
               (posn
                (lambda (x7558 y7559)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x8176
                        (letrec*
                         ((x8177
                           (begin
                             (write '(funapp 1718 34))
                             (display "\n")
                             (orig-cons
                              y7559
                              (begin
                                (write '(funapp 1718 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1719 26))
                           (display "\n")
                           (orig-cons x7558 x8177)))))
                      (begin
                        (write '(funapp 1720 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1720 33)) (display "\n") 'posn)
                         x8176)))))
                   g8175)))
               (posn?
                (lambda (posn7557)
                  (letrec*
                   ((g8178
                     (letrec*
                      ((x8179
                        (begin
                          (write '(funapp 1726 39))
                          (display "\n")
                          (car posn7557))))
                      (begin
                        (write '(funapp 1726 56))
                        (display "\n")
                        (eq?
                         x8179
                         (begin
                           (write '(funapp 1726 66))
                           (display "\n")
                           'posn))))))
                   g8178)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8180
                     (letrec*
                      ((x8181
                        (begin
                          (write '(funapp 1732 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1732 57))
                        (display "\n")
                        (orig-car x8181)))))
                   g8180)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8182
                     (letrec*
                      ((x8183
                        (letrec*
                         ((x8184
                           (begin
                             (write '(funapp 1740 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1740 60))
                           (display "\n")
                           (orig-cdr x8184)))))
                      (begin
                        (write '(funapp 1741 23))
                        (display "\n")
                        (orig-car x8183)))))
                   g8182)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8185
                     (letrec*
                      ((x-cnd8186
                        (letrec*
                         ((x8188
                           (begin
                             (write '(funapp 1750 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8187
                           (begin
                             (write '(funapp 1750 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1751 26))
                           (display "\n")
                           (= x8188 x8187)))))
                      (if x-cnd8186
                        (letrec*
                         ((x8190
                           (begin
                             (write '(funapp 1754 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8189
                           (begin
                             (write '(funapp 1754 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1755 26))
                           (display "\n")
                           (= x8190 x8189)))
                        #f))))
                   g8185)))
               (snake
                (lambda (dir7563 segs7564)
                  (letrec*
                   ((g8191
                     (letrec*
                      ((x8192
                        (letrec*
                         ((x8193
                           (begin
                             (write '(funapp 1765 34))
                             (display "\n")
                             (orig-cons
                              segs7564
                              (begin
                                (write '(funapp 1765 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1766 26))
                           (display "\n")
                           (orig-cons dir7563 x8193)))))
                      (begin
                        (write '(funapp 1767 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1767 33))
                           (display "\n")
                           'snake)
                         x8192)))))
                   g8191)))
               (snake?
                (lambda (snake7562)
                  (letrec*
                   ((g8194
                     (letrec*
                      ((x8195
                        (begin
                          (write '(funapp 1773 39))
                          (display "\n")
                          (car snake7562))))
                      (begin
                        (write '(funapp 1773 57))
                        (display "\n")
                        (eq?
                         x8195
                         (begin
                           (write '(funapp 1773 67))
                           (display "\n")
                           'snake))))))
                   g8194)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8196
                     (letrec*
                      ((x8197
                        (begin
                          (write '(funapp 1779 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1779 58))
                        (display "\n")
                        (orig-car x8197)))))
                   g8196)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x8199
                        (letrec*
                         ((x8200
                           (begin
                             (write '(funapp 1787 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1787 61))
                           (display "\n")
                           (orig-cdr x8200)))))
                      (begin
                        (write '(funapp 1788 23))
                        (display "\n")
                        (orig-car x8199)))))
                   g8198)))
               (world
                (lambda (snake7568 food7569)
                  (letrec*
                   ((g8201
                     (letrec*
                      ((x8202
                        (letrec*
                         ((x8203
                           (begin
                             (write '(funapp 1797 34))
                             (display "\n")
                             (orig-cons
                              food7569
                              (begin
                                (write '(funapp 1797 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1798 26))
                           (display "\n")
                           (orig-cons snake7568 x8203)))))
                      (begin
                        (write '(funapp 1799 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1799 33))
                           (display "\n")
                           'world)
                         x8202)))))
                   g8201)))
               (world?
                (lambda (world7567)
                  (letrec*
                   ((g8204
                     (letrec*
                      ((x8205
                        (begin
                          (write '(funapp 1805 39))
                          (display "\n")
                          (car world7567))))
                      (begin
                        (write '(funapp 1805 57))
                        (display "\n")
                        (eq?
                         x8205
                         (begin
                           (write '(funapp 1805 67))
                           (display "\n")
                           'world))))))
                   g8204)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8206
                     (letrec*
                      ((x8207
                        (begin
                          (write '(funapp 1811 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1811 58))
                        (display "\n")
                        (orig-car x8207)))))
                   g8206)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8208
                     (letrec*
                      ((x8209
                        (letrec*
                         ((x8210
                           (begin
                             (write '(funapp 1819 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1819 61))
                           (display "\n")
                           (orig-cdr x8210)))))
                      (begin
                        (write '(funapp 1820 23))
                        (display "\n")
                        (orig-car x8209)))))
                   g8208)))
               (DIR/C
                (lambda (g7413 g7414 g7415)
                  (letrec*
                   ((g8211
                     (letrec*
                      ((x-cnd8212
                        (begin
                          (write '(funapp 1828 25))
                          (display "\n")
                          ((lambda (v7412)
                             (letrec*
                              ((g8213
                                (letrec*
                                 ((x-cnd8214
                                   (begin
                                     (write '(funapp 1832 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1832 48))
                                        (display "\n")
                                        'up)
                                      v7412))))
                                 (if x-cnd8214
                                   #t
                                   (letrec*
                                    ((x-cnd8215
                                      (begin
                                        (write '(funapp 1836 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1836 51))
                                           (display "\n")
                                           'down)
                                         v7412))))
                                    (if x-cnd8215
                                      #t
                                      (letrec*
                                       ((x-cnd8216
                                         (begin
                                           (write '(funapp 1840 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1840 54))
                                              (display "\n")
                                              'left)
                                            v7412))))
                                       (if x-cnd8216
                                         #t
                                         (begin
                                           (write '(funapp 1843 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1843 44))
                                              (display "\n")
                                              'right)
                                            v7412))))))))))
                              g8213))
                           g7415))))
                      (if x-cnd8212
                        g7415
                        (begin
                          (write '(blame g7413 1848 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7413)))))))
                   g8211)))
               (POSN/C
                (lambda (j7417 k7418 v7416)
                  (letrec*
                   ((g8217
                     (letrec*
                      ((checked7419
                        (letrec*
                         ((x8218
                           (letrec*
                            ((x8219
                              (begin
                                (write '(funapp 1868 37))
                                (display "\n")
                                (orig-cdr v7416))))
                            (begin
                              (write '(funapp 1869 29))
                              (display "\n")
                              (orig-car x8219)))))
                         (begin
                           (write '(funapp 1870 26))
                           (display "\n")
                           (real?/c j7417 k7418 x8218)))))
                      (letrec*
                       ((g8220
                         (letrec*
                          ((checked7420
                            (letrec*
                             ((x8221
                               (letrec*
                                ((x8222
                                  (letrec*
                                   ((x8223
                                     (begin
                                       (write '(funapp 1880 44))
                                       (display "\n")
                                       (orig-cdr v7416))))
                                   (begin
                                     (write '(funapp 1881 36))
                                     (display "\n")
                                     (orig-cdr x8223)))))
                                (begin
                                  (write '(funapp 1882 33))
                                  (display "\n")
                                  (orig-car x8222)))))
                             (begin
                               (write '(funapp 1883 30))
                               (display "\n")
                               (real?/c j7417 k7418 x8221)))))
                          (letrec*
                           ((g8224
                             (letrec*
                              ((x8225
                                (letrec*
                                 ((x8226
                                   (begin
                                     (write '(funapp 1889 42))
                                     (display "\n")
                                     (cons
                                      checked7420
                                      (begin
                                        (write '(funapp 1889 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1890 34))
                                   (display "\n")
                                   (cons checked7419 x8226)))))
                              (begin
                                (write '(funapp 1891 31))
                                (display "\n")
                                (cons posn x8225)))))
                           g8224))))
                       g8220))))
                   g8217)))
               (SNAKE/C
                (lambda (j7423 k7424 v7422)
                  (letrec*
                   ((g8227
                     (letrec*
                      ((checked7425
                        (letrec*
                         ((x8228
                           (letrec*
                            ((x8229
                              (begin
                                (write '(funapp 1904 37))
                                (display "\n")
                                (orig-cdr v7422))))
                            (begin
                              (write '(funapp 1905 29))
                              (display "\n")
                              (orig-car x8229)))))
                         (begin
                           (write '(funapp 1906 26))
                           (display "\n")
                           (DIR/C j7423 k7424 x8228)))))
                      (letrec*
                       ((g8230
                         (letrec*
                          ((checked7426
                            (letrec*
                             ((x8234
                               (letrec*
                                ((x8235
                                  (begin
                                    (write '(funapp 1914 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1915 33))
                                  (display "\n")
                                  (and/c cons?/c x8235))))
                              (x8231
                               (letrec*
                                ((x8232
                                  (letrec*
                                   ((x8233
                                     (begin
                                       (write '(funapp 1920 44))
                                       (display "\n")
                                       (orig-cdr v7422))))
                                   (begin
                                     (write '(funapp 1921 36))
                                     (display "\n")
                                     (orig-cdr x8233)))))
                                (begin
                                  (write '(funapp 1922 33))
                                  (display "\n")
                                  (orig-car x8232)))))
                             (begin
                               (write '(funapp 1923 30))
                               (display "\n")
                               (x8234 j7423 k7424 x8231)))))
                          (letrec*
                           ((g8236
                             (letrec*
                              ((x8237
                                (letrec*
                                 ((x8238
                                   (begin
                                     (write '(funapp 1929 42))
                                     (display "\n")
                                     (cons
                                      checked7426
                                      (begin
                                        (write '(funapp 1929 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1930 34))
                                   (display "\n")
                                   (cons checked7425 x8238)))))
                              (begin
                                (write '(funapp 1931 31))
                                (display "\n")
                                (cons snake x8237)))))
                           g8236))))
                       g8230))))
                   g8227)))
               (WORLD/C
                (lambda (j7429 k7430 v7428)
                  (letrec*
                   ((g8239
                     (letrec*
                      ((checked7431
                        (letrec*
                         ((x8240
                           (letrec*
                            ((x8241
                              (begin
                                (write '(funapp 1944 37))
                                (display "\n")
                                (orig-cdr v7428))))
                            (begin
                              (write '(funapp 1945 29))
                              (display "\n")
                              (orig-car x8241)))))
                         (begin
                           (write '(funapp 1946 26))
                           (display "\n")
                           (SNAKE/C j7429 k7430 x8240)))))
                      (letrec*
                       ((g8242
                         (letrec*
                          ((checked7432
                            (letrec*
                             ((x8243
                               (letrec*
                                ((x8244
                                  (letrec*
                                   ((x8245
                                     (begin
                                       (write '(funapp 1956 44))
                                       (display "\n")
                                       (orig-cdr v7428))))
                                   (begin
                                     (write '(funapp 1957 36))
                                     (display "\n")
                                     (orig-cdr x8245)))))
                                (begin
                                  (write '(funapp 1958 33))
                                  (display "\n")
                                  (orig-car x8244)))))
                             (begin
                               (write '(funapp 1959 30))
                               (display "\n")
                               (POSN/C j7429 k7430 x8243)))))
                          (letrec*
                           ((g8246
                             (letrec*
                              ((x8247
                                (letrec*
                                 ((x8248
                                   (begin
                                     (write '(funapp 1965 42))
                                     (display "\n")
                                     (cons
                                      checked7432
                                      (begin
                                        (write '(funapp 1965 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1966 34))
                                   (display "\n")
                                   (cons checked7431 x8248)))))
                              (begin
                                (write '(funapp 1967 31))
                                (display "\n")
                                (cons world x8247)))))
                           g8246))))
                       g8242))))
                   g8239)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1974 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1975 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1977 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1978 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1979 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1981 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8250
                   (letrec*
                    ((x8251
                      (letrec*
                       ((x8252
                         (begin
                           (write '(funapp 1986 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1986 59))
                         (display "\n")
                         (cons x8252 empty)))))
                    (begin
                      (write '(funapp 1987 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1987 27)) (display "\n") 'right)
                       x8251))))
                  (x8249
                   (begin
                     (write '(funapp 1988 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1989 18))
                   (display "\n")
                   (world x8250 x8249))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8253
                     (letrec*
                      ((x8254
                        (letrec*
                         ((x8255
                           (begin
                             (write '(funapp 1996 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1996 61))
                           (display "\n")
                           (car x8255)))))
                      (begin
                        (write '(funapp 1997 23))
                        (display "\n")
                        (head-collide? x8254)))))
                   g8253)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8256
                     (letrec*
                      ((val7263
                        (letrec*
                         ((x8257
                           (begin
                             (write '(funapp 2004 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 2004 63))
                           (display "\n")
                           (<= x8257 0)))))
                      (letrec*
                       ((g8258
                         (if val7263
                           val7263
                           (letrec*
                            ((val7264
                              (letrec*
                               ((x8259
                                 (begin
                                   (write '(funapp 2012 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 2013 32))
                                 (display "\n")
                                 (>= x8259 BOARD-WIDTH)))))
                            (letrec*
                             ((g8260
                               (if val7264
                                 val7264
                                 (letrec*
                                  ((val7265
                                    (letrec*
                                     ((x8261
                                       (begin
                                         (write '(funapp 2021 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 2022 38))
                                       (display "\n")
                                       (<= x8261 0)))))
                                  (letrec*
                                   ((g8262
                                     (if val7265
                                       val7265
                                       (letrec*
                                        ((x8263
                                          (begin
                                            (write '(funapp 2028 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 2029 41))
                                          (display "\n")
                                          (>= x8263 BOARD-HEIGHT))))))
                                   g8262)))))
                             g8260)))))
                       g8258))))
                   g8256)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8264
                     (letrec*
                      ((x8267
                        (letrec*
                         ((x8268
                           (begin
                             (write '(funapp 2039 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2039 67))
                           (display "\n")
                           (car x8268))))
                       (x8265
                        (letrec*
                         ((x8266
                           (begin
                             (write '(funapp 2041 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2041 61))
                           (display "\n")
                           (cdr x8266)))))
                      (begin
                        (write '(funapp 2042 23))
                        (display "\n")
                        (segs-self-collide? x8267 x8265)))))
                   g8264)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8269
                     (letrec*
                      ((x-cnd8270
                        (begin
                          (write '(funapp 2049 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8270
                        (letrec* ((g8271 #f)) g8271)
                        (letrec*
                         ((g8272
                           (letrec*
                            ((x8275
                              (letrec*
                               ((x8276
                                 (begin
                                   (write '(funapp 2056 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2056 61))
                                 (display "\n")
                                 (posn=? x8276 h))))
                             (x8273
                              (letrec*
                               ((x8274
                                 (begin
                                   (write '(funapp 2059 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2060 32))
                                 (display "\n")
                                 (segs-self-collide? h x8274)))))
                            (begin
                              (write '(funapp 2061 29))
                              (display "\n")
                              (or x8275 x8273)))))
                         g8272)))))
                   g8269)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8277
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2069 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8278
                         (letrec*
                          ((x-cnd8279
                            (begin
                              (write '(funapp 2073 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8279
                            (letrec* ((g8280 empty)) g8280)
                            (letrec*
                             ((g8281
                               (letrec*
                                ((x8283
                                  (begin
                                    (write '(funapp 2079 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8282
                                  (begin
                                    (write '(funapp 2079 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2080 33))
                                  (display "\n")
                                  (cons x8283 x8282)))))
                             g8281)))))
                       g8278))))
                   g8277)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8284
                     (letrec*
                      ((x-cnd8285
                        (begin
                          (write '(funapp 2089 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2089 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8285
                        (letrec*
                         ((g8286
                           (letrec*
                            ((x8288
                              (letrec*
                               ((x8289
                                 (begin
                                   (write '(funapp 2095 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2095 63))
                                 (display "\n")
                                 (add1 x8289))))
                             (x8287
                              (begin
                                (write '(funapp 2096 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2097 29))
                              (display "\n")
                              (posn x8288 x8287)))))
                         g8286)
                        (letrec*
                         ((x-cnd8290
                           (begin
                             (write '(funapp 2100 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2100 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8290
                           (letrec*
                            ((g8291
                              (letrec*
                               ((x8293
                                 (letrec*
                                  ((x8294
                                    (begin
                                      (write '(funapp 2106 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2106 66))
                                    (display "\n")
                                    (sub1 x8294))))
                                (x8292
                                 (begin
                                   (write '(funapp 2107 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2108 32))
                                 (display "\n")
                                 (posn x8293 x8292)))))
                            g8291)
                           (letrec*
                            ((x-cnd8295
                              (begin
                                (write '(funapp 2111 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2111 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8295
                              (letrec*
                               ((g8296
                                 (letrec*
                                  ((x8299
                                    (begin
                                      (write '(funapp 2116 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8297
                                    (letrec*
                                     ((x8298
                                       (begin
                                         (write '(funapp 2119 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2120 38))
                                       (display "\n")
                                       (sub1 x8298)))))
                                  (begin
                                    (write '(funapp 2121 35))
                                    (display "\n")
                                    (posn x8299 x8297)))))
                               g8296)
                              (letrec*
                               ((g8300
                                 (letrec*
                                  ((x8303
                                    (begin
                                      (write '(funapp 2126 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8301
                                    (letrec*
                                     ((x8302
                                       (begin
                                         (write '(funapp 2129 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2130 38))
                                       (display "\n")
                                       (add1 x8302)))))
                                  (begin
                                    (write '(funapp 2131 35))
                                    (display "\n")
                                    (posn x8303 x8301)))))
                               g8300)))))))))
                   g8284)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8304
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2139 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8305
                         (letrec*
                          ((x8306
                            (letrec*
                             ((x8309
                               (letrec*
                                ((x8310
                                  (letrec*
                                   ((x8311
                                     (begin
                                       (write '(funapp 2149 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2150 36))
                                     (display "\n")
                                     (car x8311)))))
                                (begin
                                  (write '(funapp 2151 33))
                                  (display "\n")
                                  (next-head x8310 d))))
                              (x8307
                               (letrec*
                                ((x8308
                                  (begin
                                    (write '(funapp 2154 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2155 33))
                                  (display "\n")
                                  (cut-tail x8308)))))
                             (begin
                               (write '(funapp 2156 30))
                               (display "\n")
                               (cons x8309 x8307)))))
                          (begin
                            (write '(funapp 2157 27))
                            (display "\n")
                            (snake d x8306)))))
                       g8305))))
                   g8304)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8312
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2165 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8313
                         (letrec*
                          ((x8314
                            (letrec*
                             ((x8316
                               (letrec*
                                ((x8317
                                  (letrec*
                                   ((x8318
                                     (begin
                                       (write '(funapp 2175 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2176 36))
                                     (display "\n")
                                     (car x8318)))))
                                (begin
                                  (write '(funapp 2177 33))
                                  (display "\n")
                                  (next-head x8317 d))))
                              (x8315
                               (begin
                                 (write '(funapp 2178 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2179 30))
                               (display "\n")
                               (cons x8316 x8315)))))
                          (begin
                            (write '(funapp 2180 27))
                            (display "\n")
                            (snake d x8314)))))
                       g8313))))
                   g8312)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8319
                     (letrec*
                      ((x-cnd8320
                        (begin
                          (write '(funapp 2188 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8320
                        (letrec*
                         ((g8321
                           (begin
                             (write '(funapp 2190 42))
                             (display "\n")
                             (snake-eat w))))
                         g8321)
                        (letrec*
                         ((g8322
                           (letrec*
                            ((x8324
                              (letrec*
                               ((x8325
                                 (begin
                                   (write '(funapp 2196 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2197 32))
                                 (display "\n")
                                 (snake-slither x8325))))
                             (x8323
                              (begin
                                (write '(funapp 2198 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2199 29))
                              (display "\n")
                              (world x8324 x8323)))))
                         g8322)))))
                   g8319)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8326
                     (letrec*
                      ((x8330
                        (begin
                          (write '(funapp 2207 31))
                          (display "\n")
                          (world-food w)))
                       (x8327
                        (letrec*
                         ((x8328
                           (letrec*
                            ((x8329
                              (begin
                                (write '(funapp 2212 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2213 29))
                              (display "\n")
                              (snake-segs x8329)))))
                         (begin
                           (write '(funapp 2214 26))
                           (display "\n")
                           (car x8328)))))
                      (begin
                        (write '(funapp 2215 23))
                        (display "\n")
                        (posn=? x8330 x8327)))))
                   g8326)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8331
                     (letrec*
                      ((x8332
                        (begin
                          (write '(funapp 2221 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2221 58))
                        (display "\n")
                        (snake dir x8332)))))
                   g8331)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8335
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 2230 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2231 26))
                           (display "\n")
                           (snake-change-direction x8336 dir))))
                       (x8334
                        (begin
                          (write '(funapp 2232 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2233 23))
                        (display "\n")
                        (world x8335 x8334)))))
                   g8333)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8337
                     (letrec*
                      ((x8341
                        (letrec*
                         ((x8342
                           (begin
                             (write '(funapp 2241 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2241 60))
                           (display "\n")
                           (snake-grow x8342))))
                       (x8338
                        (letrec*
                         ((x8340
                           (begin
                             (write '(funapp 2244 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8339
                           (begin
                             (write '(funapp 2244 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2245 26))
                           (display "\n")
                           (posn x8340 x8339)))))
                      (begin
                        (write '(funapp 2246 23))
                        (display "\n")
                        (world x8341 x8338)))))
                   g8337)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8343
                     (letrec*
                      ((x-cnd8344
                        (begin
                          (write '(funapp 2253 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8344
                        (letrec*
                         ((g8345
                           (begin
                             (write '(funapp 2255 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2255 61))
                                (display "\n")
                                'up)))))
                         g8345)
                        (letrec*
                         ((x-cnd8346
                           (begin
                             (write '(funapp 2257 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8346
                           (letrec*
                            ((g8347
                              (begin
                                (write '(funapp 2259 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2259 64))
                                   (display "\n")
                                   'down)))))
                            g8347)
                           (letrec*
                            ((x-cnd8348
                              (begin
                                (write '(funapp 2261 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8348
                              (letrec*
                               ((g8349
                                 (begin
                                   (write '(funapp 2264 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2264 59))
                                      (display "\n")
                                      'left)))))
                               g8349)
                              (letrec*
                               ((x-cnd8350
                                 (begin
                                   (write '(funapp 2267 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8350
                                 (letrec*
                                  ((g8351
                                    (begin
                                      (write '(funapp 2270 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2270 62))
                                         (display "\n")
                                         'right)))))
                                  g8351)
                                 (letrec* ((g8352 w)) g8352)))))))))))
                   g8343)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8353
                     (letrec*
                      ((val7266
                        (letrec*
                         ((x8354
                           (begin
                             (write '(funapp 2281 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2282 26))
                           (display "\n")
                           (snake-wall-collide? x8354)))))
                      (letrec*
                       ((g8355
                         (if val7266
                           val7266
                           (letrec*
                            ((x8356
                              (begin
                                (write '(funapp 2288 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2289 29))
                              (display "\n")
                              (snake-self-collide? x8356))))))
                       g8355))))
                   g8353)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8357
                     (letrec*
                      ((x8360
                        (begin
                          (write '(funapp 2297 31))
                          (display "\n")
                          (world-snake w)))
                       (x8358
                        (letrec*
                         ((x8359
                           (begin
                             (write '(funapp 2300 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2301 26))
                           (display "\n")
                           (food+scene x8359 BACKGROUND)))))
                      (begin
                        (write '(funapp 2302 23))
                        (display "\n")
                        (snake+scene x8360 x8358)))))
                   g8357)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8361
                     (letrec*
                      ((x8363
                        (begin
                          (write '(funapp 2309 31))
                          (display "\n")
                          (posn-x f)))
                       (x8362
                        (begin
                          (write '(funapp 2309 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2310 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8363 x8362 scn)))))
                   g8361)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8364
                     (letrec*
                      ((x8367
                        (begin
                          (write '(funapp 2317 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8365
                        (letrec*
                         ((x8366
                           (begin
                             (write '(funapp 2320 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2321 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8366)))))
                      (begin
                        (write '(funapp 2322 23))
                        (display "\n")
                        (place-image img x8367 x8365 scn)))))
                   g8364)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8368
                     (letrec*
                      ((x8369
                        (begin
                          (write '(funapp 2329 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2330 23))
                        (display "\n")
                        (segments+scene x8369 scn)))))
                   g8368)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8370
                     (letrec*
                      ((x-cnd8371
                        (begin
                          (write '(funapp 2337 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8371
                        (letrec* ((g8372 scn)) g8372)
                        (letrec*
                         ((g8373
                           (letrec*
                            ((x8376
                              (begin
                                (write '(funapp 2343 37))
                                (display "\n")
                                (cdr segs)))
                             (x8374
                              (letrec*
                               ((x8375
                                 (begin
                                   (write '(funapp 2346 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2347 32))
                                 (display "\n")
                                 (segment+scene x8375 scn)))))
                            (begin
                              (write '(funapp 2348 29))
                              (display "\n")
                              (segments+scene x8376 x8374)))))
                         g8373)))))
                   g8370)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8377
                     (letrec*
                      ((x8379
                        (begin
                          (write '(funapp 2356 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8378
                        (begin
                          (write '(funapp 2356 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2357 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8379 x8378 scn)))))
                   g8377))))
              (letrec*
               ((g8380
                 (begin
                   (write '(funapp 2361 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2362 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8391
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2366 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2366 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2366 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2366 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8392
                              (begin
                                (write '(funapp 2369 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8393
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8394
                                           (letrec*
                                            ((x8395
                                              (letrec*
                                               ((x8397
                                                 (begin
                                                   (write '(funapp 2378 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8396
                                                 (begin
                                                   (write '(funapp 2379 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2380 42))
                                                 (display "\n")
                                                 (f7440 x8397 x8396)))))
                                            (begin
                                              (write '(funapp 2381 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8395)))))
                                         g8394))))
                                    g8393))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8392)))
                         (x8386
                          (letrec*
                           ((x8387
                             (letrec*
                              ((x8390 (input))
                               (x8388
                                (letrec*
                                 ((x8389 (input)))
                                 (begin
                                   (write '(funapp 2394 56))
                                   (display "\n")
                                   (cons
                                    x8389
                                    (begin
                                      (write '(funapp 2394 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2395 27))
                                (display "\n")
                                (cons x8390 x8388)))))
                           (begin
                             (write '(funapp 2396 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2396 29))
                                (display "\n")
                                'posn)
                              x8387))))
                         (x8381
                          (letrec*
                           ((x8382
                             (letrec*
                              ((x8385 (input))
                               (x8383
                                (letrec*
                                 ((x8384 (input)))
                                 (begin
                                   (write '(funapp 2403 56))
                                   (display "\n")
                                   (cons
                                    x8384
                                    (begin
                                      (write '(funapp 2403 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2404 27))
                                (display "\n")
                                (cons x8385 x8383)))))
                           (begin
                             (write '(funapp 2405 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2405 29))
                                (display "\n")
                                'posn)
                              x8382)))))
                        (begin
                          (write '(funapp 2406 21))
                          (display "\n")
                          (x8391 x8386 x8381)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2408 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2408 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2408 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2408 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8398
                           (begin
                             (write '(funapp 2409 38))
                             (display "\n")
                             (WORLD/C xj7441 xk7442 WORLD))))
                         g8398))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2411 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2411 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2411 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2411 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8399
                           (begin
                             (write '(funapp 2413 30))
                             (display "\n")
                             (image/c xj7443 xk7444 BACKGROUND))))
                         g8399))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2416 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2416 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2416 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2416 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8400
                           (begin
                             (write '(funapp 2418 30))
                             (display "\n")
                             (image/c xj7445 xk7446 FOOD-IMAGE))))
                         g8400))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2421 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2421 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2421 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2421 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8401
                           (begin
                             (write '(funapp 2423 30))
                             (display "\n")
                             (image/c xj7447 xk7448 SEGMENT-IMAGE))))
                         g8401))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2426 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2426 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2426 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2426 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8402
                           (begin
                             (write '(funapp 2428 30))
                             (display "\n")
                             (real?/c xj7449 xk7450 GRID-SIZE))))
                         g8402))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2431 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2431 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2431 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2431 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8403
                           (begin
                             (write '(funapp 2433 30))
                             (display "\n")
                             (real?/c xj7451 xk7452 BOARD-HEIGHT-PIXELS))))
                         g8403))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2436 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2436 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2436 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2436 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8404
                           (begin
                             (write '(funapp 2438 30))
                             (display "\n")
                             (real?/c xj7453 xk7454 BOARD-WIDTH))))
                         g8404))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2441 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2441 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2441 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2441 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8405
                           (begin
                             (write '(funapp 2443 30))
                             (display "\n")
                             (real?/c xj7455 xk7456 BOARD-HEIGHT))))
                         g8405))
                       (letrec*
                        ((x8411
                          (letrec*
                           ((xj7457
                             (begin
                               (write '(funapp 2448 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2448 37))
                                  (display "\n")
                                  'module))))
                            (xk7458
                             (begin
                               (write '(funapp 2448 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2448 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8412
                              (begin
                                (write '(funapp 2451 27))
                                (display "\n")
                                ((lambda (j7460 k7461 f7462)
                                   (letrec*
                                    ((g8413
                                      (lambda (g7459)
                                        (letrec*
                                         ((g8414
                                           (letrec*
                                            ((x8415
                                              (letrec*
                                               ((x8416
                                                 (begin
                                                   (write '(funapp 2460 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7460
                                                    k7461
                                                    g7459))))
                                               (begin
                                                 (write '(funapp 2461 42))
                                                 (display "\n")
                                                 (f7462 x8416)))))
                                            (begin
                                              (write '(funapp 2462 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7460
                                               k7461
                                               x8415)))))
                                         g8414))))
                                    g8413))
                                 xj7457
                                 xk7458
                                 snake-wall-collide?))))
                            g8412)))
                         (x8406
                          (letrec*
                           ((x8407
                             (letrec*
                              ((x8410 (input))
                               (x8408
                                (letrec*
                                 ((x8409 (input)))
                                 (begin
                                   (write '(funapp 2475 56))
                                   (display "\n")
                                   (cons
                                    x8409
                                    (begin
                                      (write '(funapp 2475 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2476 27))
                                (display "\n")
                                (cons x8410 x8408)))))
                           (begin
                             (write '(funapp 2477 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2477 29))
                                (display "\n")
                                'snake)
                              x8407)))))
                        (begin
                          (write '(funapp 2478 21))
                          (display "\n")
                          (x8411 x8406)))
                       (letrec*
                        ((x8422
                          (letrec*
                           ((xj7463
                             (begin
                               (write '(funapp 2482 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2482 37))
                                  (display "\n")
                                  'module))))
                            (xk7464
                             (begin
                               (write '(funapp 2482 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2482 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8423
                              (begin
                                (write '(funapp 2485 27))
                                (display "\n")
                                ((lambda (j7466 k7467 f7468)
                                   (letrec*
                                    ((g8424
                                      (lambda (g7465)
                                        (letrec*
                                         ((g8425
                                           (letrec*
                                            ((x8426
                                              (letrec*
                                               ((x8427
                                                 (begin
                                                   (write '(funapp 2494 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7466
                                                    k7467
                                                    g7465))))
                                               (begin
                                                 (write '(funapp 2495 42))
                                                 (display "\n")
                                                 (f7468 x8427)))))
                                            (begin
                                              (write '(funapp 2496 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7466
                                               k7467
                                               x8426)))))
                                         g8425))))
                                    g8424))
                                 xj7463
                                 xk7464
                                 snake-self-collide?))))
                            g8423)))
                         (x8417
                          (letrec*
                           ((x8418
                             (letrec*
                              ((x8421 (input))
                               (x8419
                                (letrec*
                                 ((x8420 (input)))
                                 (begin
                                   (write '(funapp 2509 56))
                                   (display "\n")
                                   (cons
                                    x8420
                                    (begin
                                      (write '(funapp 2509 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2510 27))
                                (display "\n")
                                (cons x8421 x8419)))))
                           (begin
                             (write '(funapp 2511 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2511 29))
                                (display "\n")
                                'snake)
                              x8418)))))
                        (begin
                          (write '(funapp 2512 21))
                          (display "\n")
                          (x8422 x8417)))
                       (letrec*
                        ((x8429
                          (letrec*
                           ((xj7469
                             (begin
                               (write '(funapp 2516 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2516 37))
                                  (display "\n")
                                  'module))))
                            (xk7470
                             (begin
                               (write '(funapp 2516 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2516 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8430
                              (begin
                                (write '(funapp 2519 27))
                                (display "\n")
                                ((lambda (j7472 k7473 f7474)
                                   (letrec*
                                    ((g8431
                                      (lambda (g7471)
                                        (letrec*
                                         ((g8432
                                           (letrec*
                                            ((x8437
                                              (begin
                                                (write '(funapp 2526 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8433
                                              (letrec*
                                               ((x8434
                                                 (letrec*
                                                  ((x8435
                                                    (letrec*
                                                     ((x8436
                                                       (begin
                                                         (write
                                                          '(funapp 2533 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2534 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8436)))))
                                                  (begin
                                                    (write '(funapp 2535 45))
                                                    (display "\n")
                                                    (x8435
                                                     j7472
                                                     k7473
                                                     g7471)))))
                                               (begin
                                                 (write '(funapp 2536 42))
                                                 (display "\n")
                                                 (f7474 x8434)))))
                                            (begin
                                              (write '(funapp 2537 39))
                                              (display "\n")
                                              (x8437 j7472 k7473 x8433)))))
                                         g8432))))
                                    g8431))
                                 xj7469
                                 xk7470
                                 cut-tail))))
                            g8430)))
                         (x8428 (input)))
                        (begin
                          (write '(funapp 2545 21))
                          (display "\n")
                          (x8429 x8428)))
                       (letrec*
                        ((x8443
                          (letrec*
                           ((xj7475
                             (begin
                               (write '(funapp 2549 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2549 37))
                                  (display "\n")
                                  'module))))
                            (xk7476
                             (begin
                               (write '(funapp 2549 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2549 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8444
                              (begin
                                (write '(funapp 2552 27))
                                (display "\n")
                                ((lambda (j7478 k7479 f7480)
                                   (letrec*
                                    ((g8445
                                      (lambda (g7477)
                                        (letrec*
                                         ((g8446
                                           (letrec*
                                            ((x8447
                                              (letrec*
                                               ((x8448
                                                 (begin
                                                   (write '(funapp 2561 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7478
                                                    k7479
                                                    g7477))))
                                               (begin
                                                 (write '(funapp 2562 42))
                                                 (display "\n")
                                                 (f7480 x8448)))))
                                            (begin
                                              (write '(funapp 2563 39))
                                              (display "\n")
                                              (SNAKE/C j7478 k7479 x8447)))))
                                         g8446))))
                                    g8445))
                                 xj7475
                                 xk7476
                                 snake-slither))))
                            g8444)))
                         (x8438
                          (letrec*
                           ((x8439
                             (letrec*
                              ((x8442 (input))
                               (x8440
                                (letrec*
                                 ((x8441 (input)))
                                 (begin
                                   (write '(funapp 2576 56))
                                   (display "\n")
                                   (cons
                                    x8441
                                    (begin
                                      (write '(funapp 2576 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2577 27))
                                (display "\n")
                                (cons x8442 x8440)))))
                           (begin
                             (write '(funapp 2578 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2578 29))
                                (display "\n")
                                'snake)
                              x8439)))))
                        (begin
                          (write '(funapp 2579 21))
                          (display "\n")
                          (x8443 x8438)))
                       (letrec*
                        ((x8454
                          (letrec*
                           ((xj7481
                             (begin
                               (write '(funapp 2583 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2583 37))
                                  (display "\n")
                                  'module))))
                            (xk7482
                             (begin
                               (write '(funapp 2583 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2583 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8455
                              (begin
                                (write '(funapp 2586 27))
                                (display "\n")
                                ((lambda (j7484 k7485 f7486)
                                   (letrec*
                                    ((g8456
                                      (lambda (g7483)
                                        (letrec*
                                         ((g8457
                                           (letrec*
                                            ((x8458
                                              (letrec*
                                               ((x8459
                                                 (begin
                                                   (write '(funapp 2595 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7484
                                                    k7485
                                                    g7483))))
                                               (begin
                                                 (write '(funapp 2596 42))
                                                 (display "\n")
                                                 (f7486 x8459)))))
                                            (begin
                                              (write '(funapp 2597 39))
                                              (display "\n")
                                              (SNAKE/C j7484 k7485 x8458)))))
                                         g8457))))
                                    g8456))
                                 xj7481
                                 xk7482
                                 snake-grow))))
                            g8455)))
                         (x8449
                          (letrec*
                           ((x8450
                             (letrec*
                              ((x8453 (input))
                               (x8451
                                (letrec*
                                 ((x8452 (input)))
                                 (begin
                                   (write '(funapp 2610 56))
                                   (display "\n")
                                   (cons
                                    x8452
                                    (begin
                                      (write '(funapp 2610 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2611 27))
                                (display "\n")
                                (cons x8453 x8451)))))
                           (begin
                             (write '(funapp 2612 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2612 29))
                                (display "\n")
                                'snake)
                              x8450)))))
                        (begin
                          (write '(funapp 2613 21))
                          (display "\n")
                          (x8454 x8449)))
                       (letrec*
                        ((x8474
                          (letrec*
                           ((xj7487
                             (begin
                               (write '(funapp 2617 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2617 37))
                                  (display "\n")
                                  'module))))
                            (xk7488
                             (begin
                               (write '(funapp 2617 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2617 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8475
                              (begin
                                (write '(funapp 2620 27))
                                (display "\n")
                                ((lambda (j7491 k7492 f7493)
                                   (letrec*
                                    ((g8476
                                      (lambda (g7489 g7490)
                                        (letrec*
                                         ((g8477
                                           (letrec*
                                            ((x8478
                                              (letrec*
                                               ((x8480
                                                 (begin
                                                   (write '(funapp 2629 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7491
                                                    k7492
                                                    g7489)))
                                                (x8479
                                                 (begin
                                                   (write '(funapp 2630 50))
                                                   (display "\n")
                                                   (DIR/C j7491 k7492 g7490))))
                                               (begin
                                                 (write '(funapp 2631 42))
                                                 (display "\n")
                                                 (f7493 x8480 x8479)))))
                                            (begin
                                              (write '(funapp 2632 39))
                                              (display "\n")
                                              (WORLD/C j7491 k7492 x8478)))))
                                         g8477))))
                                    g8476))
                                 xj7487
                                 xk7488
                                 world-change-dir))))
                            g8475)))
                         (x8461
                          (letrec*
                           ((x8462
                             (letrec*
                              ((x8469
                                (letrec*
                                 ((x8470
                                   (letrec*
                                    ((x8473 (input))
                                     (x8471
                                      (letrec*
                                       ((x8472 (input)))
                                       (begin
                                         (write '(funapp 2651 36))
                                         (display "\n")
                                         (cons
                                          x8472
                                          (begin
                                            (write '(funapp 2651 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2652 33))
                                      (display "\n")
                                      (cons x8473 x8471)))))
                                 (begin
                                   (write '(funapp 2653 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2653 35))
                                      (display "\n")
                                      'snake)
                                    x8470))))
                               (x8463
                                (letrec*
                                 ((x8464
                                   (letrec*
                                    ((x8465
                                      (letrec*
                                       ((x8468 (input))
                                        (x8466
                                         (letrec*
                                          ((x8467 (input)))
                                          (begin
                                            (write '(funapp 2664 39))
                                            (display "\n")
                                            (cons
                                             x8467
                                             (begin
                                               (write '(funapp 2664 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2665 36))
                                         (display "\n")
                                         (cons x8468 x8466)))))
                                    (begin
                                      (write '(funapp 2666 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2666 38))
                                         (display "\n")
                                         'posn)
                                       x8465)))))
                                 (begin
                                   (write '(funapp 2667 30))
                                   (display "\n")
                                   (cons
                                    x8464
                                    (begin
                                      (write '(funapp 2667 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2668 27))
                                (display "\n")
                                (cons x8469 x8463)))))
                           (begin
                             (write '(funapp 2669 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2669 29))
                                (display "\n")
                                'world)
                              x8462))))
                         (x8460 (input)))
                        (begin
                          (write '(funapp 2671 21))
                          (display "\n")
                          (x8474 x8461 x8460)))
                       (letrec*
                        ((x8494
                          (letrec*
                           ((xj7494
                             (begin
                               (write '(funapp 2675 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2675 37))
                                  (display "\n")
                                  'module))))
                            (xk7495
                             (begin
                               (write '(funapp 2675 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2675 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8495
                              (begin
                                (write '(funapp 2678 27))
                                (display "\n")
                                ((lambda (j7497 k7498 f7499)
                                   (letrec*
                                    ((g8496
                                      (lambda (g7496)
                                        (letrec*
                                         ((g8497
                                           (letrec*
                                            ((x8498
                                              (letrec*
                                               ((x8499
                                                 (begin
                                                   (write '(funapp 2687 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7497
                                                    k7498
                                                    g7496))))
                                               (begin
                                                 (write '(funapp 2688 42))
                                                 (display "\n")
                                                 (f7499 x8499)))))
                                            (begin
                                              (write '(funapp 2689 39))
                                              (display "\n")
                                              (WORLD/C j7497 k7498 x8498)))))
                                         g8497))))
                                    g8496))
                                 xj7494
                                 xk7495
                                 world->world))))
                            g8495)))
                         (x8481
                          (letrec*
                           ((x8482
                             (letrec*
                              ((x8489
                                (letrec*
                                 ((x8490
                                   (letrec*
                                    ((x8493 (input))
                                     (x8491
                                      (letrec*
                                       ((x8492 (input)))
                                       (begin
                                         (write '(funapp 2708 36))
                                         (display "\n")
                                         (cons
                                          x8492
                                          (begin
                                            (write '(funapp 2708 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2709 33))
                                      (display "\n")
                                      (cons x8493 x8491)))))
                                 (begin
                                   (write '(funapp 2710 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2710 35))
                                      (display "\n")
                                      'snake)
                                    x8490))))
                               (x8483
                                (letrec*
                                 ((x8484
                                   (letrec*
                                    ((x8485
                                      (letrec*
                                       ((x8488 (input))
                                        (x8486
                                         (letrec*
                                          ((x8487 (input)))
                                          (begin
                                            (write '(funapp 2721 39))
                                            (display "\n")
                                            (cons
                                             x8487
                                             (begin
                                               (write '(funapp 2721 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2722 36))
                                         (display "\n")
                                         (cons x8488 x8486)))))
                                    (begin
                                      (write '(funapp 2723 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2723 38))
                                         (display "\n")
                                         'posn)
                                       x8485)))))
                                 (begin
                                   (write '(funapp 2724 30))
                                   (display "\n")
                                   (cons
                                    x8484
                                    (begin
                                      (write '(funapp 2724 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2725 27))
                                (display "\n")
                                (cons x8489 x8483)))))
                           (begin
                             (write '(funapp 2726 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2726 29))
                                (display "\n")
                                'world)
                              x8482)))))
                        (begin
                          (write '(funapp 2727 21))
                          (display "\n")
                          (x8494 x8481)))
                       (letrec*
                        ((x8514
                          (letrec*
                           ((xj7500
                             (begin
                               (write '(funapp 2731 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2731 37))
                                  (display "\n")
                                  'module))))
                            (xk7501
                             (begin
                               (write '(funapp 2731 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2731 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8515
                              (begin
                                (write '(funapp 2734 27))
                                (display "\n")
                                ((lambda (j7504 k7505 f7506)
                                   (letrec*
                                    ((g8516
                                      (lambda (g7502 g7503)
                                        (letrec*
                                         ((g8517
                                           (letrec*
                                            ((x8518
                                              (letrec*
                                               ((x8520
                                                 (begin
                                                   (write '(funapp 2743 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7504
                                                    k7505
                                                    g7502)))
                                                (x8519
                                                 (begin
                                                   (write '(funapp 2745 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7504
                                                    k7505
                                                    g7503))))
                                               (begin
                                                 (write '(funapp 2746 42))
                                                 (display "\n")
                                                 (f7506 x8520 x8519)))))
                                            (begin
                                              (write '(funapp 2747 39))
                                              (display "\n")
                                              (WORLD/C j7504 k7505 x8518)))))
                                         g8517))))
                                    g8516))
                                 xj7500
                                 xk7501
                                 handle-key))))
                            g8515)))
                         (x8501
                          (letrec*
                           ((x8502
                             (letrec*
                              ((x8509
                                (letrec*
                                 ((x8510
                                   (letrec*
                                    ((x8513 (input))
                                     (x8511
                                      (letrec*
                                       ((x8512 (input)))
                                       (begin
                                         (write '(funapp 2766 36))
                                         (display "\n")
                                         (cons
                                          x8512
                                          (begin
                                            (write '(funapp 2766 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2767 33))
                                      (display "\n")
                                      (cons x8513 x8511)))))
                                 (begin
                                   (write '(funapp 2768 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2768 35))
                                      (display "\n")
                                      'snake)
                                    x8510))))
                               (x8503
                                (letrec*
                                 ((x8504
                                   (letrec*
                                    ((x8505
                                      (letrec*
                                       ((x8508 (input))
                                        (x8506
                                         (letrec*
                                          ((x8507 (input)))
                                          (begin
                                            (write '(funapp 2779 39))
                                            (display "\n")
                                            (cons
                                             x8507
                                             (begin
                                               (write '(funapp 2779 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2780 36))
                                         (display "\n")
                                         (cons x8508 x8506)))))
                                    (begin
                                      (write '(funapp 2781 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2781 38))
                                         (display "\n")
                                         'posn)
                                       x8505)))))
                                 (begin
                                   (write '(funapp 2782 30))
                                   (display "\n")
                                   (cons
                                    x8504
                                    (begin
                                      (write '(funapp 2782 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2783 27))
                                (display "\n")
                                (cons x8509 x8503)))))
                           (begin
                             (write '(funapp 2784 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2784 29))
                                (display "\n")
                                'world)
                              x8502))))
                         (x8500 (input)))
                        (begin
                          (write '(funapp 2786 21))
                          (display "\n")
                          (x8514 x8501 x8500)))
                       (letrec*
                        ((x8534
                          (letrec*
                           ((xj7507
                             (begin
                               (write '(funapp 2790 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2790 37))
                                  (display "\n")
                                  'module))))
                            (xk7508
                             (begin
                               (write '(funapp 2790 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2790 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8535
                              (begin
                                (write '(funapp 2793 27))
                                (display "\n")
                                ((lambda (j7510 k7511 f7512)
                                   (letrec*
                                    ((g8536
                                      (lambda (g7509)
                                        (letrec*
                                         ((g8537
                                           (letrec*
                                            ((x8538
                                              (letrec*
                                               ((x8539
                                                 (begin
                                                   (write '(funapp 2802 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7510
                                                    k7511
                                                    g7509))))
                                               (begin
                                                 (write '(funapp 2803 42))
                                                 (display "\n")
                                                 (f7512 x8539)))))
                                            (begin
                                              (write '(funapp 2804 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7510
                                               k7511
                                               x8538)))))
                                         g8537))))
                                    g8536))
                                 xj7507
                                 xk7508
                                 game-over?))))
                            g8535)))
                         (x8521
                          (letrec*
                           ((x8522
                             (letrec*
                              ((x8529
                                (letrec*
                                 ((x8530
                                   (letrec*
                                    ((x8533 (input))
                                     (x8531
                                      (letrec*
                                       ((x8532 (input)))
                                       (begin
                                         (write '(funapp 2823 36))
                                         (display "\n")
                                         (cons
                                          x8532
                                          (begin
                                            (write '(funapp 2823 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2824 33))
                                      (display "\n")
                                      (cons x8533 x8531)))))
                                 (begin
                                   (write '(funapp 2825 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2825 35))
                                      (display "\n")
                                      'snake)
                                    x8530))))
                               (x8523
                                (letrec*
                                 ((x8524
                                   (letrec*
                                    ((x8525
                                      (letrec*
                                       ((x8528 (input))
                                        (x8526
                                         (letrec*
                                          ((x8527 (input)))
                                          (begin
                                            (write '(funapp 2836 39))
                                            (display "\n")
                                            (cons
                                             x8527
                                             (begin
                                               (write '(funapp 2836 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2837 36))
                                         (display "\n")
                                         (cons x8528 x8526)))))
                                    (begin
                                      (write '(funapp 2838 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2838 38))
                                         (display "\n")
                                         'posn)
                                       x8525)))))
                                 (begin
                                   (write '(funapp 2839 30))
                                   (display "\n")
                                   (cons
                                    x8524
                                    (begin
                                      (write '(funapp 2839 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2840 27))
                                (display "\n")
                                (cons x8529 x8523)))))
                           (begin
                             (write '(funapp 2841 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2841 29))
                                (display "\n")
                                'world)
                              x8522)))))
                        (begin
                          (write '(funapp 2842 21))
                          (display "\n")
                          (x8534 x8521)))
                       (letrec*
                        ((x8553
                          (letrec*
                           ((xj7513
                             (begin
                               (write '(funapp 2846 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2846 37))
                                  (display "\n")
                                  'module))))
                            (xk7514
                             (begin
                               (write '(funapp 2846 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2846 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8554
                              (begin
                                (write '(funapp 2849 27))
                                (display "\n")
                                ((lambda (j7516 k7517 f7518)
                                   (letrec*
                                    ((g8555
                                      (lambda (g7515)
                                        (letrec*
                                         ((g8556
                                           (letrec*
                                            ((x8557
                                              (letrec*
                                               ((x8558
                                                 (begin
                                                   (write '(funapp 2858 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7516
                                                    k7517
                                                    g7515))))
                                               (begin
                                                 (write '(funapp 2859 42))
                                                 (display "\n")
                                                 (f7518 x8558)))))
                                            (begin
                                              (write '(funapp 2860 39))
                                              (display "\n")
                                              (image/c j7516 k7517 x8557)))))
                                         g8556))))
                                    g8555))
                                 xj7513
                                 xk7514
                                 world->scene))))
                            g8554)))
                         (x8540
                          (letrec*
                           ((x8541
                             (letrec*
                              ((x8548
                                (letrec*
                                 ((x8549
                                   (letrec*
                                    ((x8552 (input))
                                     (x8550
                                      (letrec*
                                       ((x8551 (input)))
                                       (begin
                                         (write '(funapp 2879 36))
                                         (display "\n")
                                         (cons
                                          x8551
                                          (begin
                                            (write '(funapp 2879 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2880 33))
                                      (display "\n")
                                      (cons x8552 x8550)))))
                                 (begin
                                   (write '(funapp 2881 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2881 35))
                                      (display "\n")
                                      'snake)
                                    x8549))))
                               (x8542
                                (letrec*
                                 ((x8543
                                   (letrec*
                                    ((x8544
                                      (letrec*
                                       ((x8547 (input))
                                        (x8545
                                         (letrec*
                                          ((x8546 (input)))
                                          (begin
                                            (write '(funapp 2892 39))
                                            (display "\n")
                                            (cons
                                             x8546
                                             (begin
                                               (write '(funapp 2892 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2893 36))
                                         (display "\n")
                                         (cons x8547 x8545)))))
                                    (begin
                                      (write '(funapp 2894 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2894 38))
                                         (display "\n")
                                         'posn)
                                       x8544)))))
                                 (begin
                                   (write '(funapp 2895 30))
                                   (display "\n")
                                   (cons
                                    x8543
                                    (begin
                                      (write '(funapp 2895 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2896 27))
                                (display "\n")
                                (cons x8548 x8542)))))
                           (begin
                             (write '(funapp 2897 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2897 29))
                                (display "\n")
                                'world)
                              x8541)))))
                        (begin
                          (write '(funapp 2898 21))
                          (display "\n")
                          (x8553 x8540)))
                       (letrec*
                        ((x8565
                          (letrec*
                           ((xj7519
                             (begin
                               (write '(funapp 2902 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2902 37))
                                  (display "\n")
                                  'module))))
                            (xk7520
                             (begin
                               (write '(funapp 2902 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2902 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8566
                              (begin
                                (write '(funapp 2905 27))
                                (display "\n")
                                ((lambda (j7523 k7524 f7525)
                                   (letrec*
                                    ((g8567
                                      (lambda (g7521 g7522)
                                        (letrec*
                                         ((g8568
                                           (letrec*
                                            ((x8569
                                              (letrec*
                                               ((x8571
                                                 (begin
                                                   (write '(funapp 2914 50))
                                                   (display "\n")
                                                   (POSN/C j7523 k7524 g7521)))
                                                (x8570
                                                 (begin
                                                   (write '(funapp 2915 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7523
                                                    k7524
                                                    g7522))))
                                               (begin
                                                 (write '(funapp 2916 42))
                                                 (display "\n")
                                                 (f7525 x8571 x8570)))))
                                            (begin
                                              (write '(funapp 2917 39))
                                              (display "\n")
                                              (image/c j7523 k7524 x8569)))))
                                         g8568))))
                                    g8567))
                                 xj7519
                                 xk7520
                                 food+scene))))
                            g8566)))
                         (x8560
                          (letrec*
                           ((x8561
                             (letrec*
                              ((x8564 (input))
                               (x8562
                                (letrec*
                                 ((x8563 (input)))
                                 (begin
                                   (write '(funapp 2930 56))
                                   (display "\n")
                                   (cons
                                    x8563
                                    (begin
                                      (write '(funapp 2930 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2931 27))
                                (display "\n")
                                (cons x8564 x8562)))))
                           (begin
                             (write '(funapp 2932 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2932 29))
                                (display "\n")
                                'posn)
                              x8561))))
                         (x8559
                          (begin
                            (write '(funapp 2933 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2933 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2933 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2934 21))
                          (display "\n")
                          (x8565 x8560 x8559)))
                       (letrec*
                        ((x8576
                          (letrec*
                           ((xj7526
                             (begin
                               (write '(funapp 2938 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2938 37))
                                  (display "\n")
                                  'module))))
                            (xk7527
                             (begin
                               (write '(funapp 2938 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2938 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8577
                              (begin
                                (write '(funapp 2941 27))
                                (display "\n")
                                ((lambda (j7532 k7533 f7534)
                                   (letrec*
                                    ((g8578
                                      (lambda (g7528 g7529 g7530 g7531)
                                        (letrec*
                                         ((g8579
                                           (letrec*
                                            ((x8580
                                              (letrec*
                                               ((x8584
                                                 (begin
                                                   (write '(funapp 2950 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7528)))
                                                (x8583
                                                 (begin
                                                   (write '(funapp 2951 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7529)))
                                                (x8582
                                                 (begin
                                                   (write '(funapp 2952 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7530)))
                                                (x8581
                                                 (begin
                                                   (write '(funapp 2953 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7531))))
                                               (begin
                                                 (write '(funapp 2954 42))
                                                 (display "\n")
                                                 (f7534
                                                  x8584
                                                  x8583
                                                  x8582
                                                  x8581)))))
                                            (begin
                                              (write '(funapp 2955 39))
                                              (display "\n")
                                              (image/c j7532 k7533 x8580)))))
                                         g8579))))
                                    g8578))
                                 xj7526
                                 xk7527
                                 place-image-on-grid))))
                            g8577)))
                         (x8575
                          (begin
                            (write '(funapp 2962 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2962 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2962 41))
                               (display "\n")
                               '()))))
                         (x8574 (input))
                         (x8573 (input))
                         (x8572
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
                          (x8576 x8575 x8574 x8573 x8572)))
                       (letrec*
                        ((x8591
                          (letrec*
                           ((xj7535
                             (begin
                               (write '(funapp 2970 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2970 37))
                                  (display "\n")
                                  'module))))
                            (xk7536
                             (begin
                               (write '(funapp 2970 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2970 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8592
                              (begin
                                (write '(funapp 2973 27))
                                (display "\n")
                                ((lambda (j7539 k7540 f7541)
                                   (letrec*
                                    ((g8593
                                      (lambda (g7537 g7538)
                                        (letrec*
                                         ((g8594
                                           (letrec*
                                            ((x8595
                                              (letrec*
                                               ((x8597
                                                 (begin
                                                   (write '(funapp 2982 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7539
                                                    k7540
                                                    g7537)))
                                                (x8596
                                                 (begin
                                                   (write '(funapp 2983 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7539
                                                    k7540
                                                    g7538))))
                                               (begin
                                                 (write '(funapp 2984 42))
                                                 (display "\n")
                                                 (f7541 x8597 x8596)))))
                                            (begin
                                              (write '(funapp 2985 39))
                                              (display "\n")
                                              (image/c j7539 k7540 x8595)))))
                                         g8594))))
                                    g8593))
                                 xj7535
                                 xk7536
                                 snake+scene))))
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
                                   (write '(funapp 2998 56))
                                   (display "\n")
                                   (cons
                                    x8589
                                    (begin
                                      (write '(funapp 2998 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2999 27))
                                (display "\n")
                                (cons x8590 x8588)))))
                           (begin
                             (write '(funapp 3000 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3000 29))
                                (display "\n")
                                'snake)
                              x8587))))
                         (x8585
                          (begin
                            (write '(funapp 3001 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3001 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3001 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3002 21))
                          (display "\n")
                          (x8591 x8586 x8585)))
                       (letrec*
                        ((x8600
                          (letrec*
                           ((xj7542
                             (begin
                               (write '(funapp 3006 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3006 37))
                                  (display "\n")
                                  'module))))
                            (xk7543
                             (begin
                               (write '(funapp 3006 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3006 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8601
                              (begin
                                (write '(funapp 3009 27))
                                (display "\n")
                                ((lambda (j7546 k7547 f7548)
                                   (letrec*
                                    ((g8602
                                      (lambda (g7544 g7545)
                                        (letrec*
                                         ((g8603
                                           (letrec*
                                            ((x8604
                                              (letrec*
                                               ((x8606
                                                 (letrec*
                                                  ((x8607
                                                    (begin
                                                      (write '(funapp 3020 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 3021 45))
                                                    (display "\n")
                                                    (x8607
                                                     j7546
                                                     k7547
                                                     g7544))))
                                                (x8605
                                                 (begin
                                                   (write '(funapp 3022 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7546
                                                    k7547
                                                    g7545))))
                                               (begin
                                                 (write '(funapp 3023 42))
                                                 (display "\n")
                                                 (f7548 x8606 x8605)))))
                                            (begin
                                              (write '(funapp 3024 39))
                                              (display "\n")
                                              (image/c j7546 k7547 x8604)))))
                                         g8603))))
                                    g8602))
                                 xj7542
                                 xk7543
                                 segments+scene))))
                            g8601)))
                         (x8599 (input))
                         (x8598
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
                          (x8600 x8599 x8598)))
                       (letrec*
                        ((x8614
                          (letrec*
                           ((xj7549
                             (begin
                               (write '(funapp 3037 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3037 37))
                                  (display "\n")
                                  'module))))
                            (xk7550
                             (begin
                               (write '(funapp 3037 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3037 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8615
                              (begin
                                (write '(funapp 3040 27))
                                (display "\n")
                                ((lambda (j7553 k7554 f7555)
                                   (letrec*
                                    ((g8616
                                      (lambda (g7551 g7552)
                                        (letrec*
                                         ((g8617
                                           (letrec*
                                            ((x8618
                                              (letrec*
                                               ((x8620
                                                 (begin
                                                   (write '(funapp 3049 50))
                                                   (display "\n")
                                                   (POSN/C j7553 k7554 g7551)))
                                                (x8619
                                                 (begin
                                                   (write '(funapp 3050 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7553
                                                    k7554
                                                    g7552))))
                                               (begin
                                                 (write '(funapp 3051 42))
                                                 (display "\n")
                                                 (f7555 x8620 x8619)))))
                                            (begin
                                              (write '(funapp 3052 39))
                                              (display "\n")
                                              (image/c j7553 k7554 x8618)))))
                                         g8617))))
                                    g8616))
                                 xj7549
                                 xk7550
                                 segment+scene))))
                            g8615)))
                         (x8609
                          (letrec*
                           ((x8610
                             (letrec*
                              ((x8613 (input))
                               (x8611
                                (letrec*
                                 ((x8612 (input)))
                                 (begin
                                   (write '(funapp 3065 56))
                                   (display "\n")
                                   (cons
                                    x8612
                                    (begin
                                      (write '(funapp 3065 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3066 27))
                                (display "\n")
                                (cons x8613 x8611)))))
                           (begin
                             (write '(funapp 3067 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3067 29))
                                (display "\n")
                                'posn)
                              x8610))))
                         (x8608
                          (begin
                            (write '(funapp 3068 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3068 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3068 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3069 21))
                          (display "\n")
                          (x8614 x8609 x8608)))))))))
               g8380))))
           g7600))))
       g7583)))
    g7582)))
