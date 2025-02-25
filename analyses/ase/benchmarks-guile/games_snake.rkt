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
               (/
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7725
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7727
                            (lambda (g7369 g7370)
                              (letrec*
                               ((g7728
                                 (letrec*
                                  ((x7729
                                    (letrec*
                                     ((x7731
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7369)))
                                      (x7730
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7373 x7731 x7730)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7371 k7372 x7729)))))
                               g7728))))
                          g7727))
                       xj7367
                       xk7368
                       (lambda (a b)
                         (letrec*
                          ((g7726
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7726))))))
                  g7725)))
               (car
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7732
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g7734
                            (lambda (g7376)
                              (letrec*
                               ((g7735
                                 (letrec*
                                  ((x7736
                                    (letrec*
                                     ((x7737
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7377 k7378 g7376))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7379 x7737)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7377 k7378 x7736)))))
                               g7735))))
                          g7734))
                       xj7374
                       xk7375
                       (lambda (p)
                         (letrec*
                          ((g7733
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7733))))))
                  g7732)))
               (cdr
                (letrec*
                 ((xj7380
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7381
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7738
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7740
                            (lambda (g7382)
                              (letrec*
                               ((g7741
                                 (letrec*
                                  ((x7742
                                    (letrec*
                                     ((x7743
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7385 x7743)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7383 k7384 x7742)))))
                               g7741))))
                          g7740))
                       xj7380
                       xk7381
                       (lambda (p)
                         (letrec*
                          ((g7739
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7739))))))
                  g7738)))
               (cons
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7744
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g7746
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g7747
                                 (letrec*
                                  ((x7748
                                    (letrec*
                                     ((x7750
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7388)))
                                      (x7749
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7392 x7750 x7749)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7390 k7391 x7748)))))
                               g7747))))
                          g7746))
                       xj7386
                       xk7387
                       (lambda (a b)
                         (letrec*
                          ((g7745
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7745))))))
                  g7744)))
               (vector-ref
                (letrec*
                 ((xj7393
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7394
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7751
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7753
                            (lambda (g7395)
                              (letrec*
                               ((g7754
                                 (letrec*
                                  ((x7755
                                    (letrec*
                                     ((x7756
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7398 x7756)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7396 k7397 x7755)))))
                               g7754))))
                          g7753))
                       xj7393
                       xk7394
                       (lambda (v i)
                         (letrec*
                          ((g7752
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7752))))))
                  g7751)))
               (vector-set!
                (letrec*
                 ((xj7399
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7400
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7757
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7403 k7404 f7405)
                         (letrec*
                          ((g7759
                            (lambda (g7401 g7402)
                              (letrec*
                               ((g7760
                                 (letrec*
                                  ((x7761
                                    (letrec*
                                     ((x7763
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7403 k7404 g7401)))
                                      (x7762
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7403 k7404 g7402))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7405 x7763 x7762)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7403 k7404 x7761)))))
                               g7760))))
                          g7759))
                       xj7399
                       xk7400
                       (lambda (vec i v)
                         (letrec*
                          ((g7758
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7758))))))
                  g7757)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7766)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7772
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7776))))
                          (x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7774)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7775 x7773)))))))
                   g7769)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7778)))))
                   g7777)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7786)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7784)))))
                   g7783)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7791))))
                    (g7789
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
                       ((g7792
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7793 res))
                       g7793))))
                   g7789)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7796)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7798)))))
                   g7797)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7804
                        #f
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7806 k)))))
                         (if x-cnd7805
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7807)))))))))
                   g7802)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7809)))))
                   g7808)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7813
                        ""
                        (letrec*
                         ((x7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7817))))
                          (x7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7815)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7816 x7814)))))))
                   g7811)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7823
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7823))))
                   g7820)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7825
                        (letrec*
                         ((x7826
                           (letrec*
                            ((x7827
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7827)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7826)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7825)))))
                   g7824)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((x-cnd7833
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7833
                        x
                        (letrec*
                         ((x7835
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7834
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7835 x7834)))))))
                   g7830)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7836
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7836)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x-cnd7838
                        (letrec*
                         ((x7839 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7839)))))
                      (if x-cnd7838
                        (letrec*
                         ((x7840 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7840)))
                        #f))))
                   g7837)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7842
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7842 9)))))
                      (letrec*
                       ((g7843
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7844
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7844 10)))))
                            (letrec*
                             ((g7845
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7846
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7846 32))))))
                             g7845)))))
                       g7843))))
                   g7841)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7849)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7848)))))
                   g7847)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7852))))
                    (g7851
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7851)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7853
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7853)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7854 #f)) g7854)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7856)))))
                   g7855)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7860
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7858)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7862
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7863
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7863
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7864
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7865
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7865
                                       (letrec*
                                        ((x-cnd7866
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7866
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7867
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7868
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7868
                                             (letrec*
                                              ((x-cnd7869
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7869
                                                (letrec*
                                                 ((x-cnd7870
                                                   (letrec*
                                                    ((x7872
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7871
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7872 x7871)))))
                                                 (if x-cnd7870
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7873
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7874 x7873)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7875
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7876
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7876
                                                (letrec*
                                                 ((x-cnd7877
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7877
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7878
                                                       (letrec*
                                                        ((x-cnd7879
                                                          (letrec*
                                                           ((x7880
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
                                                             (= x7880 n)))))
                                                        (if x-cnd7879
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7881
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
                                                                    ((g7882
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7883
                                                                           (letrec*
                                                                            ((x7885
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
                                                                             (x7884
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
                                                                               x7885
                                                                               x7884)))))
                                                                         (if x-cnd7883
                                                                           (letrec*
                                                                            ((x7886
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
                                                                               x7886)))
                                                                           #f)))))
                                                                    g7882))))
                                                                g7881))))
                                                           (letrec*
                                                            ((g7887
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7887))
                                                          #f))))
                                                     g7878))
                                                   #f))
                                                #f)))))
                                         g7875)))))
                                   g7867)))))
                             g7864)))))
                       g7862))))
                   g7861)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7891)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7890)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (caaddr
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
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7895)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7894)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7893)))))
                   g7892)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7896)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7900))))
                    (g7898
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7901))))
                    (g7899
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
                       ((g7902
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7903 res))
                       g7903))))
                   g7899)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7904
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7904)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7910
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7910))))
                   g7907)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7913)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7917)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7916)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7915)))))
                   g7914)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (letrec*
                         ((x7920
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7920)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7919)))))
                   g7918)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7923)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7929)))))
                   g7926)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7933)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7932)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7935)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7937
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7937)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (letrec*
                         ((x7940
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7940)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7939)))))
                   g7938)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7941
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7941)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7949))))
                          (x7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7947)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7948 x7946)))))))
                   g7943)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7953)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7952)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7957)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7956)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7955)))))
                   g7954)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7960))))
                    (g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7961)))))
                   g7959)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7963
                        (letrec*
                         ((x7964
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7965)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7964)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7963)))))
                   g7962)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7971
                        (letrec*
                         ((g7972
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7972)
                        (letrec*
                         ((x-cnd7973
                           (letrec*
                            ((x7974
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7974)))))
                         (if x-cnd7973
                           (letrec*
                            ((g7975
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7976)))))
                            g7975)
                           (letrec*
                            ((x-cnd7977
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7978)))))
                            (if x-cnd7977
                              (letrec*
                               ((g7979
                                 (letrec*
                                  ((x7981
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7980
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7981 x7980)))))
                               g7979)
                              (letrec*
                               ((x-cnd7982
                                 (letrec*
                                  ((x7983
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7983)))))
                               (if x-cnd7982
                                 (letrec*
                                  ((g7984
                                    (letrec*
                                     ((x7987
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7986
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7985
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7987 x7986 x7985)))))
                                  g7984)
                                 (letrec*
                                  ((x-cnd7988
                                    (letrec*
                                     ((x7989
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7989)))))
                                  (if x-cnd7988
                                    (letrec*
                                     ((g7990
                                       (letrec*
                                        ((x7994
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7993
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7992
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7991
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7994 x7993 x7992 x7991)))))
                                     g7990)
                                    (letrec*
                                     ((x-cnd7995
                                       (letrec*
                                        ((x7996
                                          (letrec*
                                           ((x7997
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7997)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7996)))))
                                     (if x-cnd7995
                                       (letrec*
                                        ((g7998
                                          (letrec*
                                           ((x8004
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x8003
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8002
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8001
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7999
                                             (letrec*
                                              ((x8000
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x8000)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x8004
                                              x8003
                                              x8002
                                              x8001
                                              x7999)))))
                                        g7998)
                                       (letrec*
                                        ((x-cnd8005
                                          (letrec*
                                           ((x8006
                                             (letrec*
                                              ((x8007
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x8007)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x8006)))))
                                        (if x-cnd8005
                                          (letrec*
                                           ((g8008
                                             (letrec*
                                              ((x8016
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8015
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8014
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8013
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8011
                                                (letrec*
                                                 ((x8012
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x8012))))
                                               (x8009
                                                (letrec*
                                                 ((x8010
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x8010)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x8016
                                                 x8015
                                                 x8014
                                                 x8013
                                                 x8011
                                                 x8009)))))
                                           g8008)
                                          (letrec*
                                           ((x-cnd8017
                                             (letrec*
                                              ((x8018
                                                (letrec*
                                                 ((x8019
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x8019)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x8018)))))
                                           (if x-cnd8017
                                             (letrec*
                                              ((g8020
                                                (letrec*
                                                 ((x8030
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8029
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8028
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8027
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8025
                                                   (letrec*
                                                    ((x8026
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x8026))))
                                                  (x8023
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x8024))))
                                                  (x8021
                                                   (letrec*
                                                    ((x8022
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x8022)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x8030
                                                    x8029
                                                    x8028
                                                    x8027
                                                    x8025
                                                    x8023
                                                    x8021)))))
                                              g8020)
                                             (letrec*
                                              ((g8031
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8031)))))))))))))))))))
                   g7968)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8034
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x8034))))
                    (g8033
                     (letrec*
                      ((x-cnd8035
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8035
                        #f
                        (letrec*
                         ((x-cnd8036
                           (letrec*
                            ((x8037
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x8037 e)))))
                         (if x-cnd8036
                           l
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x8038)))))))))
                   g8033)))
               (cddddr
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x8042)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x8041)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x8040)))))
                   g8039)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((x8044
                        (letrec*
                         ((x8045
                           (letrec*
                            ((x8046
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x8046)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x8045)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x8044)))))
                   g8043)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8047
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g8047)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((x8050
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x8050))))
                    (g8049
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g8049)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8052
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8052))))
                   g8051)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x8054)))))
                   g8053)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8056
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8056
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x8057)))
                           #f))))
                      (letrec*
                       ((g8058
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g8058))))
                   g8055)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8060
                        (letrec*
                         ((x8061
                           (letrec*
                            ((x8062
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x8062)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x8061)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x8060)))))
                   g8059)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x-cnd8064
                        (letrec*
                         ((x8065 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x8065 c)))))
                      (if x-cnd8064
                        (letrec*
                         ((x8066 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x8066)))
                        #f))))
                   g8063)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8069
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x8069))))
                    (g8068
                     (letrec*
                      ((x-cnd8070
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8070
                        #f
                        (letrec*
                         ((x-cnd8071
                           (letrec*
                            ((x8072
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x8072 k)))))
                         (if x-cnd8071
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8073
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x8073)))))))))
                   g8068)))
               (not (lambda (x) (letrec* ((g8074 (if x #f #t))) g8074)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8075
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g8075)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8076
                     (letrec*
                      ((x8078
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x8078))))
                    (g8077
                     (letrec*
                      ((x-cnd8079
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8079
                        #f
                        (letrec*
                         ((x-cnd8080
                           (letrec*
                            ((x8081
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x8081 e)))))
                         (if x-cnd8080
                           l
                           (letrec*
                            ((x8082
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x8082)))))))))
                   g8077)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8083
                     (letrec*
                      ((x8084
                        (letrec*
                         ((x8085
                           (letrec*
                            ((x8086
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x8086)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x8085)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x8084)))))
                   g8083)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8087
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x8089))))
                    (g8088
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8090
                             (letrec*
                              ((x-cnd8091
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8091
                                0
                                (letrec*
                                 ((x8092
                                   (letrec*
                                    ((x8093
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x8093)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x8092)))))))
                           g8090))))
                      (letrec*
                       ((g8094
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g8094))))
                   g8088)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x8098))))
                    (g8096
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8099))))
                    (g8097
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8100
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8100))))
                   g8097)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8102
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x8102)))))
                   g8101)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (letrec*
                         ((x8105
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x8105)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x8104)))))
                   g8103)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x8108))))
                    (g8107
                     (letrec*
                      ((x-cnd8109
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8109
                        #f
                        (letrec*
                         ((x-cnd8110
                           (letrec*
                            ((x8111
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x8111 k)))))
                         (if x-cnd8110
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8112
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x8112)))))))))
                   g8107)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x8114)))))
                   g8113)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x8120)))))
                   g8117)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8122
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8122))))
                   g8121)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x8126))))
                    (g8124
                     (letrec*
                      ((x8127
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x8127))))
                    (g8125
                     (letrec*
                      ((x-cnd8128
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8128
                        #t
                        (letrec*
                         ((x-cnd8129
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8129
                           (letrec*
                            ((g8130
                              (letrec*
                               ((x8132
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x8132))))
                             (g8131
                              (letrec*
                               ((x8133
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x8133)))))
                            g8131)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g8125)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x8136))))
                    (g8135
                     (letrec*
                      ((x-cnd8137
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8137
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8135)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x8141))))
                    (g8139
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8142))))
                    (g8140
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8143
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8143))))
                   g8140)))
               (caddar
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
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x8147)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x8146)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x8145)))))
                   g8144)))
               (newline (lambda () (letrec* ((g8148 #f)) g8148)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8151
                        (letrec*
                         ((x8152
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8152))))
                       (x8150
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8151 x8150)))))
                   g8149)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8157
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8157))))
                    (g8154
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8158))))
                    (g8155
                     (letrec*
                      ((x8159
                        (letrec*
                         ((x8160
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8160)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x-cnd8161
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8161
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8163
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8162
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8163 x8162)))))))
                   g8156)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x-cnd8165
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8165
                        a
                        (letrec*
                         ((x8166
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8166)))))))
                   g8164)))
               (image
                (lambda ()
                  (letrec*
                   ((g8167
                     (begin
                       (write '(funapp 1696 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1696 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1696 62))
                          (display "\n")
                          '())))))
                   g8167)))
               (image?
                (lambda (image7556)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x8169
                        (begin
                          (write '(funapp 1701 39))
                          (display "\n")
                          (car image7556))))
                      (begin
                        (write '(funapp 1701 57))
                        (display "\n")
                        (eq?
                         x8169
                         (begin
                           (write '(funapp 1701 67))
                           (display "\n")
                           'image))))))
                   g8168)))
               (image/c
                (lambda (j7407 k7408 v7406)
                  (letrec*
                   ((g8170
                     (begin
                       (write '(funapp 1705 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1705 47))
                          (display "\n")
                          '())))))
                   g8170)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8171
                     (begin (write '(funapp 1706 57)) (display "\n") (image))))
                   g8171)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8172
                     (begin (write '(funapp 1707 60)) (display "\n") (image))))
                   g8172)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8173
                     (begin (write '(funapp 1709 54)) (display "\n") (image))))
                   g8173)))
               (posn
                (lambda (x7558 y7559)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x8175
                        (letrec*
                         ((x8176
                           (begin
                             (write '(funapp 1717 34))
                             (display "\n")
                             (orig-cons
                              y7559
                              (begin
                                (write '(funapp 1717 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1718 26))
                           (display "\n")
                           (orig-cons x7558 x8176)))))
                      (begin
                        (write '(funapp 1719 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1719 33)) (display "\n") 'posn)
                         x8175)))))
                   g8174)))
               (posn?
                (lambda (posn7557)
                  (letrec*
                   ((g8177
                     (letrec*
                      ((x8178
                        (begin
                          (write '(funapp 1725 39))
                          (display "\n")
                          (car posn7557))))
                      (begin
                        (write '(funapp 1725 56))
                        (display "\n")
                        (eq?
                         x8178
                         (begin
                           (write '(funapp 1725 66))
                           (display "\n")
                           'posn))))))
                   g8177)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8179
                     (letrec*
                      ((x8180
                        (begin
                          (write '(funapp 1731 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1731 57))
                        (display "\n")
                        (orig-car x8180)))))
                   g8179)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8181
                     (letrec*
                      ((x8182
                        (letrec*
                         ((x8183
                           (begin
                             (write '(funapp 1739 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1739 60))
                           (display "\n")
                           (orig-cdr x8183)))))
                      (begin
                        (write '(funapp 1740 23))
                        (display "\n")
                        (orig-car x8182)))))
                   g8181)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8184
                     (letrec*
                      ((x-cnd8185
                        (letrec*
                         ((x8187
                           (begin
                             (write '(funapp 1749 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8186
                           (begin
                             (write '(funapp 1749 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1750 26))
                           (display "\n")
                           (= x8187 x8186)))))
                      (if x-cnd8185
                        (letrec*
                         ((x8189
                           (begin
                             (write '(funapp 1753 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8188
                           (begin
                             (write '(funapp 1753 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1754 26))
                           (display "\n")
                           (= x8189 x8188)))
                        #f))))
                   g8184)))
               (snake
                (lambda (dir7563 segs7564)
                  (letrec*
                   ((g8190
                     (letrec*
                      ((x8191
                        (letrec*
                         ((x8192
                           (begin
                             (write '(funapp 1764 34))
                             (display "\n")
                             (orig-cons
                              segs7564
                              (begin
                                (write '(funapp 1764 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1765 26))
                           (display "\n")
                           (orig-cons dir7563 x8192)))))
                      (begin
                        (write '(funapp 1766 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1766 33))
                           (display "\n")
                           'snake)
                         x8191)))))
                   g8190)))
               (snake?
                (lambda (snake7562)
                  (letrec*
                   ((g8193
                     (letrec*
                      ((x8194
                        (begin
                          (write '(funapp 1772 39))
                          (display "\n")
                          (car snake7562))))
                      (begin
                        (write '(funapp 1772 57))
                        (display "\n")
                        (eq?
                         x8194
                         (begin
                           (write '(funapp 1772 67))
                           (display "\n")
                           'snake))))))
                   g8193)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8195
                     (letrec*
                      ((x8196
                        (begin
                          (write '(funapp 1778 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1778 58))
                        (display "\n")
                        (orig-car x8196)))))
                   g8195)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8197
                     (letrec*
                      ((x8198
                        (letrec*
                         ((x8199
                           (begin
                             (write '(funapp 1786 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1786 61))
                           (display "\n")
                           (orig-cdr x8199)))))
                      (begin
                        (write '(funapp 1787 23))
                        (display "\n")
                        (orig-car x8198)))))
                   g8197)))
               (world
                (lambda (snake7568 food7569)
                  (letrec*
                   ((g8200
                     (letrec*
                      ((x8201
                        (letrec*
                         ((x8202
                           (begin
                             (write '(funapp 1796 34))
                             (display "\n")
                             (orig-cons
                              food7569
                              (begin
                                (write '(funapp 1796 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1797 26))
                           (display "\n")
                           (orig-cons snake7568 x8202)))))
                      (begin
                        (write '(funapp 1798 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1798 33))
                           (display "\n")
                           'world)
                         x8201)))))
                   g8200)))
               (world?
                (lambda (world7567)
                  (letrec*
                   ((g8203
                     (letrec*
                      ((x8204
                        (begin
                          (write '(funapp 1804 39))
                          (display "\n")
                          (car world7567))))
                      (begin
                        (write '(funapp 1804 57))
                        (display "\n")
                        (eq?
                         x8204
                         (begin
                           (write '(funapp 1804 67))
                           (display "\n")
                           'world))))))
                   g8203)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8205
                     (letrec*
                      ((x8206
                        (begin
                          (write '(funapp 1810 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1810 58))
                        (display "\n")
                        (orig-car x8206)))))
                   g8205)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8207
                     (letrec*
                      ((x8208
                        (letrec*
                         ((x8209
                           (begin
                             (write '(funapp 1818 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1818 61))
                           (display "\n")
                           (orig-cdr x8209)))))
                      (begin
                        (write '(funapp 1819 23))
                        (display "\n")
                        (orig-car x8208)))))
                   g8207)))
               (DIR/C
                (lambda (g7413 g7414 g7415)
                  (letrec*
                   ((g8210
                     (letrec*
                      ((x-cnd8211
                        (begin
                          (write '(funapp 1827 25))
                          (display "\n")
                          ((lambda (v7412)
                             (letrec*
                              ((g8212
                                (letrec*
                                 ((x-cnd8213
                                   (begin
                                     (write '(funapp 1831 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1831 48))
                                        (display "\n")
                                        'up)
                                      v7412))))
                                 (if x-cnd8213
                                   #t
                                   (letrec*
                                    ((x-cnd8214
                                      (begin
                                        (write '(funapp 1835 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1835 51))
                                           (display "\n")
                                           'down)
                                         v7412))))
                                    (if x-cnd8214
                                      #t
                                      (letrec*
                                       ((x-cnd8215
                                         (begin
                                           (write '(funapp 1839 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1839 54))
                                              (display "\n")
                                              'left)
                                            v7412))))
                                       (if x-cnd8215
                                         #t
                                         (begin
                                           (write '(funapp 1842 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1842 44))
                                              (display "\n")
                                              'right)
                                            v7412))))))))))
                              g8212))
                           g7415))))
                      (if x-cnd8211
                        g7415
                        (begin
                          (write '(blame g7413 1847 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7413)))))))
                   g8210)))
               (POSN/C
                (lambda (j7417 k7418 v7416)
                  (letrec*
                   ((g8216
                     (letrec*
                      ((checked7419
                        (letrec*
                         ((x8217
                           (letrec*
                            ((x8218
                              (begin
                                (write '(funapp 1867 37))
                                (display "\n")
                                (orig-cdr v7416))))
                            (begin
                              (write '(funapp 1868 29))
                              (display "\n")
                              (orig-car x8218)))))
                         (begin
                           (write '(funapp 1869 26))
                           (display "\n")
                           (real?/c j7417 k7418 x8217)))))
                      (letrec*
                       ((g8219
                         (letrec*
                          ((checked7420
                            (letrec*
                             ((x8220
                               (letrec*
                                ((x8221
                                  (letrec*
                                   ((x8222
                                     (begin
                                       (write '(funapp 1879 44))
                                       (display "\n")
                                       (orig-cdr v7416))))
                                   (begin
                                     (write '(funapp 1880 36))
                                     (display "\n")
                                     (orig-cdr x8222)))))
                                (begin
                                  (write '(funapp 1881 33))
                                  (display "\n")
                                  (orig-car x8221)))))
                             (begin
                               (write '(funapp 1882 30))
                               (display "\n")
                               (real?/c j7417 k7418 x8220)))))
                          (letrec*
                           ((g8223
                             (letrec*
                              ((x8224
                                (letrec*
                                 ((x8225
                                   (begin
                                     (write '(funapp 1888 42))
                                     (display "\n")
                                     (cons
                                      checked7420
                                      (begin
                                        (write '(funapp 1888 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1889 34))
                                   (display "\n")
                                   (cons checked7419 x8225)))))
                              (begin
                                (write '(funapp 1890 31))
                                (display "\n")
                                (cons posn x8224)))))
                           g8223))))
                       g8219))))
                   g8216)))
               (SNAKE/C
                (lambda (j7423 k7424 v7422)
                  (letrec*
                   ((g8226
                     (letrec*
                      ((checked7425
                        (letrec*
                         ((x8227
                           (letrec*
                            ((x8228
                              (begin
                                (write '(funapp 1903 37))
                                (display "\n")
                                (orig-cdr v7422))))
                            (begin
                              (write '(funapp 1904 29))
                              (display "\n")
                              (orig-car x8228)))))
                         (begin
                           (write '(funapp 1905 26))
                           (display "\n")
                           (DIR/C j7423 k7424 x8227)))))
                      (letrec*
                       ((g8229
                         (letrec*
                          ((checked7426
                            (letrec*
                             ((x8233
                               (letrec*
                                ((x8234
                                  (begin
                                    (write '(funapp 1913 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1914 33))
                                  (display "\n")
                                  (and/c cons?/c x8234))))
                              (x8230
                               (letrec*
                                ((x8231
                                  (letrec*
                                   ((x8232
                                     (begin
                                       (write '(funapp 1919 44))
                                       (display "\n")
                                       (orig-cdr v7422))))
                                   (begin
                                     (write '(funapp 1920 36))
                                     (display "\n")
                                     (orig-cdr x8232)))))
                                (begin
                                  (write '(funapp 1921 33))
                                  (display "\n")
                                  (orig-car x8231)))))
                             (begin
                               (write '(funapp 1922 30))
                               (display "\n")
                               (x8233 j7423 k7424 x8230)))))
                          (letrec*
                           ((g8235
                             (letrec*
                              ((x8236
                                (letrec*
                                 ((x8237
                                   (begin
                                     (write '(funapp 1928 42))
                                     (display "\n")
                                     (cons
                                      checked7426
                                      (begin
                                        (write '(funapp 1928 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1929 34))
                                   (display "\n")
                                   (cons checked7425 x8237)))))
                              (begin
                                (write '(funapp 1930 31))
                                (display "\n")
                                (cons snake x8236)))))
                           g8235))))
                       g8229))))
                   g8226)))
               (WORLD/C
                (lambda (j7429 k7430 v7428)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((checked7431
                        (letrec*
                         ((x8239
                           (letrec*
                            ((x8240
                              (begin
                                (write '(funapp 1943 37))
                                (display "\n")
                                (orig-cdr v7428))))
                            (begin
                              (write '(funapp 1944 29))
                              (display "\n")
                              (orig-car x8240)))))
                         (begin
                           (write '(funapp 1945 26))
                           (display "\n")
                           (SNAKE/C j7429 k7430 x8239)))))
                      (letrec*
                       ((g8241
                         (letrec*
                          ((checked7432
                            (letrec*
                             ((x8242
                               (letrec*
                                ((x8243
                                  (letrec*
                                   ((x8244
                                     (begin
                                       (write '(funapp 1955 44))
                                       (display "\n")
                                       (orig-cdr v7428))))
                                   (begin
                                     (write '(funapp 1956 36))
                                     (display "\n")
                                     (orig-cdr x8244)))))
                                (begin
                                  (write '(funapp 1957 33))
                                  (display "\n")
                                  (orig-car x8243)))))
                             (begin
                               (write '(funapp 1958 30))
                               (display "\n")
                               (POSN/C j7429 k7430 x8242)))))
                          (letrec*
                           ((g8245
                             (letrec*
                              ((x8246
                                (letrec*
                                 ((x8247
                                   (begin
                                     (write '(funapp 1964 42))
                                     (display "\n")
                                     (cons
                                      checked7432
                                      (begin
                                        (write '(funapp 1964 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1965 34))
                                   (display "\n")
                                   (cons checked7431 x8247)))))
                              (begin
                                (write '(funapp 1966 31))
                                (display "\n")
                                (cons world x8246)))))
                           g8245))))
                       g8241))))
                   g8238)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1973 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1974 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1976 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1977 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1978 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1980 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8249
                   (letrec*
                    ((x8250
                      (letrec*
                       ((x8251
                         (begin
                           (write '(funapp 1985 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1985 59))
                         (display "\n")
                         (cons x8251 empty)))))
                    (begin
                      (write '(funapp 1986 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1986 27)) (display "\n") 'right)
                       x8250))))
                  (x8248
                   (begin
                     (write '(funapp 1987 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1988 18))
                   (display "\n")
                   (world x8249 x8248))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8252
                     (letrec*
                      ((x8253
                        (letrec*
                         ((x8254
                           (begin
                             (write '(funapp 1995 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1995 61))
                           (display "\n")
                           (car x8254)))))
                      (begin
                        (write '(funapp 1996 23))
                        (display "\n")
                        (head-collide? x8253)))))
                   g8252)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8255
                     (letrec*
                      ((val7263
                        (letrec*
                         ((x8256
                           (begin
                             (write '(funapp 2003 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 2003 63))
                           (display "\n")
                           (<= x8256 0)))))
                      (letrec*
                       ((g8257
                         (if val7263
                           val7263
                           (letrec*
                            ((val7264
                              (letrec*
                               ((x8258
                                 (begin
                                   (write '(funapp 2011 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 2012 32))
                                 (display "\n")
                                 (>= x8258 BOARD-WIDTH)))))
                            (letrec*
                             ((g8259
                               (if val7264
                                 val7264
                                 (letrec*
                                  ((val7265
                                    (letrec*
                                     ((x8260
                                       (begin
                                         (write '(funapp 2020 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 2021 38))
                                       (display "\n")
                                       (<= x8260 0)))))
                                  (letrec*
                                   ((g8261
                                     (if val7265
                                       val7265
                                       (letrec*
                                        ((x8262
                                          (begin
                                            (write '(funapp 2027 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 2028 41))
                                          (display "\n")
                                          (>= x8262 BOARD-HEIGHT))))))
                                   g8261)))))
                             g8259)))))
                       g8257))))
                   g8255)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8263
                     (letrec*
                      ((x8266
                        (letrec*
                         ((x8267
                           (begin
                             (write '(funapp 2038 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2038 67))
                           (display "\n")
                           (car x8267))))
                       (x8264
                        (letrec*
                         ((x8265
                           (begin
                             (write '(funapp 2040 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2040 61))
                           (display "\n")
                           (cdr x8265)))))
                      (begin
                        (write '(funapp 2041 23))
                        (display "\n")
                        (segs-self-collide? x8266 x8264)))))
                   g8263)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8268
                     (letrec*
                      ((x-cnd8269
                        (begin
                          (write '(funapp 2048 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8269
                        (letrec* ((g8270 #f)) g8270)
                        (letrec*
                         ((g8271
                           (letrec*
                            ((x8274
                              (letrec*
                               ((x8275
                                 (begin
                                   (write '(funapp 2055 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2055 61))
                                 (display "\n")
                                 (posn=? x8275 h))))
                             (x8272
                              (letrec*
                               ((x8273
                                 (begin
                                   (write '(funapp 2058 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2059 32))
                                 (display "\n")
                                 (segs-self-collide? h x8273)))))
                            (begin
                              (write '(funapp 2060 29))
                              (display "\n")
                              (or x8274 x8272)))))
                         g8271)))))
                   g8268)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2068 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8277
                         (letrec*
                          ((x-cnd8278
                            (begin
                              (write '(funapp 2072 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8278
                            (letrec* ((g8279 empty)) g8279)
                            (letrec*
                             ((g8280
                               (letrec*
                                ((x8282
                                  (begin
                                    (write '(funapp 2078 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8281
                                  (begin
                                    (write '(funapp 2078 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2079 33))
                                  (display "\n")
                                  (cons x8282 x8281)))))
                             g8280)))))
                       g8277))))
                   g8276)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8283
                     (letrec*
                      ((x-cnd8284
                        (begin
                          (write '(funapp 2088 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2088 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8284
                        (letrec*
                         ((g8285
                           (letrec*
                            ((x8287
                              (letrec*
                               ((x8288
                                 (begin
                                   (write '(funapp 2094 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2094 63))
                                 (display "\n")
                                 (add1 x8288))))
                             (x8286
                              (begin
                                (write '(funapp 2095 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2096 29))
                              (display "\n")
                              (posn x8287 x8286)))))
                         g8285)
                        (letrec*
                         ((x-cnd8289
                           (begin
                             (write '(funapp 2099 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2099 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8289
                           (letrec*
                            ((g8290
                              (letrec*
                               ((x8292
                                 (letrec*
                                  ((x8293
                                    (begin
                                      (write '(funapp 2105 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2105 66))
                                    (display "\n")
                                    (sub1 x8293))))
                                (x8291
                                 (begin
                                   (write '(funapp 2106 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2107 32))
                                 (display "\n")
                                 (posn x8292 x8291)))))
                            g8290)
                           (letrec*
                            ((x-cnd8294
                              (begin
                                (write '(funapp 2110 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2110 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8294
                              (letrec*
                               ((g8295
                                 (letrec*
                                  ((x8298
                                    (begin
                                      (write '(funapp 2115 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8296
                                    (letrec*
                                     ((x8297
                                       (begin
                                         (write '(funapp 2118 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2119 38))
                                       (display "\n")
                                       (sub1 x8297)))))
                                  (begin
                                    (write '(funapp 2120 35))
                                    (display "\n")
                                    (posn x8298 x8296)))))
                               g8295)
                              (letrec*
                               ((g8299
                                 (letrec*
                                  ((x8302
                                    (begin
                                      (write '(funapp 2125 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8300
                                    (letrec*
                                     ((x8301
                                       (begin
                                         (write '(funapp 2128 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2129 38))
                                       (display "\n")
                                       (add1 x8301)))))
                                  (begin
                                    (write '(funapp 2130 35))
                                    (display "\n")
                                    (posn x8302 x8300)))))
                               g8299)))))))))
                   g8283)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8303
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2138 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8304
                         (letrec*
                          ((x8305
                            (letrec*
                             ((x8308
                               (letrec*
                                ((x8309
                                  (letrec*
                                   ((x8310
                                     (begin
                                       (write '(funapp 2148 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2149 36))
                                     (display "\n")
                                     (car x8310)))))
                                (begin
                                  (write '(funapp 2150 33))
                                  (display "\n")
                                  (next-head x8309 d))))
                              (x8306
                               (letrec*
                                ((x8307
                                  (begin
                                    (write '(funapp 2153 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2154 33))
                                  (display "\n")
                                  (cut-tail x8307)))))
                             (begin
                               (write '(funapp 2155 30))
                               (display "\n")
                               (cons x8308 x8306)))))
                          (begin
                            (write '(funapp 2156 27))
                            (display "\n")
                            (snake d x8305)))))
                       g8304))))
                   g8303)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8311
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2164 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8312
                         (letrec*
                          ((x8313
                            (letrec*
                             ((x8315
                               (letrec*
                                ((x8316
                                  (letrec*
                                   ((x8317
                                     (begin
                                       (write '(funapp 2174 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2175 36))
                                     (display "\n")
                                     (car x8317)))))
                                (begin
                                  (write '(funapp 2176 33))
                                  (display "\n")
                                  (next-head x8316 d))))
                              (x8314
                               (begin
                                 (write '(funapp 2177 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2178 30))
                               (display "\n")
                               (cons x8315 x8314)))))
                          (begin
                            (write '(funapp 2179 27))
                            (display "\n")
                            (snake d x8313)))))
                       g8312))))
                   g8311)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8318
                     (letrec*
                      ((x-cnd8319
                        (begin
                          (write '(funapp 2187 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8319
                        (letrec*
                         ((g8320
                           (begin
                             (write '(funapp 2189 42))
                             (display "\n")
                             (snake-eat w))))
                         g8320)
                        (letrec*
                         ((g8321
                           (letrec*
                            ((x8323
                              (letrec*
                               ((x8324
                                 (begin
                                   (write '(funapp 2195 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2196 32))
                                 (display "\n")
                                 (snake-slither x8324))))
                             (x8322
                              (begin
                                (write '(funapp 2197 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2198 29))
                              (display "\n")
                              (world x8323 x8322)))))
                         g8321)))))
                   g8318)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((x8329
                        (begin
                          (write '(funapp 2206 31))
                          (display "\n")
                          (world-food w)))
                       (x8326
                        (letrec*
                         ((x8327
                           (letrec*
                            ((x8328
                              (begin
                                (write '(funapp 2211 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2212 29))
                              (display "\n")
                              (snake-segs x8328)))))
                         (begin
                           (write '(funapp 2213 26))
                           (display "\n")
                           (car x8327)))))
                      (begin
                        (write '(funapp 2214 23))
                        (display "\n")
                        (posn=? x8329 x8326)))))
                   g8325)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8330
                     (letrec*
                      ((x8331
                        (begin
                          (write '(funapp 2220 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2220 58))
                        (display "\n")
                        (snake dir x8331)))))
                   g8330)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8332
                     (letrec*
                      ((x8334
                        (letrec*
                         ((x8335
                           (begin
                             (write '(funapp 2229 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2230 26))
                           (display "\n")
                           (snake-change-direction x8335 dir))))
                       (x8333
                        (begin
                          (write '(funapp 2231 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2232 23))
                        (display "\n")
                        (world x8334 x8333)))))
                   g8332)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8336
                     (letrec*
                      ((x8340
                        (letrec*
                         ((x8341
                           (begin
                             (write '(funapp 2240 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2240 60))
                           (display "\n")
                           (snake-grow x8341))))
                       (x8337
                        (letrec*
                         ((x8339
                           (begin
                             (write '(funapp 2243 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8338
                           (begin
                             (write '(funapp 2243 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2244 26))
                           (display "\n")
                           (posn x8339 x8338)))))
                      (begin
                        (write '(funapp 2245 23))
                        (display "\n")
                        (world x8340 x8337)))))
                   g8336)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8342
                     (letrec*
                      ((x-cnd8343
                        (begin
                          (write '(funapp 2252 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8343
                        (letrec*
                         ((g8344
                           (begin
                             (write '(funapp 2254 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2254 61))
                                (display "\n")
                                'up)))))
                         g8344)
                        (letrec*
                         ((x-cnd8345
                           (begin
                             (write '(funapp 2256 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8345
                           (letrec*
                            ((g8346
                              (begin
                                (write '(funapp 2258 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2258 64))
                                   (display "\n")
                                   'down)))))
                            g8346)
                           (letrec*
                            ((x-cnd8347
                              (begin
                                (write '(funapp 2260 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8347
                              (letrec*
                               ((g8348
                                 (begin
                                   (write '(funapp 2263 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2263 59))
                                      (display "\n")
                                      'left)))))
                               g8348)
                              (letrec*
                               ((x-cnd8349
                                 (begin
                                   (write '(funapp 2266 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8349
                                 (letrec*
                                  ((g8350
                                    (begin
                                      (write '(funapp 2269 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2269 62))
                                         (display "\n")
                                         'right)))))
                                  g8350)
                                 (letrec* ((g8351 w)) g8351)))))))))))
                   g8342)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8352
                     (letrec*
                      ((val7266
                        (letrec*
                         ((x8353
                           (begin
                             (write '(funapp 2280 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2281 26))
                           (display "\n")
                           (snake-wall-collide? x8353)))))
                      (letrec*
                       ((g8354
                         (if val7266
                           val7266
                           (letrec*
                            ((x8355
                              (begin
                                (write '(funapp 2287 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2288 29))
                              (display "\n")
                              (snake-self-collide? x8355))))))
                       g8354))))
                   g8352)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8356
                     (letrec*
                      ((x8359
                        (begin
                          (write '(funapp 2296 31))
                          (display "\n")
                          (world-snake w)))
                       (x8357
                        (letrec*
                         ((x8358
                           (begin
                             (write '(funapp 2299 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2300 26))
                           (display "\n")
                           (food+scene x8358 BACKGROUND)))))
                      (begin
                        (write '(funapp 2301 23))
                        (display "\n")
                        (snake+scene x8359 x8357)))))
                   g8356)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8360
                     (letrec*
                      ((x8362
                        (begin
                          (write '(funapp 2308 31))
                          (display "\n")
                          (posn-x f)))
                       (x8361
                        (begin
                          (write '(funapp 2308 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2309 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8362 x8361 scn)))))
                   g8360)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8363
                     (letrec*
                      ((x8366
                        (begin
                          (write '(funapp 2316 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8364
                        (letrec*
                         ((x8365
                           (begin
                             (write '(funapp 2319 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2320 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8365)))))
                      (begin
                        (write '(funapp 2321 23))
                        (display "\n")
                        (place-image img x8366 x8364 scn)))))
                   g8363)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8367
                     (letrec*
                      ((x8368
                        (begin
                          (write '(funapp 2328 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2329 23))
                        (display "\n")
                        (segments+scene x8368 scn)))))
                   g8367)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8369
                     (letrec*
                      ((x-cnd8370
                        (begin
                          (write '(funapp 2336 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8370
                        (letrec* ((g8371 scn)) g8371)
                        (letrec*
                         ((g8372
                           (letrec*
                            ((x8375
                              (begin
                                (write '(funapp 2342 37))
                                (display "\n")
                                (cdr segs)))
                             (x8373
                              (letrec*
                               ((x8374
                                 (begin
                                   (write '(funapp 2345 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2346 32))
                                 (display "\n")
                                 (segment+scene x8374 scn)))))
                            (begin
                              (write '(funapp 2347 29))
                              (display "\n")
                              (segments+scene x8375 x8373)))))
                         g8372)))))
                   g8369)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8376
                     (letrec*
                      ((x8378
                        (begin
                          (write '(funapp 2355 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8377
                        (begin
                          (write '(funapp 2355 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2356 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8378 x8377 scn)))))
                   g8376))))
              (letrec*
               ((g8379
                 (begin
                   (write '(funapp 2360 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2361 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8390
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2365 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2365 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2365 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2365 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8391
                              (begin
                                (write '(funapp 2368 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8392
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8393
                                           (letrec*
                                            ((x8394
                                              (letrec*
                                               ((x8396
                                                 (begin
                                                   (write '(funapp 2377 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8395
                                                 (begin
                                                   (write '(funapp 2378 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2379 42))
                                                 (display "\n")
                                                 (f7440 x8396 x8395)))))
                                            (begin
                                              (write '(funapp 2380 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8394)))))
                                         g8393))))
                                    g8392))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8391)))
                         (x8385
                          (letrec*
                           ((x8386
                             (letrec*
                              ((x8389 (input))
                               (x8387
                                (letrec*
                                 ((x8388 (input)))
                                 (begin
                                   (write '(funapp 2393 56))
                                   (display "\n")
                                   (cons
                                    x8388
                                    (begin
                                      (write '(funapp 2393 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2394 27))
                                (display "\n")
                                (cons x8389 x8387)))))
                           (begin
                             (write '(funapp 2395 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2395 29))
                                (display "\n")
                                'posn)
                              x8386))))
                         (x8380
                          (letrec*
                           ((x8381
                             (letrec*
                              ((x8384 (input))
                               (x8382
                                (letrec*
                                 ((x8383 (input)))
                                 (begin
                                   (write '(funapp 2402 56))
                                   (display "\n")
                                   (cons
                                    x8383
                                    (begin
                                      (write '(funapp 2402 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2403 27))
                                (display "\n")
                                (cons x8384 x8382)))))
                           (begin
                             (write '(funapp 2404 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2404 29))
                                (display "\n")
                                'posn)
                              x8381)))))
                        (begin
                          (write '(funapp 2405 21))
                          (display "\n")
                          (x8390 x8385 x8380)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2407 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2407 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2407 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2407 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8397
                           (begin
                             (write '(funapp 2408 38))
                             (display "\n")
                             (WORLD/C xj7441 xk7442 WORLD))))
                         g8397))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2410 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2410 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2410 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2410 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8398
                           (begin
                             (write '(funapp 2412 30))
                             (display "\n")
                             (image/c xj7443 xk7444 BACKGROUND))))
                         g8398))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2415 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2415 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2415 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2415 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8399
                           (begin
                             (write '(funapp 2417 30))
                             (display "\n")
                             (image/c xj7445 xk7446 FOOD-IMAGE))))
                         g8399))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2420 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2420 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2420 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2420 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8400
                           (begin
                             (write '(funapp 2422 30))
                             (display "\n")
                             (image/c xj7447 xk7448 SEGMENT-IMAGE))))
                         g8400))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2425 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2425 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2425 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2425 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8401
                           (begin
                             (write '(funapp 2427 30))
                             (display "\n")
                             (real?/c xj7449 xk7450 GRID-SIZE))))
                         g8401))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2430 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2430 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2430 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2430 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8402
                           (begin
                             (write '(funapp 2432 30))
                             (display "\n")
                             (real?/c xj7451 xk7452 BOARD-HEIGHT-PIXELS))))
                         g8402))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2435 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2435 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2435 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2435 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8403
                           (begin
                             (write '(funapp 2437 30))
                             (display "\n")
                             (real?/c xj7453 xk7454 BOARD-WIDTH))))
                         g8403))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2440 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2440 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2440 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2440 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8404
                           (begin
                             (write '(funapp 2442 30))
                             (display "\n")
                             (real?/c xj7455 xk7456 BOARD-HEIGHT))))
                         g8404))
                       (letrec*
                        ((x8410
                          (letrec*
                           ((xj7457
                             (begin
                               (write '(funapp 2447 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2447 37))
                                  (display "\n")
                                  'module))))
                            (xk7458
                             (begin
                               (write '(funapp 2447 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2447 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8411
                              (begin
                                (write '(funapp 2450 27))
                                (display "\n")
                                ((lambda (j7460 k7461 f7462)
                                   (letrec*
                                    ((g8412
                                      (lambda (g7459)
                                        (letrec*
                                         ((g8413
                                           (letrec*
                                            ((x8414
                                              (letrec*
                                               ((x8415
                                                 (begin
                                                   (write '(funapp 2459 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7460
                                                    k7461
                                                    g7459))))
                                               (begin
                                                 (write '(funapp 2460 42))
                                                 (display "\n")
                                                 (f7462 x8415)))))
                                            (begin
                                              (write '(funapp 2461 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7460
                                               k7461
                                               x8414)))))
                                         g8413))))
                                    g8412))
                                 xj7457
                                 xk7458
                                 snake-wall-collide?))))
                            g8411)))
                         (x8405
                          (letrec*
                           ((x8406
                             (letrec*
                              ((x8409 (input))
                               (x8407
                                (letrec*
                                 ((x8408 (input)))
                                 (begin
                                   (write '(funapp 2474 56))
                                   (display "\n")
                                   (cons
                                    x8408
                                    (begin
                                      (write '(funapp 2474 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2475 27))
                                (display "\n")
                                (cons x8409 x8407)))))
                           (begin
                             (write '(funapp 2476 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2476 29))
                                (display "\n")
                                'snake)
                              x8406)))))
                        (begin
                          (write '(funapp 2477 21))
                          (display "\n")
                          (x8410 x8405)))
                       (letrec*
                        ((x8421
                          (letrec*
                           ((xj7463
                             (begin
                               (write '(funapp 2481 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2481 37))
                                  (display "\n")
                                  'module))))
                            (xk7464
                             (begin
                               (write '(funapp 2481 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2481 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8422
                              (begin
                                (write '(funapp 2484 27))
                                (display "\n")
                                ((lambda (j7466 k7467 f7468)
                                   (letrec*
                                    ((g8423
                                      (lambda (g7465)
                                        (letrec*
                                         ((g8424
                                           (letrec*
                                            ((x8425
                                              (letrec*
                                               ((x8426
                                                 (begin
                                                   (write '(funapp 2493 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7466
                                                    k7467
                                                    g7465))))
                                               (begin
                                                 (write '(funapp 2494 42))
                                                 (display "\n")
                                                 (f7468 x8426)))))
                                            (begin
                                              (write '(funapp 2495 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7466
                                               k7467
                                               x8425)))))
                                         g8424))))
                                    g8423))
                                 xj7463
                                 xk7464
                                 snake-self-collide?))))
                            g8422)))
                         (x8416
                          (letrec*
                           ((x8417
                             (letrec*
                              ((x8420 (input))
                               (x8418
                                (letrec*
                                 ((x8419 (input)))
                                 (begin
                                   (write '(funapp 2508 56))
                                   (display "\n")
                                   (cons
                                    x8419
                                    (begin
                                      (write '(funapp 2508 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2509 27))
                                (display "\n")
                                (cons x8420 x8418)))))
                           (begin
                             (write '(funapp 2510 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2510 29))
                                (display "\n")
                                'snake)
                              x8417)))))
                        (begin
                          (write '(funapp 2511 21))
                          (display "\n")
                          (x8421 x8416)))
                       (letrec*
                        ((x8428
                          (letrec*
                           ((xj7469
                             (begin
                               (write '(funapp 2515 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2515 37))
                                  (display "\n")
                                  'module))))
                            (xk7470
                             (begin
                               (write '(funapp 2515 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2515 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8429
                              (begin
                                (write '(funapp 2518 27))
                                (display "\n")
                                ((lambda (j7472 k7473 f7474)
                                   (letrec*
                                    ((g8430
                                      (lambda (g7471)
                                        (letrec*
                                         ((g8431
                                           (letrec*
                                            ((x8436
                                              (begin
                                                (write '(funapp 2525 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8432
                                              (letrec*
                                               ((x8433
                                                 (letrec*
                                                  ((x8434
                                                    (letrec*
                                                     ((x8435
                                                       (begin
                                                         (write
                                                          '(funapp 2532 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2533 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8435)))))
                                                  (begin
                                                    (write '(funapp 2534 45))
                                                    (display "\n")
                                                    (x8434
                                                     j7472
                                                     k7473
                                                     g7471)))))
                                               (begin
                                                 (write '(funapp 2535 42))
                                                 (display "\n")
                                                 (f7474 x8433)))))
                                            (begin
                                              (write '(funapp 2536 39))
                                              (display "\n")
                                              (x8436 j7472 k7473 x8432)))))
                                         g8431))))
                                    g8430))
                                 xj7469
                                 xk7470
                                 cut-tail))))
                            g8429)))
                         (x8427 (input)))
                        (begin
                          (write '(funapp 2544 21))
                          (display "\n")
                          (x8428 x8427)))
                       (letrec*
                        ((x8442
                          (letrec*
                           ((xj7475
                             (begin
                               (write '(funapp 2548 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2548 37))
                                  (display "\n")
                                  'module))))
                            (xk7476
                             (begin
                               (write '(funapp 2548 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2548 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8443
                              (begin
                                (write '(funapp 2551 27))
                                (display "\n")
                                ((lambda (j7478 k7479 f7480)
                                   (letrec*
                                    ((g8444
                                      (lambda (g7477)
                                        (letrec*
                                         ((g8445
                                           (letrec*
                                            ((x8446
                                              (letrec*
                                               ((x8447
                                                 (begin
                                                   (write '(funapp 2560 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7478
                                                    k7479
                                                    g7477))))
                                               (begin
                                                 (write '(funapp 2561 42))
                                                 (display "\n")
                                                 (f7480 x8447)))))
                                            (begin
                                              (write '(funapp 2562 39))
                                              (display "\n")
                                              (SNAKE/C j7478 k7479 x8446)))))
                                         g8445))))
                                    g8444))
                                 xj7475
                                 xk7476
                                 snake-slither))))
                            g8443)))
                         (x8437
                          (letrec*
                           ((x8438
                             (letrec*
                              ((x8441 (input))
                               (x8439
                                (letrec*
                                 ((x8440 (input)))
                                 (begin
                                   (write '(funapp 2575 56))
                                   (display "\n")
                                   (cons
                                    x8440
                                    (begin
                                      (write '(funapp 2575 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2576 27))
                                (display "\n")
                                (cons x8441 x8439)))))
                           (begin
                             (write '(funapp 2577 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2577 29))
                                (display "\n")
                                'snake)
                              x8438)))))
                        (begin
                          (write '(funapp 2578 21))
                          (display "\n")
                          (x8442 x8437)))
                       (letrec*
                        ((x8453
                          (letrec*
                           ((xj7481
                             (begin
                               (write '(funapp 2582 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2582 37))
                                  (display "\n")
                                  'module))))
                            (xk7482
                             (begin
                               (write '(funapp 2582 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2582 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8454
                              (begin
                                (write '(funapp 2585 27))
                                (display "\n")
                                ((lambda (j7484 k7485 f7486)
                                   (letrec*
                                    ((g8455
                                      (lambda (g7483)
                                        (letrec*
                                         ((g8456
                                           (letrec*
                                            ((x8457
                                              (letrec*
                                               ((x8458
                                                 (begin
                                                   (write '(funapp 2594 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7484
                                                    k7485
                                                    g7483))))
                                               (begin
                                                 (write '(funapp 2595 42))
                                                 (display "\n")
                                                 (f7486 x8458)))))
                                            (begin
                                              (write '(funapp 2596 39))
                                              (display "\n")
                                              (SNAKE/C j7484 k7485 x8457)))))
                                         g8456))))
                                    g8455))
                                 xj7481
                                 xk7482
                                 snake-grow))))
                            g8454)))
                         (x8448
                          (letrec*
                           ((x8449
                             (letrec*
                              ((x8452 (input))
                               (x8450
                                (letrec*
                                 ((x8451 (input)))
                                 (begin
                                   (write '(funapp 2609 56))
                                   (display "\n")
                                   (cons
                                    x8451
                                    (begin
                                      (write '(funapp 2609 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2610 27))
                                (display "\n")
                                (cons x8452 x8450)))))
                           (begin
                             (write '(funapp 2611 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2611 29))
                                (display "\n")
                                'snake)
                              x8449)))))
                        (begin
                          (write '(funapp 2612 21))
                          (display "\n")
                          (x8453 x8448)))
                       (letrec*
                        ((x8473
                          (letrec*
                           ((xj7487
                             (begin
                               (write '(funapp 2616 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2616 37))
                                  (display "\n")
                                  'module))))
                            (xk7488
                             (begin
                               (write '(funapp 2616 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2616 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8474
                              (begin
                                (write '(funapp 2619 27))
                                (display "\n")
                                ((lambda (j7491 k7492 f7493)
                                   (letrec*
                                    ((g8475
                                      (lambda (g7489 g7490)
                                        (letrec*
                                         ((g8476
                                           (letrec*
                                            ((x8477
                                              (letrec*
                                               ((x8479
                                                 (begin
                                                   (write '(funapp 2628 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7491
                                                    k7492
                                                    g7489)))
                                                (x8478
                                                 (begin
                                                   (write '(funapp 2629 50))
                                                   (display "\n")
                                                   (DIR/C j7491 k7492 g7490))))
                                               (begin
                                                 (write '(funapp 2630 42))
                                                 (display "\n")
                                                 (f7493 x8479 x8478)))))
                                            (begin
                                              (write '(funapp 2631 39))
                                              (display "\n")
                                              (WORLD/C j7491 k7492 x8477)))))
                                         g8476))))
                                    g8475))
                                 xj7487
                                 xk7488
                                 world-change-dir))))
                            g8474)))
                         (x8460
                          (letrec*
                           ((x8461
                             (letrec*
                              ((x8468
                                (letrec*
                                 ((x8469
                                   (letrec*
                                    ((x8472 (input))
                                     (x8470
                                      (letrec*
                                       ((x8471 (input)))
                                       (begin
                                         (write '(funapp 2650 36))
                                         (display "\n")
                                         (cons
                                          x8471
                                          (begin
                                            (write '(funapp 2650 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2651 33))
                                      (display "\n")
                                      (cons x8472 x8470)))))
                                 (begin
                                   (write '(funapp 2652 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2652 35))
                                      (display "\n")
                                      'snake)
                                    x8469))))
                               (x8462
                                (letrec*
                                 ((x8463
                                   (letrec*
                                    ((x8464
                                      (letrec*
                                       ((x8467 (input))
                                        (x8465
                                         (letrec*
                                          ((x8466 (input)))
                                          (begin
                                            (write '(funapp 2663 39))
                                            (display "\n")
                                            (cons
                                             x8466
                                             (begin
                                               (write '(funapp 2663 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2664 36))
                                         (display "\n")
                                         (cons x8467 x8465)))))
                                    (begin
                                      (write '(funapp 2665 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2665 38))
                                         (display "\n")
                                         'posn)
                                       x8464)))))
                                 (begin
                                   (write '(funapp 2666 30))
                                   (display "\n")
                                   (cons
                                    x8463
                                    (begin
                                      (write '(funapp 2666 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2667 27))
                                (display "\n")
                                (cons x8468 x8462)))))
                           (begin
                             (write '(funapp 2668 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2668 29))
                                (display "\n")
                                'world)
                              x8461))))
                         (x8459 (input)))
                        (begin
                          (write '(funapp 2670 21))
                          (display "\n")
                          (x8473 x8460 x8459)))
                       (letrec*
                        ((x8493
                          (letrec*
                           ((xj7494
                             (begin
                               (write '(funapp 2674 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2674 37))
                                  (display "\n")
                                  'module))))
                            (xk7495
                             (begin
                               (write '(funapp 2674 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2674 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8494
                              (begin
                                (write '(funapp 2677 27))
                                (display "\n")
                                ((lambda (j7497 k7498 f7499)
                                   (letrec*
                                    ((g8495
                                      (lambda (g7496)
                                        (letrec*
                                         ((g8496
                                           (letrec*
                                            ((x8497
                                              (letrec*
                                               ((x8498
                                                 (begin
                                                   (write '(funapp 2686 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7497
                                                    k7498
                                                    g7496))))
                                               (begin
                                                 (write '(funapp 2687 42))
                                                 (display "\n")
                                                 (f7499 x8498)))))
                                            (begin
                                              (write '(funapp 2688 39))
                                              (display "\n")
                                              (WORLD/C j7497 k7498 x8497)))))
                                         g8496))))
                                    g8495))
                                 xj7494
                                 xk7495
                                 world->world))))
                            g8494)))
                         (x8480
                          (letrec*
                           ((x8481
                             (letrec*
                              ((x8488
                                (letrec*
                                 ((x8489
                                   (letrec*
                                    ((x8492 (input))
                                     (x8490
                                      (letrec*
                                       ((x8491 (input)))
                                       (begin
                                         (write '(funapp 2707 36))
                                         (display "\n")
                                         (cons
                                          x8491
                                          (begin
                                            (write '(funapp 2707 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2708 33))
                                      (display "\n")
                                      (cons x8492 x8490)))))
                                 (begin
                                   (write '(funapp 2709 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2709 35))
                                      (display "\n")
                                      'snake)
                                    x8489))))
                               (x8482
                                (letrec*
                                 ((x8483
                                   (letrec*
                                    ((x8484
                                      (letrec*
                                       ((x8487 (input))
                                        (x8485
                                         (letrec*
                                          ((x8486 (input)))
                                          (begin
                                            (write '(funapp 2720 39))
                                            (display "\n")
                                            (cons
                                             x8486
                                             (begin
                                               (write '(funapp 2720 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2721 36))
                                         (display "\n")
                                         (cons x8487 x8485)))))
                                    (begin
                                      (write '(funapp 2722 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2722 38))
                                         (display "\n")
                                         'posn)
                                       x8484)))))
                                 (begin
                                   (write '(funapp 2723 30))
                                   (display "\n")
                                   (cons
                                    x8483
                                    (begin
                                      (write '(funapp 2723 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2724 27))
                                (display "\n")
                                (cons x8488 x8482)))))
                           (begin
                             (write '(funapp 2725 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2725 29))
                                (display "\n")
                                'world)
                              x8481)))))
                        (begin
                          (write '(funapp 2726 21))
                          (display "\n")
                          (x8493 x8480)))
                       (letrec*
                        ((x8513
                          (letrec*
                           ((xj7500
                             (begin
                               (write '(funapp 2730 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2730 37))
                                  (display "\n")
                                  'module))))
                            (xk7501
                             (begin
                               (write '(funapp 2730 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2730 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8514
                              (begin
                                (write '(funapp 2733 27))
                                (display "\n")
                                ((lambda (j7504 k7505 f7506)
                                   (letrec*
                                    ((g8515
                                      (lambda (g7502 g7503)
                                        (letrec*
                                         ((g8516
                                           (letrec*
                                            ((x8517
                                              (letrec*
                                               ((x8519
                                                 (begin
                                                   (write '(funapp 2742 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7504
                                                    k7505
                                                    g7502)))
                                                (x8518
                                                 (begin
                                                   (write '(funapp 2744 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7504
                                                    k7505
                                                    g7503))))
                                               (begin
                                                 (write '(funapp 2745 42))
                                                 (display "\n")
                                                 (f7506 x8519 x8518)))))
                                            (begin
                                              (write '(funapp 2746 39))
                                              (display "\n")
                                              (WORLD/C j7504 k7505 x8517)))))
                                         g8516))))
                                    g8515))
                                 xj7500
                                 xk7501
                                 handle-key))))
                            g8514)))
                         (x8500
                          (letrec*
                           ((x8501
                             (letrec*
                              ((x8508
                                (letrec*
                                 ((x8509
                                   (letrec*
                                    ((x8512 (input))
                                     (x8510
                                      (letrec*
                                       ((x8511 (input)))
                                       (begin
                                         (write '(funapp 2765 36))
                                         (display "\n")
                                         (cons
                                          x8511
                                          (begin
                                            (write '(funapp 2765 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2766 33))
                                      (display "\n")
                                      (cons x8512 x8510)))))
                                 (begin
                                   (write '(funapp 2767 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2767 35))
                                      (display "\n")
                                      'snake)
                                    x8509))))
                               (x8502
                                (letrec*
                                 ((x8503
                                   (letrec*
                                    ((x8504
                                      (letrec*
                                       ((x8507 (input))
                                        (x8505
                                         (letrec*
                                          ((x8506 (input)))
                                          (begin
                                            (write '(funapp 2778 39))
                                            (display "\n")
                                            (cons
                                             x8506
                                             (begin
                                               (write '(funapp 2778 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2779 36))
                                         (display "\n")
                                         (cons x8507 x8505)))))
                                    (begin
                                      (write '(funapp 2780 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2780 38))
                                         (display "\n")
                                         'posn)
                                       x8504)))))
                                 (begin
                                   (write '(funapp 2781 30))
                                   (display "\n")
                                   (cons
                                    x8503
                                    (begin
                                      (write '(funapp 2781 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2782 27))
                                (display "\n")
                                (cons x8508 x8502)))))
                           (begin
                             (write '(funapp 2783 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2783 29))
                                (display "\n")
                                'world)
                              x8501))))
                         (x8499 (input)))
                        (begin
                          (write '(funapp 2785 21))
                          (display "\n")
                          (x8513 x8500 x8499)))
                       (letrec*
                        ((x8533
                          (letrec*
                           ((xj7507
                             (begin
                               (write '(funapp 2789 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2789 37))
                                  (display "\n")
                                  'module))))
                            (xk7508
                             (begin
                               (write '(funapp 2789 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2789 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8534
                              (begin
                                (write '(funapp 2792 27))
                                (display "\n")
                                ((lambda (j7510 k7511 f7512)
                                   (letrec*
                                    ((g8535
                                      (lambda (g7509)
                                        (letrec*
                                         ((g8536
                                           (letrec*
                                            ((x8537
                                              (letrec*
                                               ((x8538
                                                 (begin
                                                   (write '(funapp 2801 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7510
                                                    k7511
                                                    g7509))))
                                               (begin
                                                 (write '(funapp 2802 42))
                                                 (display "\n")
                                                 (f7512 x8538)))))
                                            (begin
                                              (write '(funapp 2803 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7510
                                               k7511
                                               x8537)))))
                                         g8536))))
                                    g8535))
                                 xj7507
                                 xk7508
                                 game-over?))))
                            g8534)))
                         (x8520
                          (letrec*
                           ((x8521
                             (letrec*
                              ((x8528
                                (letrec*
                                 ((x8529
                                   (letrec*
                                    ((x8532 (input))
                                     (x8530
                                      (letrec*
                                       ((x8531 (input)))
                                       (begin
                                         (write '(funapp 2822 36))
                                         (display "\n")
                                         (cons
                                          x8531
                                          (begin
                                            (write '(funapp 2822 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2823 33))
                                      (display "\n")
                                      (cons x8532 x8530)))))
                                 (begin
                                   (write '(funapp 2824 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2824 35))
                                      (display "\n")
                                      'snake)
                                    x8529))))
                               (x8522
                                (letrec*
                                 ((x8523
                                   (letrec*
                                    ((x8524
                                      (letrec*
                                       ((x8527 (input))
                                        (x8525
                                         (letrec*
                                          ((x8526 (input)))
                                          (begin
                                            (write '(funapp 2835 39))
                                            (display "\n")
                                            (cons
                                             x8526
                                             (begin
                                               (write '(funapp 2835 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2836 36))
                                         (display "\n")
                                         (cons x8527 x8525)))))
                                    (begin
                                      (write '(funapp 2837 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2837 38))
                                         (display "\n")
                                         'posn)
                                       x8524)))))
                                 (begin
                                   (write '(funapp 2838 30))
                                   (display "\n")
                                   (cons
                                    x8523
                                    (begin
                                      (write '(funapp 2838 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2839 27))
                                (display "\n")
                                (cons x8528 x8522)))))
                           (begin
                             (write '(funapp 2840 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2840 29))
                                (display "\n")
                                'world)
                              x8521)))))
                        (begin
                          (write '(funapp 2841 21))
                          (display "\n")
                          (x8533 x8520)))
                       (letrec*
                        ((x8552
                          (letrec*
                           ((xj7513
                             (begin
                               (write '(funapp 2845 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2845 37))
                                  (display "\n")
                                  'module))))
                            (xk7514
                             (begin
                               (write '(funapp 2845 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2845 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8553
                              (begin
                                (write '(funapp 2848 27))
                                (display "\n")
                                ((lambda (j7516 k7517 f7518)
                                   (letrec*
                                    ((g8554
                                      (lambda (g7515)
                                        (letrec*
                                         ((g8555
                                           (letrec*
                                            ((x8556
                                              (letrec*
                                               ((x8557
                                                 (begin
                                                   (write '(funapp 2857 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7516
                                                    k7517
                                                    g7515))))
                                               (begin
                                                 (write '(funapp 2858 42))
                                                 (display "\n")
                                                 (f7518 x8557)))))
                                            (begin
                                              (write '(funapp 2859 39))
                                              (display "\n")
                                              (image/c j7516 k7517 x8556)))))
                                         g8555))))
                                    g8554))
                                 xj7513
                                 xk7514
                                 world->scene))))
                            g8553)))
                         (x8539
                          (letrec*
                           ((x8540
                             (letrec*
                              ((x8547
                                (letrec*
                                 ((x8548
                                   (letrec*
                                    ((x8551 (input))
                                     (x8549
                                      (letrec*
                                       ((x8550 (input)))
                                       (begin
                                         (write '(funapp 2878 36))
                                         (display "\n")
                                         (cons
                                          x8550
                                          (begin
                                            (write '(funapp 2878 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2879 33))
                                      (display "\n")
                                      (cons x8551 x8549)))))
                                 (begin
                                   (write '(funapp 2880 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2880 35))
                                      (display "\n")
                                      'snake)
                                    x8548))))
                               (x8541
                                (letrec*
                                 ((x8542
                                   (letrec*
                                    ((x8543
                                      (letrec*
                                       ((x8546 (input))
                                        (x8544
                                         (letrec*
                                          ((x8545 (input)))
                                          (begin
                                            (write '(funapp 2891 39))
                                            (display "\n")
                                            (cons
                                             x8545
                                             (begin
                                               (write '(funapp 2891 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2892 36))
                                         (display "\n")
                                         (cons x8546 x8544)))))
                                    (begin
                                      (write '(funapp 2893 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2893 38))
                                         (display "\n")
                                         'posn)
                                       x8543)))))
                                 (begin
                                   (write '(funapp 2894 30))
                                   (display "\n")
                                   (cons
                                    x8542
                                    (begin
                                      (write '(funapp 2894 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2895 27))
                                (display "\n")
                                (cons x8547 x8541)))))
                           (begin
                             (write '(funapp 2896 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2896 29))
                                (display "\n")
                                'world)
                              x8540)))))
                        (begin
                          (write '(funapp 2897 21))
                          (display "\n")
                          (x8552 x8539)))
                       (letrec*
                        ((x8564
                          (letrec*
                           ((xj7519
                             (begin
                               (write '(funapp 2901 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2901 37))
                                  (display "\n")
                                  'module))))
                            (xk7520
                             (begin
                               (write '(funapp 2901 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2901 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8565
                              (begin
                                (write '(funapp 2904 27))
                                (display "\n")
                                ((lambda (j7523 k7524 f7525)
                                   (letrec*
                                    ((g8566
                                      (lambda (g7521 g7522)
                                        (letrec*
                                         ((g8567
                                           (letrec*
                                            ((x8568
                                              (letrec*
                                               ((x8570
                                                 (begin
                                                   (write '(funapp 2913 50))
                                                   (display "\n")
                                                   (POSN/C j7523 k7524 g7521)))
                                                (x8569
                                                 (begin
                                                   (write '(funapp 2914 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7523
                                                    k7524
                                                    g7522))))
                                               (begin
                                                 (write '(funapp 2915 42))
                                                 (display "\n")
                                                 (f7525 x8570 x8569)))))
                                            (begin
                                              (write '(funapp 2916 39))
                                              (display "\n")
                                              (image/c j7523 k7524 x8568)))))
                                         g8567))))
                                    g8566))
                                 xj7519
                                 xk7520
                                 food+scene))))
                            g8565)))
                         (x8559
                          (letrec*
                           ((x8560
                             (letrec*
                              ((x8563 (input))
                               (x8561
                                (letrec*
                                 ((x8562 (input)))
                                 (begin
                                   (write '(funapp 2929 56))
                                   (display "\n")
                                   (cons
                                    x8562
                                    (begin
                                      (write '(funapp 2929 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2930 27))
                                (display "\n")
                                (cons x8563 x8561)))))
                           (begin
                             (write '(funapp 2931 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2931 29))
                                (display "\n")
                                'posn)
                              x8560))))
                         (x8558
                          (begin
                            (write '(funapp 2932 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2932 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2932 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2933 21))
                          (display "\n")
                          (x8564 x8559 x8558)))
                       (letrec*
                        ((x8575
                          (letrec*
                           ((xj7526
                             (begin
                               (write '(funapp 2937 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2937 37))
                                  (display "\n")
                                  'module))))
                            (xk7527
                             (begin
                               (write '(funapp 2937 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2937 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8576
                              (begin
                                (write '(funapp 2940 27))
                                (display "\n")
                                ((lambda (j7532 k7533 f7534)
                                   (letrec*
                                    ((g8577
                                      (lambda (g7528 g7529 g7530 g7531)
                                        (letrec*
                                         ((g8578
                                           (letrec*
                                            ((x8579
                                              (letrec*
                                               ((x8583
                                                 (begin
                                                   (write '(funapp 2949 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7528)))
                                                (x8582
                                                 (begin
                                                   (write '(funapp 2950 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7529)))
                                                (x8581
                                                 (begin
                                                   (write '(funapp 2951 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7530)))
                                                (x8580
                                                 (begin
                                                   (write '(funapp 2952 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7531))))
                                               (begin
                                                 (write '(funapp 2953 42))
                                                 (display "\n")
                                                 (f7534
                                                  x8583
                                                  x8582
                                                  x8581
                                                  x8580)))))
                                            (begin
                                              (write '(funapp 2954 39))
                                              (display "\n")
                                              (image/c j7532 k7533 x8579)))))
                                         g8578))))
                                    g8577))
                                 xj7526
                                 xk7527
                                 place-image-on-grid))))
                            g8576)))
                         (x8574
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
                               '()))))
                         (x8573 (input))
                         (x8572 (input))
                         (x8571
                          (begin
                            (write '(funapp 2964 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2964 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2964 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2965 21))
                          (display "\n")
                          (x8575 x8574 x8573 x8572 x8571)))
                       (letrec*
                        ((x8590
                          (letrec*
                           ((xj7535
                             (begin
                               (write '(funapp 2969 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2969 37))
                                  (display "\n")
                                  'module))))
                            (xk7536
                             (begin
                               (write '(funapp 2969 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2969 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8591
                              (begin
                                (write '(funapp 2972 27))
                                (display "\n")
                                ((lambda (j7539 k7540 f7541)
                                   (letrec*
                                    ((g8592
                                      (lambda (g7537 g7538)
                                        (letrec*
                                         ((g8593
                                           (letrec*
                                            ((x8594
                                              (letrec*
                                               ((x8596
                                                 (begin
                                                   (write '(funapp 2981 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7539
                                                    k7540
                                                    g7537)))
                                                (x8595
                                                 (begin
                                                   (write '(funapp 2982 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7539
                                                    k7540
                                                    g7538))))
                                               (begin
                                                 (write '(funapp 2983 42))
                                                 (display "\n")
                                                 (f7541 x8596 x8595)))))
                                            (begin
                                              (write '(funapp 2984 39))
                                              (display "\n")
                                              (image/c j7539 k7540 x8594)))))
                                         g8593))))
                                    g8592))
                                 xj7535
                                 xk7536
                                 snake+scene))))
                            g8591)))
                         (x8585
                          (letrec*
                           ((x8586
                             (letrec*
                              ((x8589 (input))
                               (x8587
                                (letrec*
                                 ((x8588 (input)))
                                 (begin
                                   (write '(funapp 2997 56))
                                   (display "\n")
                                   (cons
                                    x8588
                                    (begin
                                      (write '(funapp 2997 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2998 27))
                                (display "\n")
                                (cons x8589 x8587)))))
                           (begin
                             (write '(funapp 2999 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2999 29))
                                (display "\n")
                                'snake)
                              x8586))))
                         (x8584
                          (begin
                            (write '(funapp 3000 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3000 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3000 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3001 21))
                          (display "\n")
                          (x8590 x8585 x8584)))
                       (letrec*
                        ((x8599
                          (letrec*
                           ((xj7542
                             (begin
                               (write '(funapp 3005 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3005 37))
                                  (display "\n")
                                  'module))))
                            (xk7543
                             (begin
                               (write '(funapp 3005 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3005 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8600
                              (begin
                                (write '(funapp 3008 27))
                                (display "\n")
                                ((lambda (j7546 k7547 f7548)
                                   (letrec*
                                    ((g8601
                                      (lambda (g7544 g7545)
                                        (letrec*
                                         ((g8602
                                           (letrec*
                                            ((x8603
                                              (letrec*
                                               ((x8605
                                                 (letrec*
                                                  ((x8606
                                                    (begin
                                                      (write '(funapp 3019 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 3020 45))
                                                    (display "\n")
                                                    (x8606
                                                     j7546
                                                     k7547
                                                     g7544))))
                                                (x8604
                                                 (begin
                                                   (write '(funapp 3021 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7546
                                                    k7547
                                                    g7545))))
                                               (begin
                                                 (write '(funapp 3022 42))
                                                 (display "\n")
                                                 (f7548 x8605 x8604)))))
                                            (begin
                                              (write '(funapp 3023 39))
                                              (display "\n")
                                              (image/c j7546 k7547 x8603)))))
                                         g8602))))
                                    g8601))
                                 xj7542
                                 xk7543
                                 segments+scene))))
                            g8600)))
                         (x8598 (input))
                         (x8597
                          (begin
                            (write '(funapp 3031 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3031 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3031 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3032 21))
                          (display "\n")
                          (x8599 x8598 x8597)))
                       (letrec*
                        ((x8613
                          (letrec*
                           ((xj7549
                             (begin
                               (write '(funapp 3036 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3036 37))
                                  (display "\n")
                                  'module))))
                            (xk7550
                             (begin
                               (write '(funapp 3036 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3036 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8614
                              (begin
                                (write '(funapp 3039 27))
                                (display "\n")
                                ((lambda (j7553 k7554 f7555)
                                   (letrec*
                                    ((g8615
                                      (lambda (g7551 g7552)
                                        (letrec*
                                         ((g8616
                                           (letrec*
                                            ((x8617
                                              (letrec*
                                               ((x8619
                                                 (begin
                                                   (write '(funapp 3048 50))
                                                   (display "\n")
                                                   (POSN/C j7553 k7554 g7551)))
                                                (x8618
                                                 (begin
                                                   (write '(funapp 3049 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7553
                                                    k7554
                                                    g7552))))
                                               (begin
                                                 (write '(funapp 3050 42))
                                                 (display "\n")
                                                 (f7555 x8619 x8618)))))
                                            (begin
                                              (write '(funapp 3051 39))
                                              (display "\n")
                                              (image/c j7553 k7554 x8617)))))
                                         g8616))))
                                    g8615))
                                 xj7549
                                 xk7550
                                 segment+scene))))
                            g8614)))
                         (x8608
                          (letrec*
                           ((x8609
                             (letrec*
                              ((x8612 (input))
                               (x8610
                                (letrec*
                                 ((x8611 (input)))
                                 (begin
                                   (write '(funapp 3064 56))
                                   (display "\n")
                                   (cons
                                    x8611
                                    (begin
                                      (write '(funapp 3064 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3065 27))
                                (display "\n")
                                (cons x8612 x8610)))))
                           (begin
                             (write '(funapp 3066 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3066 29))
                                (display "\n")
                                'posn)
                              x8609))))
                         (x8607
                          (begin
                            (write '(funapp 3067 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3067 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3067 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3068 21))
                          (display "\n")
                          (x8613 x8608 x8607)))))))))
               g8379))))
           g7600))))
       g7583)))
    g7582)))
