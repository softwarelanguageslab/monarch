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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7726
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7726)))
               (/
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7727
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7729
                            (lambda (g7369 g7370)
                              (letrec*
                               ((g7730
                                 (letrec*
                                  ((x7731
                                    (letrec*
                                     ((x7733
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7369)))
                                      (x7732
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7373 x7733 x7732)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7371 k7372 x7731)))))
                               g7730))))
                          g7729))
                       xj7367
                       xk7368
                       (lambda (a b)
                         (letrec*
                          ((g7728
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7728))))))
                  g7727)))
               (car
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7734
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g7736
                            (lambda (g7376)
                              (letrec*
                               ((g7737
                                 (letrec*
                                  ((x7738
                                    (letrec*
                                     ((x7739
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7377 k7378 g7376))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7379 x7739)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7377 k7378 x7738)))))
                               g7737))))
                          g7736))
                       xj7374
                       xk7375
                       (lambda (p)
                         (letrec*
                          ((g7735
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7735))))))
                  g7734)))
               (cdr
                (letrec*
                 ((xj7380
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7381
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7740
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7742
                            (lambda (g7382)
                              (letrec*
                               ((g7743
                                 (letrec*
                                  ((x7744
                                    (letrec*
                                     ((x7745
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7385 x7745)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7383 k7384 x7744)))))
                               g7743))))
                          g7742))
                       xj7380
                       xk7381
                       (lambda (p)
                         (letrec*
                          ((g7741
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7741))))))
                  g7740)))
               (cons
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7746
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g7748
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g7749
                                 (letrec*
                                  ((x7750
                                    (letrec*
                                     ((x7752
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7388)))
                                      (x7751
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7392 x7752 x7751)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7390 k7391 x7750)))))
                               g7749))))
                          g7748))
                       xj7386
                       xk7387
                       (lambda (a b)
                         (letrec*
                          ((g7747
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7747))))))
                  g7746)))
               (vector-ref
                (letrec*
                 ((xj7393
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7394
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7753
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7755
                            (lambda (g7395)
                              (letrec*
                               ((g7756
                                 (letrec*
                                  ((x7757
                                    (letrec*
                                     ((x7758
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7398 x7758)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7396 k7397 x7757)))))
                               g7756))))
                          g7755))
                       xj7393
                       xk7394
                       (lambda (v i)
                         (letrec*
                          ((g7754
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7754))))))
                  g7753)))
               (vector-set!
                (letrec*
                 ((xj7399
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7400
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7759
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7403 k7404 f7405)
                         (letrec*
                          ((g7761
                            (lambda (g7401 g7402)
                              (letrec*
                               ((g7762
                                 (letrec*
                                  ((x7763
                                    (letrec*
                                     ((x7765
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7403 k7404 g7401)))
                                      (x7764
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7403 k7404 g7402))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7405 x7765 x7764)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7403 k7404 x7763)))))
                               g7762))))
                          g7761))
                       xj7399
                       xk7400
                       (lambda (vec i v)
                         (letrec*
                          ((g7760
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7760))))))
                  g7759)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7768)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7778))))
                          (x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7776)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7777 x7775)))))))
                   g7771)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7780)))))
                   g7779)))
               (cadadr
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
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7788)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7786)))))
                   g7785)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7793))))
                    (g7791
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
                       ((g7794
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7795 res))
                       g7795))))
                   g7791)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (letrec*
                         ((x7798
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7798)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7797)))))
                   g7796)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7802)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7800)))))
                   g7799)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7806
                        #f
                        (letrec*
                         ((x-cnd7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7808 k)))))
                         (if x-cnd7807
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7809)))))))))
                   g7804)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7811)))))
                   g7810)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7814))))
                    (g7813
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7815
                        ""
                        (letrec*
                         ((x7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7819))))
                          (x7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7817)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7818 x7816)))))))
                   g7813)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7825
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7825))))
                   g7822)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7827
                        (letrec*
                         ((x7828
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7829)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7828)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7827)))))
                   g7826)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((x-cnd7835
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7835
                        x
                        (letrec*
                         ((x7837
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7836
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7837 x7836)))))))
                   g7832)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7838
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7838)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x-cnd7840
                        (letrec*
                         ((x7841 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7841)))))
                      (if x-cnd7840
                        (letrec*
                         ((x7842 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7842)))
                        #f))))
                   g7839)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7844
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7844 9)))))
                      (letrec*
                       ((g7845
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7846
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7846 10)))))
                            (letrec*
                             ((g7847
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7848
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7848 32))))))
                             g7847)))))
                       g7845))))
                   g7843)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7850)))))
                   g7849)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7853)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7855
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7855)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7856 #f)) g7856)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7858)))))
                   g7857)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7861))))
                    (g7860
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7862
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7860)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7864
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7865
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7865
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7866
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7867
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7867
                                       (letrec*
                                        ((x-cnd7868
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7868
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7869
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7870
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7870
                                             (letrec*
                                              ((x-cnd7871
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7871
                                                (letrec*
                                                 ((x-cnd7872
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7873
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7874 x7873)))))
                                                 (if x-cnd7872
                                                   (letrec*
                                                    ((x7876
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7875
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7876 x7875)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7877
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7878
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7878
                                                (letrec*
                                                 ((x-cnd7879
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7879
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7880
                                                       (letrec*
                                                        ((x-cnd7881
                                                          (letrec*
                                                           ((x7882
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
                                                             (= x7882 n)))))
                                                        (if x-cnd7881
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7883
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
                                                                    ((g7884
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7885
                                                                           (letrec*
                                                                            ((x7887
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
                                                                             (x7886
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
                                                                               x7887
                                                                               x7886)))))
                                                                         (if x-cnd7885
                                                                           (letrec*
                                                                            ((x7888
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
                                                                               x7888)))
                                                                           #f)))))
                                                                    g7884))))
                                                                g7883))))
                                                           (letrec*
                                                            ((g7889
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7889))
                                                          #f))))
                                                     g7880))
                                                   #f))
                                                #f)))))
                                         g7877)))))
                                   g7869)))))
                             g7866)))))
                       g7864))))
                   g7863)))
               (cdaaar
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
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7893)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7892)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7891)))))
                   g7890)))
               (caaddr
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7897)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7896)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7895)))))
                   g7894)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7898
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7898)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7903))))
                    (g7901
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
                       ((g7904
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7905 res))
                       g7905))))
                   g7901)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7906
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7906)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7912
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7912))))
                   g7909)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7914)))))
                   g7913)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7919)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7918)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7917)))))
                   g7916)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7922)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7921)))))
                   g7920)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (letrec*
                         ((x7925
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7925)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7924)))))
                   g7923)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7931)))))
                   g7928)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7935)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7934)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7937)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7939
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7939)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7943
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7943)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7950
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7951))))
                          (x7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7949)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7950 x7948)))))))
                   g7945)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (letrec*
                         ((x7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7955)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7954)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7953)))))
                   g7952)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7959)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7958)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7957)))))
                   g7956)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7963)))))
                   g7961)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7967)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7966)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7973
                        (letrec*
                         ((g7974
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7974)
                        (letrec*
                         ((x-cnd7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7976)))))
                         (if x-cnd7975
                           (letrec*
                            ((g7977
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7978)))))
                            g7977)
                           (letrec*
                            ((x-cnd7979
                              (letrec*
                               ((x7980
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7980)))))
                            (if x-cnd7979
                              (letrec*
                               ((g7981
                                 (letrec*
                                  ((x7983
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7982
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7983 x7982)))))
                               g7981)
                              (letrec*
                               ((x-cnd7984
                                 (letrec*
                                  ((x7985
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7985)))))
                               (if x-cnd7984
                                 (letrec*
                                  ((g7986
                                    (letrec*
                                     ((x7989
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7988
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7987
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7989 x7988 x7987)))))
                                  g7986)
                                 (letrec*
                                  ((x-cnd7990
                                    (letrec*
                                     ((x7991
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7991)))))
                                  (if x-cnd7990
                                    (letrec*
                                     ((g7992
                                       (letrec*
                                        ((x7996
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7995
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7994
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7993
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7996 x7995 x7994 x7993)))))
                                     g7992)
                                    (letrec*
                                     ((x-cnd7997
                                       (letrec*
                                        ((x7998
                                          (letrec*
                                           ((x7999
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7999)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7998)))))
                                     (if x-cnd7997
                                       (letrec*
                                        ((g8000
                                          (letrec*
                                           ((x8006
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x8005
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8004
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8003
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8001
                                             (letrec*
                                              ((x8002
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x8002)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x8006
                                              x8005
                                              x8004
                                              x8003
                                              x8001)))))
                                        g8000)
                                       (letrec*
                                        ((x-cnd8007
                                          (letrec*
                                           ((x8008
                                             (letrec*
                                              ((x8009
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x8009)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x8008)))))
                                        (if x-cnd8007
                                          (letrec*
                                           ((g8010
                                             (letrec*
                                              ((x8018
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8017
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8016
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8015
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8013
                                                (letrec*
                                                 ((x8014
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x8014))))
                                               (x8011
                                                (letrec*
                                                 ((x8012
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x8012)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x8018
                                                 x8017
                                                 x8016
                                                 x8015
                                                 x8013
                                                 x8011)))))
                                           g8010)
                                          (letrec*
                                           ((x-cnd8019
                                             (letrec*
                                              ((x8020
                                                (letrec*
                                                 ((x8021
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x8021)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x8020)))))
                                           (if x-cnd8019
                                             (letrec*
                                              ((g8022
                                                (letrec*
                                                 ((x8032
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8031
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8030
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8029
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8027
                                                   (letrec*
                                                    ((x8028
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x8028))))
                                                  (x8025
                                                   (letrec*
                                                    ((x8026
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x8026))))
                                                  (x8023
                                                   (letrec*
                                                    ((x8024
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x8024)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x8032
                                                    x8031
                                                    x8030
                                                    x8029
                                                    x8027
                                                    x8025
                                                    x8023)))))
                                              g8022)
                                             (letrec*
                                              ((g8033
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8033)))))))))))))))))))
                   g7970)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x8036
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x8036))))
                    (g8035
                     (letrec*
                      ((x-cnd8037
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8037
                        #f
                        (letrec*
                         ((x-cnd8038
                           (letrec*
                            ((x8039
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x8039 e)))))
                         (if x-cnd8038
                           l
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x8040)))))))))
                   g8035)))
               (cddddr
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
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x8044)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x8043)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x8042)))))
                   g8041)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8046
                        (letrec*
                         ((x8047
                           (letrec*
                            ((x8048
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x8048)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x8047)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x8046)))))
                   g8045)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8049
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g8049)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x8052))))
                    (g8051
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g8051)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8054
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8054))))
                   g8053)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x8056
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x8056)))))
                   g8055)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8058
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8058
                           (letrec*
                            ((x8059
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x8059)))
                           #f))))
                      (letrec*
                       ((g8060
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g8060))))
                   g8057)))
               (cddaar
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
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x8064)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x8063)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x8062)))))
                   g8061)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x-cnd8066
                        (letrec*
                         ((x8067 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x8067 c)))))
                      (if x-cnd8066
                        (letrec*
                         ((x8068 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x8068)))
                        #f))))
                   g8065)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x8071
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x8071))))
                    (g8070
                     (letrec*
                      ((x-cnd8072
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8072
                        #f
                        (letrec*
                         ((x-cnd8073
                           (letrec*
                            ((x8074
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x8074 k)))))
                         (if x-cnd8073
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8075
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x8075)))))))))
                   g8070)))
               (not (lambda (x) (letrec* ((g8076 (if x #f #t))) g8076)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8077
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g8077)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x8080))))
                    (g8079
                     (letrec*
                      ((x-cnd8081
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8081
                        #f
                        (letrec*
                         ((x-cnd8082
                           (letrec*
                            ((x8083
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x8083 e)))))
                         (if x-cnd8082
                           l
                           (letrec*
                            ((x8084
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x8084)))))))))
                   g8079)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8086
                        (letrec*
                         ((x8087
                           (letrec*
                            ((x8088
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x8088)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x8087)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x8086)))))
                   g8085)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x8091))))
                    (g8090
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8092
                             (letrec*
                              ((x-cnd8093
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8093
                                0
                                (letrec*
                                 ((x8094
                                   (letrec*
                                    ((x8095
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x8095)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x8094)))))))
                           g8092))))
                      (letrec*
                       ((g8096
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g8096))))
                   g8090)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8100))))
                    (g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8102
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8102))))
                   g8099)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x8104)))))
                   g8103)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8106
                        (letrec*
                         ((x8107
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x8107)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x8106)))))
                   g8105)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x8110))))
                    (g8109
                     (letrec*
                      ((x-cnd8111
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8111
                        #f
                        (letrec*
                         ((x-cnd8112
                           (letrec*
                            ((x8113
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x8113 k)))))
                         (if x-cnd8112
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8114
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x8114)))))))))
                   g8109)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x8116)))))
                   g8115)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x8121))))
                    (g8119
                     (letrec*
                      ((x8122
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x8122)))))
                   g8119)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8124
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8124))))
                   g8123)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x8128))))
                    (g8126
                     (letrec*
                      ((x8129
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x8129))))
                    (g8127
                     (letrec*
                      ((x-cnd8130
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8130
                        #t
                        (letrec*
                         ((x-cnd8131
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8131
                           (letrec*
                            ((g8132
                              (letrec*
                               ((x8134
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x8134))))
                             (g8133
                              (letrec*
                               ((x8135
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x8135)))))
                            g8133)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g8127)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x8138))))
                    (g8137
                     (letrec*
                      ((x-cnd8139
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8139
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8137)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8143
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8143))))
                    (g8141
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x8144))))
                    (g8142
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8145
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8145))))
                   g8142)))
               (caddar
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
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x8149)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x8148)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x8147)))))
                   g8146)))
               (newline (lambda () (letrec* ((g8150 #f)) g8150)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8153
                        (letrec*
                         ((x8154
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8154))))
                       (x8152
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8153 x8152)))))
                   g8151)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8159))))
                    (g8156
                     (letrec*
                      ((x8160
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8160))))
                    (g8157
                     (letrec*
                      ((x8161
                        (letrec*
                         ((x8162
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8162)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8161))))
                    (g8158
                     (letrec*
                      ((x-cnd8163
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8163
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8165
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8164
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8165 x8164)))))))
                   g8158)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x-cnd8167
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8167
                        a
                        (letrec*
                         ((x8168
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8168)))))))
                   g8166)))
               (image
                (lambda ()
                  (letrec*
                   ((g8169
                     (begin
                       (write '(funapp 1698 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1698 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1698 62))
                          (display "\n")
                          '())))))
                   g8169)))
               (image?
                (lambda (image7556)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8171
                        (begin
                          (write '(funapp 1703 39))
                          (display "\n")
                          (car image7556))))
                      (begin
                        (write '(funapp 1703 57))
                        (display "\n")
                        (eq?
                         x8171
                         (begin
                           (write '(funapp 1703 67))
                           (display "\n")
                           'image))))))
                   g8170)))
               (image/c
                (lambda (j7407 k7408 v7406)
                  (letrec*
                   ((g8172
                     (begin
                       (write '(funapp 1707 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1707 47))
                          (display "\n")
                          '())))))
                   g8172)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8173
                     (begin (write '(funapp 1708 57)) (display "\n") (image))))
                   g8173)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8174
                     (begin (write '(funapp 1709 60)) (display "\n") (image))))
                   g8174)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8175
                     (begin (write '(funapp 1711 54)) (display "\n") (image))))
                   g8175)))
               (posn
                (lambda (x7558 y7559)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((x8177
                        (letrec*
                         ((x8178
                           (begin
                             (write '(funapp 1719 34))
                             (display "\n")
                             (orig-cons
                              y7559
                              (begin
                                (write '(funapp 1719 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1720 26))
                           (display "\n")
                           (orig-cons x7558 x8178)))))
                      (begin
                        (write '(funapp 1721 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1721 33)) (display "\n") 'posn)
                         x8177)))))
                   g8176)))
               (posn?
                (lambda (posn7557)
                  (letrec*
                   ((g8179
                     (letrec*
                      ((x8180
                        (begin
                          (write '(funapp 1727 39))
                          (display "\n")
                          (car posn7557))))
                      (begin
                        (write '(funapp 1727 56))
                        (display "\n")
                        (eq?
                         x8180
                         (begin
                           (write '(funapp 1727 66))
                           (display "\n")
                           'posn))))))
                   g8179)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8181
                     (letrec*
                      ((x8182
                        (begin
                          (write '(funapp 1733 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1733 57))
                        (display "\n")
                        (orig-car x8182)))))
                   g8181)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8183
                     (letrec*
                      ((x8184
                        (letrec*
                         ((x8185
                           (begin
                             (write '(funapp 1741 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1741 60))
                           (display "\n")
                           (orig-cdr x8185)))))
                      (begin
                        (write '(funapp 1742 23))
                        (display "\n")
                        (orig-car x8184)))))
                   g8183)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8186
                     (letrec*
                      ((x-cnd8187
                        (letrec*
                         ((x8189
                           (begin
                             (write '(funapp 1751 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8188
                           (begin
                             (write '(funapp 1751 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1752 26))
                           (display "\n")
                           (= x8189 x8188)))))
                      (if x-cnd8187
                        (letrec*
                         ((x8191
                           (begin
                             (write '(funapp 1755 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8190
                           (begin
                             (write '(funapp 1755 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1756 26))
                           (display "\n")
                           (= x8191 x8190)))
                        #f))))
                   g8186)))
               (snake
                (lambda (dir7563 segs7564)
                  (letrec*
                   ((g8192
                     (letrec*
                      ((x8193
                        (letrec*
                         ((x8194
                           (begin
                             (write '(funapp 1766 34))
                             (display "\n")
                             (orig-cons
                              segs7564
                              (begin
                                (write '(funapp 1766 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1767 26))
                           (display "\n")
                           (orig-cons dir7563 x8194)))))
                      (begin
                        (write '(funapp 1768 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1768 33))
                           (display "\n")
                           'snake)
                         x8193)))))
                   g8192)))
               (snake?
                (lambda (snake7562)
                  (letrec*
                   ((g8195
                     (letrec*
                      ((x8196
                        (begin
                          (write '(funapp 1774 39))
                          (display "\n")
                          (car snake7562))))
                      (begin
                        (write '(funapp 1774 57))
                        (display "\n")
                        (eq?
                         x8196
                         (begin
                           (write '(funapp 1774 67))
                           (display "\n")
                           'snake))))))
                   g8195)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8197
                     (letrec*
                      ((x8198
                        (begin
                          (write '(funapp 1780 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1780 58))
                        (display "\n")
                        (orig-car x8198)))))
                   g8197)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8199
                     (letrec*
                      ((x8200
                        (letrec*
                         ((x8201
                           (begin
                             (write '(funapp 1788 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1788 61))
                           (display "\n")
                           (orig-cdr x8201)))))
                      (begin
                        (write '(funapp 1789 23))
                        (display "\n")
                        (orig-car x8200)))))
                   g8199)))
               (world
                (lambda (snake7568 food7569)
                  (letrec*
                   ((g8202
                     (letrec*
                      ((x8203
                        (letrec*
                         ((x8204
                           (begin
                             (write '(funapp 1798 34))
                             (display "\n")
                             (orig-cons
                              food7569
                              (begin
                                (write '(funapp 1798 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1799 26))
                           (display "\n")
                           (orig-cons snake7568 x8204)))))
                      (begin
                        (write '(funapp 1800 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1800 33))
                           (display "\n")
                           'world)
                         x8203)))))
                   g8202)))
               (world?
                (lambda (world7567)
                  (letrec*
                   ((g8205
                     (letrec*
                      ((x8206
                        (begin
                          (write '(funapp 1806 39))
                          (display "\n")
                          (car world7567))))
                      (begin
                        (write '(funapp 1806 57))
                        (display "\n")
                        (eq?
                         x8206
                         (begin
                           (write '(funapp 1806 67))
                           (display "\n")
                           'world))))))
                   g8205)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8207
                     (letrec*
                      ((x8208
                        (begin
                          (write '(funapp 1812 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1812 58))
                        (display "\n")
                        (orig-car x8208)))))
                   g8207)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8209
                     (letrec*
                      ((x8210
                        (letrec*
                         ((x8211
                           (begin
                             (write '(funapp 1820 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1820 61))
                           (display "\n")
                           (orig-cdr x8211)))))
                      (begin
                        (write '(funapp 1821 23))
                        (display "\n")
                        (orig-car x8210)))))
                   g8209)))
               (DIR/C
                (lambda (g7413 g7414 g7415)
                  (letrec*
                   ((g8212
                     (letrec*
                      ((x-cnd8213
                        (begin
                          (write '(funapp 1829 25))
                          (display "\n")
                          ((lambda (v7412)
                             (letrec*
                              ((g8214
                                (letrec*
                                 ((x-cnd8215
                                   (begin
                                     (write '(funapp 1833 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1833 48))
                                        (display "\n")
                                        'up)
                                      v7412))))
                                 (if x-cnd8215
                                   #t
                                   (letrec*
                                    ((x-cnd8216
                                      (begin
                                        (write '(funapp 1837 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1837 51))
                                           (display "\n")
                                           'down)
                                         v7412))))
                                    (if x-cnd8216
                                      #t
                                      (letrec*
                                       ((x-cnd8217
                                         (begin
                                           (write '(funapp 1841 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1841 54))
                                              (display "\n")
                                              'left)
                                            v7412))))
                                       (if x-cnd8217
                                         #t
                                         (begin
                                           (write '(funapp 1844 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1844 44))
                                              (display "\n")
                                              'right)
                                            v7412))))))))))
                              g8214))
                           g7415))))
                      (if x-cnd8213
                        g7415
                        (begin
                          (write '(blame g7413 1849 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7413)))))))
                   g8212)))
               (POSN/C
                (lambda (j7417 k7418 v7416)
                  (letrec*
                   ((g8218
                     (letrec*
                      ((checked7419
                        (letrec*
                         ((x8219
                           (letrec*
                            ((x8220
                              (begin
                                (write '(funapp 1869 37))
                                (display "\n")
                                (orig-cdr v7416))))
                            (begin
                              (write '(funapp 1870 29))
                              (display "\n")
                              (orig-car x8220)))))
                         (begin
                           (write '(funapp 1871 26))
                           (display "\n")
                           (real?/c j7417 k7418 x8219)))))
                      (letrec*
                       ((g8221
                         (letrec*
                          ((checked7420
                            (letrec*
                             ((x8222
                               (letrec*
                                ((x8223
                                  (letrec*
                                   ((x8224
                                     (begin
                                       (write '(funapp 1881 44))
                                       (display "\n")
                                       (orig-cdr v7416))))
                                   (begin
                                     (write '(funapp 1882 36))
                                     (display "\n")
                                     (orig-cdr x8224)))))
                                (begin
                                  (write '(funapp 1883 33))
                                  (display "\n")
                                  (orig-car x8223)))))
                             (begin
                               (write '(funapp 1884 30))
                               (display "\n")
                               (real?/c j7417 k7418 x8222)))))
                          (letrec*
                           ((g8225
                             (letrec*
                              ((x8226
                                (letrec*
                                 ((x8227
                                   (begin
                                     (write '(funapp 1890 42))
                                     (display "\n")
                                     (cons
                                      checked7420
                                      (begin
                                        (write '(funapp 1890 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1891 34))
                                   (display "\n")
                                   (cons checked7419 x8227)))))
                              (begin
                                (write '(funapp 1892 31))
                                (display "\n")
                                (cons posn x8226)))))
                           g8225))))
                       g8221))))
                   g8218)))
               (SNAKE/C
                (lambda (j7423 k7424 v7422)
                  (letrec*
                   ((g8228
                     (letrec*
                      ((checked7425
                        (letrec*
                         ((x8229
                           (letrec*
                            ((x8230
                              (begin
                                (write '(funapp 1905 37))
                                (display "\n")
                                (orig-cdr v7422))))
                            (begin
                              (write '(funapp 1906 29))
                              (display "\n")
                              (orig-car x8230)))))
                         (begin
                           (write '(funapp 1907 26))
                           (display "\n")
                           (DIR/C j7423 k7424 x8229)))))
                      (letrec*
                       ((g8231
                         (letrec*
                          ((checked7426
                            (letrec*
                             ((x8235
                               (letrec*
                                ((x8236
                                  (begin
                                    (write '(funapp 1915 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1916 33))
                                  (display "\n")
                                  (and/c cons?/c x8236))))
                              (x8232
                               (letrec*
                                ((x8233
                                  (letrec*
                                   ((x8234
                                     (begin
                                       (write '(funapp 1921 44))
                                       (display "\n")
                                       (orig-cdr v7422))))
                                   (begin
                                     (write '(funapp 1922 36))
                                     (display "\n")
                                     (orig-cdr x8234)))))
                                (begin
                                  (write '(funapp 1923 33))
                                  (display "\n")
                                  (orig-car x8233)))))
                             (begin
                               (write '(funapp 1924 30))
                               (display "\n")
                               (x8235 j7423 k7424 x8232)))))
                          (letrec*
                           ((g8237
                             (letrec*
                              ((x8238
                                (letrec*
                                 ((x8239
                                   (begin
                                     (write '(funapp 1930 42))
                                     (display "\n")
                                     (cons
                                      checked7426
                                      (begin
                                        (write '(funapp 1930 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1931 34))
                                   (display "\n")
                                   (cons checked7425 x8239)))))
                              (begin
                                (write '(funapp 1932 31))
                                (display "\n")
                                (cons snake x8238)))))
                           g8237))))
                       g8231))))
                   g8228)))
               (WORLD/C
                (lambda (j7429 k7430 v7428)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((checked7431
                        (letrec*
                         ((x8241
                           (letrec*
                            ((x8242
                              (begin
                                (write '(funapp 1945 37))
                                (display "\n")
                                (orig-cdr v7428))))
                            (begin
                              (write '(funapp 1946 29))
                              (display "\n")
                              (orig-car x8242)))))
                         (begin
                           (write '(funapp 1947 26))
                           (display "\n")
                           (SNAKE/C j7429 k7430 x8241)))))
                      (letrec*
                       ((g8243
                         (letrec*
                          ((checked7432
                            (letrec*
                             ((x8244
                               (letrec*
                                ((x8245
                                  (letrec*
                                   ((x8246
                                     (begin
                                       (write '(funapp 1957 44))
                                       (display "\n")
                                       (orig-cdr v7428))))
                                   (begin
                                     (write '(funapp 1958 36))
                                     (display "\n")
                                     (orig-cdr x8246)))))
                                (begin
                                  (write '(funapp 1959 33))
                                  (display "\n")
                                  (orig-car x8245)))))
                             (begin
                               (write '(funapp 1960 30))
                               (display "\n")
                               (POSN/C j7429 k7430 x8244)))))
                          (letrec*
                           ((g8247
                             (letrec*
                              ((x8248
                                (letrec*
                                 ((x8249
                                   (begin
                                     (write '(funapp 1966 42))
                                     (display "\n")
                                     (cons
                                      checked7432
                                      (begin
                                        (write '(funapp 1966 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1967 34))
                                   (display "\n")
                                   (cons checked7431 x8249)))))
                              (begin
                                (write '(funapp 1968 31))
                                (display "\n")
                                (cons world x8248)))))
                           g8247))))
                       g8243))))
                   g8240)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1975 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1976 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1978 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1979 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1980 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1982 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8251
                   (letrec*
                    ((x8252
                      (letrec*
                       ((x8253
                         (begin
                           (write '(funapp 1987 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1987 59))
                         (display "\n")
                         (cons x8253 empty)))))
                    (begin
                      (write '(funapp 1988 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1988 27)) (display "\n") 'right)
                       x8252))))
                  (x8250
                   (begin
                     (write '(funapp 1989 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1990 18))
                   (display "\n")
                   (world x8251 x8250))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x8255
                        (letrec*
                         ((x8256
                           (begin
                             (write '(funapp 1997 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1997 61))
                           (display "\n")
                           (car x8256)))))
                      (begin
                        (write '(funapp 1998 23))
                        (display "\n")
                        (head-collide? x8255)))))
                   g8254)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8257
                     (letrec*
                      ((val7263
                        (letrec*
                         ((x8258
                           (begin
                             (write '(funapp 2005 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 2005 63))
                           (display "\n")
                           (<= x8258 0)))))
                      (letrec*
                       ((g8259
                         (if val7263
                           val7263
                           (letrec*
                            ((val7264
                              (letrec*
                               ((x8260
                                 (begin
                                   (write '(funapp 2013 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 2014 32))
                                 (display "\n")
                                 (>= x8260 BOARD-WIDTH)))))
                            (letrec*
                             ((g8261
                               (if val7264
                                 val7264
                                 (letrec*
                                  ((val7265
                                    (letrec*
                                     ((x8262
                                       (begin
                                         (write '(funapp 2022 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 2023 38))
                                       (display "\n")
                                       (<= x8262 0)))))
                                  (letrec*
                                   ((g8263
                                     (if val7265
                                       val7265
                                       (letrec*
                                        ((x8264
                                          (begin
                                            (write '(funapp 2029 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 2030 41))
                                          (display "\n")
                                          (>= x8264 BOARD-HEIGHT))))))
                                   g8263)))))
                             g8261)))))
                       g8259))))
                   g8257)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((x8268
                        (letrec*
                         ((x8269
                           (begin
                             (write '(funapp 2040 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2040 67))
                           (display "\n")
                           (car x8269))))
                       (x8266
                        (letrec*
                         ((x8267
                           (begin
                             (write '(funapp 2042 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2042 61))
                           (display "\n")
                           (cdr x8267)))))
                      (begin
                        (write '(funapp 2043 23))
                        (display "\n")
                        (segs-self-collide? x8268 x8266)))))
                   g8265)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8270
                     (letrec*
                      ((x-cnd8271
                        (begin
                          (write '(funapp 2050 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8271
                        (letrec* ((g8272 #f)) g8272)
                        (letrec*
                         ((g8273
                           (letrec*
                            ((x8276
                              (letrec*
                               ((x8277
                                 (begin
                                   (write '(funapp 2057 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2057 61))
                                 (display "\n")
                                 (posn=? x8277 h))))
                             (x8274
                              (letrec*
                               ((x8275
                                 (begin
                                   (write '(funapp 2060 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2061 32))
                                 (display "\n")
                                 (segs-self-collide? h x8275)))))
                            (begin
                              (write '(funapp 2062 29))
                              (display "\n")
                              (or x8276 x8274)))))
                         g8273)))))
                   g8270)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8278
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2070 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8279
                         (letrec*
                          ((x-cnd8280
                            (begin
                              (write '(funapp 2074 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8280
                            (letrec* ((g8281 empty)) g8281)
                            (letrec*
                             ((g8282
                               (letrec*
                                ((x8284
                                  (begin
                                    (write '(funapp 2080 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8283
                                  (begin
                                    (write '(funapp 2080 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2081 33))
                                  (display "\n")
                                  (cons x8284 x8283)))))
                             g8282)))))
                       g8279))))
                   g8278)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8285
                     (letrec*
                      ((x-cnd8286
                        (begin
                          (write '(funapp 2090 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2090 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8286
                        (letrec*
                         ((g8287
                           (letrec*
                            ((x8289
                              (letrec*
                               ((x8290
                                 (begin
                                   (write '(funapp 2096 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2096 63))
                                 (display "\n")
                                 (add1 x8290))))
                             (x8288
                              (begin
                                (write '(funapp 2097 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2098 29))
                              (display "\n")
                              (posn x8289 x8288)))))
                         g8287)
                        (letrec*
                         ((x-cnd8291
                           (begin
                             (write '(funapp 2101 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2101 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8291
                           (letrec*
                            ((g8292
                              (letrec*
                               ((x8294
                                 (letrec*
                                  ((x8295
                                    (begin
                                      (write '(funapp 2107 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2107 66))
                                    (display "\n")
                                    (sub1 x8295))))
                                (x8293
                                 (begin
                                   (write '(funapp 2108 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2109 32))
                                 (display "\n")
                                 (posn x8294 x8293)))))
                            g8292)
                           (letrec*
                            ((x-cnd8296
                              (begin
                                (write '(funapp 2112 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2112 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8296
                              (letrec*
                               ((g8297
                                 (letrec*
                                  ((x8300
                                    (begin
                                      (write '(funapp 2117 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8298
                                    (letrec*
                                     ((x8299
                                       (begin
                                         (write '(funapp 2120 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2121 38))
                                       (display "\n")
                                       (sub1 x8299)))))
                                  (begin
                                    (write '(funapp 2122 35))
                                    (display "\n")
                                    (posn x8300 x8298)))))
                               g8297)
                              (letrec*
                               ((g8301
                                 (letrec*
                                  ((x8304
                                    (begin
                                      (write '(funapp 2127 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8302
                                    (letrec*
                                     ((x8303
                                       (begin
                                         (write '(funapp 2130 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2131 38))
                                       (display "\n")
                                       (add1 x8303)))))
                                  (begin
                                    (write '(funapp 2132 35))
                                    (display "\n")
                                    (posn x8304 x8302)))))
                               g8301)))))))))
                   g8285)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2140 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8306
                         (letrec*
                          ((x8307
                            (letrec*
                             ((x8310
                               (letrec*
                                ((x8311
                                  (letrec*
                                   ((x8312
                                     (begin
                                       (write '(funapp 2150 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2151 36))
                                     (display "\n")
                                     (car x8312)))))
                                (begin
                                  (write '(funapp 2152 33))
                                  (display "\n")
                                  (next-head x8311 d))))
                              (x8308
                               (letrec*
                                ((x8309
                                  (begin
                                    (write '(funapp 2155 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2156 33))
                                  (display "\n")
                                  (cut-tail x8309)))))
                             (begin
                               (write '(funapp 2157 30))
                               (display "\n")
                               (cons x8310 x8308)))))
                          (begin
                            (write '(funapp 2158 27))
                            (display "\n")
                            (snake d x8307)))))
                       g8306))))
                   g8305)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2166 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8314
                         (letrec*
                          ((x8315
                            (letrec*
                             ((x8317
                               (letrec*
                                ((x8318
                                  (letrec*
                                   ((x8319
                                     (begin
                                       (write '(funapp 2176 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2177 36))
                                     (display "\n")
                                     (car x8319)))))
                                (begin
                                  (write '(funapp 2178 33))
                                  (display "\n")
                                  (next-head x8318 d))))
                              (x8316
                               (begin
                                 (write '(funapp 2179 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2180 30))
                               (display "\n")
                               (cons x8317 x8316)))))
                          (begin
                            (write '(funapp 2181 27))
                            (display "\n")
                            (snake d x8315)))))
                       g8314))))
                   g8313)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8320
                     (letrec*
                      ((x-cnd8321
                        (begin
                          (write '(funapp 2189 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8321
                        (letrec*
                         ((g8322
                           (begin
                             (write '(funapp 2191 42))
                             (display "\n")
                             (snake-eat w))))
                         g8322)
                        (letrec*
                         ((g8323
                           (letrec*
                            ((x8325
                              (letrec*
                               ((x8326
                                 (begin
                                   (write '(funapp 2197 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2198 32))
                                 (display "\n")
                                 (snake-slither x8326))))
                             (x8324
                              (begin
                                (write '(funapp 2199 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2200 29))
                              (display "\n")
                              (world x8325 x8324)))))
                         g8323)))))
                   g8320)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8327
                     (letrec*
                      ((x8331
                        (begin
                          (write '(funapp 2208 31))
                          (display "\n")
                          (world-food w)))
                       (x8328
                        (letrec*
                         ((x8329
                           (letrec*
                            ((x8330
                              (begin
                                (write '(funapp 2213 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2214 29))
                              (display "\n")
                              (snake-segs x8330)))))
                         (begin
                           (write '(funapp 2215 26))
                           (display "\n")
                           (car x8329)))))
                      (begin
                        (write '(funapp 2216 23))
                        (display "\n")
                        (posn=? x8331 x8328)))))
                   g8327)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8332
                     (letrec*
                      ((x8333
                        (begin
                          (write '(funapp 2222 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2222 58))
                        (display "\n")
                        (snake dir x8333)))))
                   g8332)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8334
                     (letrec*
                      ((x8336
                        (letrec*
                         ((x8337
                           (begin
                             (write '(funapp 2231 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2232 26))
                           (display "\n")
                           (snake-change-direction x8337 dir))))
                       (x8335
                        (begin
                          (write '(funapp 2233 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2234 23))
                        (display "\n")
                        (world x8336 x8335)))))
                   g8334)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8338
                     (letrec*
                      ((x8342
                        (letrec*
                         ((x8343
                           (begin
                             (write '(funapp 2242 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2242 60))
                           (display "\n")
                           (snake-grow x8343))))
                       (x8339
                        (letrec*
                         ((x8341
                           (begin
                             (write '(funapp 2245 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8340
                           (begin
                             (write '(funapp 2245 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2246 26))
                           (display "\n")
                           (posn x8341 x8340)))))
                      (begin
                        (write '(funapp 2247 23))
                        (display "\n")
                        (world x8342 x8339)))))
                   g8338)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8344
                     (letrec*
                      ((x-cnd8345
                        (begin
                          (write '(funapp 2254 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8345
                        (letrec*
                         ((g8346
                           (begin
                             (write '(funapp 2256 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2256 61))
                                (display "\n")
                                'up)))))
                         g8346)
                        (letrec*
                         ((x-cnd8347
                           (begin
                             (write '(funapp 2258 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8347
                           (letrec*
                            ((g8348
                              (begin
                                (write '(funapp 2260 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2260 64))
                                   (display "\n")
                                   'down)))))
                            g8348)
                           (letrec*
                            ((x-cnd8349
                              (begin
                                (write '(funapp 2262 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8349
                              (letrec*
                               ((g8350
                                 (begin
                                   (write '(funapp 2265 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2265 59))
                                      (display "\n")
                                      'left)))))
                               g8350)
                              (letrec*
                               ((x-cnd8351
                                 (begin
                                   (write '(funapp 2268 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8351
                                 (letrec*
                                  ((g8352
                                    (begin
                                      (write '(funapp 2271 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2271 62))
                                         (display "\n")
                                         'right)))))
                                  g8352)
                                 (letrec* ((g8353 w)) g8353)))))))))))
                   g8344)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8354
                     (letrec*
                      ((val7266
                        (letrec*
                         ((x8355
                           (begin
                             (write '(funapp 2282 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2283 26))
                           (display "\n")
                           (snake-wall-collide? x8355)))))
                      (letrec*
                       ((g8356
                         (if val7266
                           val7266
                           (letrec*
                            ((x8357
                              (begin
                                (write '(funapp 2289 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2290 29))
                              (display "\n")
                              (snake-self-collide? x8357))))))
                       g8356))))
                   g8354)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8358
                     (letrec*
                      ((x8361
                        (begin
                          (write '(funapp 2298 31))
                          (display "\n")
                          (world-snake w)))
                       (x8359
                        (letrec*
                         ((x8360
                           (begin
                             (write '(funapp 2301 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2302 26))
                           (display "\n")
                           (food+scene x8360 BACKGROUND)))))
                      (begin
                        (write '(funapp 2303 23))
                        (display "\n")
                        (snake+scene x8361 x8359)))))
                   g8358)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8362
                     (letrec*
                      ((x8364
                        (begin
                          (write '(funapp 2310 31))
                          (display "\n")
                          (posn-x f)))
                       (x8363
                        (begin
                          (write '(funapp 2310 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2311 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8364 x8363 scn)))))
                   g8362)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8365
                     (letrec*
                      ((x8368
                        (begin
                          (write '(funapp 2318 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8366
                        (letrec*
                         ((x8367
                           (begin
                             (write '(funapp 2321 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2322 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8367)))))
                      (begin
                        (write '(funapp 2323 23))
                        (display "\n")
                        (place-image img x8368 x8366 scn)))))
                   g8365)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8369
                     (letrec*
                      ((x8370
                        (begin
                          (write '(funapp 2330 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2331 23))
                        (display "\n")
                        (segments+scene x8370 scn)))))
                   g8369)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8371
                     (letrec*
                      ((x-cnd8372
                        (begin
                          (write '(funapp 2338 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8372
                        (letrec* ((g8373 scn)) g8373)
                        (letrec*
                         ((g8374
                           (letrec*
                            ((x8377
                              (begin
                                (write '(funapp 2344 37))
                                (display "\n")
                                (cdr segs)))
                             (x8375
                              (letrec*
                               ((x8376
                                 (begin
                                   (write '(funapp 2347 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2348 32))
                                 (display "\n")
                                 (segment+scene x8376 scn)))))
                            (begin
                              (write '(funapp 2349 29))
                              (display "\n")
                              (segments+scene x8377 x8375)))))
                         g8374)))))
                   g8371)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8378
                     (letrec*
                      ((x8380
                        (begin
                          (write '(funapp 2357 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8379
                        (begin
                          (write '(funapp 2357 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2358 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8380 x8379 scn)))))
                   g8378))))
              (letrec*
               ((g8381
                 (begin
                   (write '(funapp 2362 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2363 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8392
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2367 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2367 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2367 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2367 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8393
                              (begin
                                (write '(funapp 2370 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8394
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8395
                                           (letrec*
                                            ((x8396
                                              (letrec*
                                               ((x8398
                                                 (begin
                                                   (write '(funapp 2379 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8397
                                                 (begin
                                                   (write '(funapp 2380 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2381 42))
                                                 (display "\n")
                                                 (f7440 x8398 x8397)))))
                                            (begin
                                              (write '(funapp 2382 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8396)))))
                                         g8395))))
                                    g8394))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8393)))
                         (x8387
                          (letrec*
                           ((x8388
                             (letrec*
                              ((x8391 (input))
                               (x8389
                                (letrec*
                                 ((x8390 (input)))
                                 (begin
                                   (write '(funapp 2395 56))
                                   (display "\n")
                                   (cons
                                    x8390
                                    (begin
                                      (write '(funapp 2395 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2396 27))
                                (display "\n")
                                (cons x8391 x8389)))))
                           (begin
                             (write '(funapp 2397 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2397 29))
                                (display "\n")
                                'posn)
                              x8388))))
                         (x8382
                          (letrec*
                           ((x8383
                             (letrec*
                              ((x8386 (input))
                               (x8384
                                (letrec*
                                 ((x8385 (input)))
                                 (begin
                                   (write '(funapp 2404 56))
                                   (display "\n")
                                   (cons
                                    x8385
                                    (begin
                                      (write '(funapp 2404 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2405 27))
                                (display "\n")
                                (cons x8386 x8384)))))
                           (begin
                             (write '(funapp 2406 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2406 29))
                                (display "\n")
                                'posn)
                              x8383)))))
                        (begin
                          (write '(funapp 2407 21))
                          (display "\n")
                          (x8392 x8387 x8382)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2409 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2409 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2409 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2409 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8399
                           (begin
                             (write '(funapp 2410 38))
                             (display "\n")
                             (WORLD/C xj7441 xk7442 WORLD))))
                         g8399))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2412 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2412 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2412 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2412 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8400
                           (begin
                             (write '(funapp 2414 30))
                             (display "\n")
                             (image/c xj7443 xk7444 BACKGROUND))))
                         g8400))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2417 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2417 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2417 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2417 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8401
                           (begin
                             (write '(funapp 2419 30))
                             (display "\n")
                             (image/c xj7445 xk7446 FOOD-IMAGE))))
                         g8401))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2422 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2422 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2422 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2422 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8402
                           (begin
                             (write '(funapp 2424 30))
                             (display "\n")
                             (image/c xj7447 xk7448 SEGMENT-IMAGE))))
                         g8402))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2427 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2427 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2427 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2427 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8403
                           (begin
                             (write '(funapp 2429 30))
                             (display "\n")
                             (real?/c xj7449 xk7450 GRID-SIZE))))
                         g8403))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2432 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2432 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2432 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2432 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8404
                           (begin
                             (write '(funapp 2434 30))
                             (display "\n")
                             (real?/c xj7451 xk7452 BOARD-HEIGHT-PIXELS))))
                         g8404))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2437 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2437 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2437 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2437 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8405
                           (begin
                             (write '(funapp 2439 30))
                             (display "\n")
                             (real?/c xj7453 xk7454 BOARD-WIDTH))))
                         g8405))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2442 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2442 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2442 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2442 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8406
                           (begin
                             (write '(funapp 2444 30))
                             (display "\n")
                             (real?/c xj7455 xk7456 BOARD-HEIGHT))))
                         g8406))
                       (letrec*
                        ((x8412
                          (letrec*
                           ((xj7457
                             (begin
                               (write '(funapp 2449 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2449 37))
                                  (display "\n")
                                  'module))))
                            (xk7458
                             (begin
                               (write '(funapp 2449 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2449 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8413
                              (begin
                                (write '(funapp 2452 27))
                                (display "\n")
                                ((lambda (j7460 k7461 f7462)
                                   (letrec*
                                    ((g8414
                                      (lambda (g7459)
                                        (letrec*
                                         ((g8415
                                           (letrec*
                                            ((x8416
                                              (letrec*
                                               ((x8417
                                                 (begin
                                                   (write '(funapp 2461 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7460
                                                    k7461
                                                    g7459))))
                                               (begin
                                                 (write '(funapp 2462 42))
                                                 (display "\n")
                                                 (f7462 x8417)))))
                                            (begin
                                              (write '(funapp 2463 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7460
                                               k7461
                                               x8416)))))
                                         g8415))))
                                    g8414))
                                 xj7457
                                 xk7458
                                 snake-wall-collide?))))
                            g8413)))
                         (x8407
                          (letrec*
                           ((x8408
                             (letrec*
                              ((x8411 (input))
                               (x8409
                                (letrec*
                                 ((x8410 (input)))
                                 (begin
                                   (write '(funapp 2476 56))
                                   (display "\n")
                                   (cons
                                    x8410
                                    (begin
                                      (write '(funapp 2476 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2477 27))
                                (display "\n")
                                (cons x8411 x8409)))))
                           (begin
                             (write '(funapp 2478 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2478 29))
                                (display "\n")
                                'snake)
                              x8408)))))
                        (begin
                          (write '(funapp 2479 21))
                          (display "\n")
                          (x8412 x8407)))
                       (letrec*
                        ((x8423
                          (letrec*
                           ((xj7463
                             (begin
                               (write '(funapp 2483 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2483 37))
                                  (display "\n")
                                  'module))))
                            (xk7464
                             (begin
                               (write '(funapp 2483 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2483 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8424
                              (begin
                                (write '(funapp 2486 27))
                                (display "\n")
                                ((lambda (j7466 k7467 f7468)
                                   (letrec*
                                    ((g8425
                                      (lambda (g7465)
                                        (letrec*
                                         ((g8426
                                           (letrec*
                                            ((x8427
                                              (letrec*
                                               ((x8428
                                                 (begin
                                                   (write '(funapp 2495 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7466
                                                    k7467
                                                    g7465))))
                                               (begin
                                                 (write '(funapp 2496 42))
                                                 (display "\n")
                                                 (f7468 x8428)))))
                                            (begin
                                              (write '(funapp 2497 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7466
                                               k7467
                                               x8427)))))
                                         g8426))))
                                    g8425))
                                 xj7463
                                 xk7464
                                 snake-self-collide?))))
                            g8424)))
                         (x8418
                          (letrec*
                           ((x8419
                             (letrec*
                              ((x8422 (input))
                               (x8420
                                (letrec*
                                 ((x8421 (input)))
                                 (begin
                                   (write '(funapp 2510 56))
                                   (display "\n")
                                   (cons
                                    x8421
                                    (begin
                                      (write '(funapp 2510 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2511 27))
                                (display "\n")
                                (cons x8422 x8420)))))
                           (begin
                             (write '(funapp 2512 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2512 29))
                                (display "\n")
                                'snake)
                              x8419)))))
                        (begin
                          (write '(funapp 2513 21))
                          (display "\n")
                          (x8423 x8418)))
                       (letrec*
                        ((x8430
                          (letrec*
                           ((xj7469
                             (begin
                               (write '(funapp 2517 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2517 37))
                                  (display "\n")
                                  'module))))
                            (xk7470
                             (begin
                               (write '(funapp 2517 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2517 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8431
                              (begin
                                (write '(funapp 2520 27))
                                (display "\n")
                                ((lambda (j7472 k7473 f7474)
                                   (letrec*
                                    ((g8432
                                      (lambda (g7471)
                                        (letrec*
                                         ((g8433
                                           (letrec*
                                            ((x8438
                                              (begin
                                                (write '(funapp 2527 47))
                                                (display "\n")
                                                (listof POSN/C)))
                                             (x8434
                                              (letrec*
                                               ((x8435
                                                 (letrec*
                                                  ((x8436
                                                    (letrec*
                                                     ((x8437
                                                       (begin
                                                         (write
                                                          '(funapp 2534 56))
                                                         (display "\n")
                                                         (listof POSN/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 2535 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x8437)))))
                                                  (begin
                                                    (write '(funapp 2536 45))
                                                    (display "\n")
                                                    (x8436
                                                     j7472
                                                     k7473
                                                     g7471)))))
                                               (begin
                                                 (write '(funapp 2537 42))
                                                 (display "\n")
                                                 (f7474 x8435)))))
                                            (begin
                                              (write '(funapp 2538 39))
                                              (display "\n")
                                              (x8438 j7472 k7473 x8434)))))
                                         g8433))))
                                    g8432))
                                 xj7469
                                 xk7470
                                 cut-tail))))
                            g8431)))
                         (x8429 (input)))
                        (begin
                          (write '(funapp 2546 21))
                          (display "\n")
                          (x8430 x8429)))
                       (letrec*
                        ((x8444
                          (letrec*
                           ((xj7475
                             (begin
                               (write '(funapp 2550 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2550 37))
                                  (display "\n")
                                  'module))))
                            (xk7476
                             (begin
                               (write '(funapp 2550 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2550 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8445
                              (begin
                                (write '(funapp 2553 27))
                                (display "\n")
                                ((lambda (j7478 k7479 f7480)
                                   (letrec*
                                    ((g8446
                                      (lambda (g7477)
                                        (letrec*
                                         ((g8447
                                           (letrec*
                                            ((x8448
                                              (letrec*
                                               ((x8449
                                                 (begin
                                                   (write '(funapp 2562 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7478
                                                    k7479
                                                    g7477))))
                                               (begin
                                                 (write '(funapp 2563 42))
                                                 (display "\n")
                                                 (f7480 x8449)))))
                                            (begin
                                              (write '(funapp 2564 39))
                                              (display "\n")
                                              (SNAKE/C j7478 k7479 x8448)))))
                                         g8447))))
                                    g8446))
                                 xj7475
                                 xk7476
                                 snake-slither))))
                            g8445)))
                         (x8439
                          (letrec*
                           ((x8440
                             (letrec*
                              ((x8443 (input))
                               (x8441
                                (letrec*
                                 ((x8442 (input)))
                                 (begin
                                   (write '(funapp 2577 56))
                                   (display "\n")
                                   (cons
                                    x8442
                                    (begin
                                      (write '(funapp 2577 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2578 27))
                                (display "\n")
                                (cons x8443 x8441)))))
                           (begin
                             (write '(funapp 2579 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2579 29))
                                (display "\n")
                                'snake)
                              x8440)))))
                        (begin
                          (write '(funapp 2580 21))
                          (display "\n")
                          (x8444 x8439)))
                       (letrec*
                        ((x8455
                          (letrec*
                           ((xj7481
                             (begin
                               (write '(funapp 2584 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2584 37))
                                  (display "\n")
                                  'module))))
                            (xk7482
                             (begin
                               (write '(funapp 2584 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2584 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8456
                              (begin
                                (write '(funapp 2587 27))
                                (display "\n")
                                ((lambda (j7484 k7485 f7486)
                                   (letrec*
                                    ((g8457
                                      (lambda (g7483)
                                        (letrec*
                                         ((g8458
                                           (letrec*
                                            ((x8459
                                              (letrec*
                                               ((x8460
                                                 (begin
                                                   (write '(funapp 2596 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7484
                                                    k7485
                                                    g7483))))
                                               (begin
                                                 (write '(funapp 2597 42))
                                                 (display "\n")
                                                 (f7486 x8460)))))
                                            (begin
                                              (write '(funapp 2598 39))
                                              (display "\n")
                                              (SNAKE/C j7484 k7485 x8459)))))
                                         g8458))))
                                    g8457))
                                 xj7481
                                 xk7482
                                 snake-grow))))
                            g8456)))
                         (x8450
                          (letrec*
                           ((x8451
                             (letrec*
                              ((x8454 (input))
                               (x8452
                                (letrec*
                                 ((x8453 (input)))
                                 (begin
                                   (write '(funapp 2611 56))
                                   (display "\n")
                                   (cons
                                    x8453
                                    (begin
                                      (write '(funapp 2611 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2612 27))
                                (display "\n")
                                (cons x8454 x8452)))))
                           (begin
                             (write '(funapp 2613 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2613 29))
                                (display "\n")
                                'snake)
                              x8451)))))
                        (begin
                          (write '(funapp 2614 21))
                          (display "\n")
                          (x8455 x8450)))
                       (letrec*
                        ((x8475
                          (letrec*
                           ((xj7487
                             (begin
                               (write '(funapp 2618 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2618 37))
                                  (display "\n")
                                  'module))))
                            (xk7488
                             (begin
                               (write '(funapp 2618 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2618 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8476
                              (begin
                                (write '(funapp 2621 27))
                                (display "\n")
                                ((lambda (j7491 k7492 f7493)
                                   (letrec*
                                    ((g8477
                                      (lambda (g7489 g7490)
                                        (letrec*
                                         ((g8478
                                           (letrec*
                                            ((x8479
                                              (letrec*
                                               ((x8481
                                                 (begin
                                                   (write '(funapp 2630 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7491
                                                    k7492
                                                    g7489)))
                                                (x8480
                                                 (begin
                                                   (write '(funapp 2631 50))
                                                   (display "\n")
                                                   (DIR/C j7491 k7492 g7490))))
                                               (begin
                                                 (write '(funapp 2632 42))
                                                 (display "\n")
                                                 (f7493 x8481 x8480)))))
                                            (begin
                                              (write '(funapp 2633 39))
                                              (display "\n")
                                              (WORLD/C j7491 k7492 x8479)))))
                                         g8478))))
                                    g8477))
                                 xj7487
                                 xk7488
                                 world-change-dir))))
                            g8476)))
                         (x8462
                          (letrec*
                           ((x8463
                             (letrec*
                              ((x8470
                                (letrec*
                                 ((x8471
                                   (letrec*
                                    ((x8474 (input))
                                     (x8472
                                      (letrec*
                                       ((x8473 (input)))
                                       (begin
                                         (write '(funapp 2652 36))
                                         (display "\n")
                                         (cons
                                          x8473
                                          (begin
                                            (write '(funapp 2652 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2653 33))
                                      (display "\n")
                                      (cons x8474 x8472)))))
                                 (begin
                                   (write '(funapp 2654 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2654 35))
                                      (display "\n")
                                      'snake)
                                    x8471))))
                               (x8464
                                (letrec*
                                 ((x8465
                                   (letrec*
                                    ((x8466
                                      (letrec*
                                       ((x8469 (input))
                                        (x8467
                                         (letrec*
                                          ((x8468 (input)))
                                          (begin
                                            (write '(funapp 2665 39))
                                            (display "\n")
                                            (cons
                                             x8468
                                             (begin
                                               (write '(funapp 2665 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2666 36))
                                         (display "\n")
                                         (cons x8469 x8467)))))
                                    (begin
                                      (write '(funapp 2667 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2667 38))
                                         (display "\n")
                                         'posn)
                                       x8466)))))
                                 (begin
                                   (write '(funapp 2668 30))
                                   (display "\n")
                                   (cons
                                    x8465
                                    (begin
                                      (write '(funapp 2668 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2669 27))
                                (display "\n")
                                (cons x8470 x8464)))))
                           (begin
                             (write '(funapp 2670 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2670 29))
                                (display "\n")
                                'world)
                              x8463))))
                         (x8461 (input)))
                        (begin
                          (write '(funapp 2672 21))
                          (display "\n")
                          (x8475 x8462 x8461)))
                       (letrec*
                        ((x8495
                          (letrec*
                           ((xj7494
                             (begin
                               (write '(funapp 2676 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2676 37))
                                  (display "\n")
                                  'module))))
                            (xk7495
                             (begin
                               (write '(funapp 2676 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2676 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8496
                              (begin
                                (write '(funapp 2679 27))
                                (display "\n")
                                ((lambda (j7497 k7498 f7499)
                                   (letrec*
                                    ((g8497
                                      (lambda (g7496)
                                        (letrec*
                                         ((g8498
                                           (letrec*
                                            ((x8499
                                              (letrec*
                                               ((x8500
                                                 (begin
                                                   (write '(funapp 2688 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7497
                                                    k7498
                                                    g7496))))
                                               (begin
                                                 (write '(funapp 2689 42))
                                                 (display "\n")
                                                 (f7499 x8500)))))
                                            (begin
                                              (write '(funapp 2690 39))
                                              (display "\n")
                                              (WORLD/C j7497 k7498 x8499)))))
                                         g8498))))
                                    g8497))
                                 xj7494
                                 xk7495
                                 world->world))))
                            g8496)))
                         (x8482
                          (letrec*
                           ((x8483
                             (letrec*
                              ((x8490
                                (letrec*
                                 ((x8491
                                   (letrec*
                                    ((x8494 (input))
                                     (x8492
                                      (letrec*
                                       ((x8493 (input)))
                                       (begin
                                         (write '(funapp 2709 36))
                                         (display "\n")
                                         (cons
                                          x8493
                                          (begin
                                            (write '(funapp 2709 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2710 33))
                                      (display "\n")
                                      (cons x8494 x8492)))))
                                 (begin
                                   (write '(funapp 2711 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2711 35))
                                      (display "\n")
                                      'snake)
                                    x8491))))
                               (x8484
                                (letrec*
                                 ((x8485
                                   (letrec*
                                    ((x8486
                                      (letrec*
                                       ((x8489 (input))
                                        (x8487
                                         (letrec*
                                          ((x8488 (input)))
                                          (begin
                                            (write '(funapp 2722 39))
                                            (display "\n")
                                            (cons
                                             x8488
                                             (begin
                                               (write '(funapp 2722 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2723 36))
                                         (display "\n")
                                         (cons x8489 x8487)))))
                                    (begin
                                      (write '(funapp 2724 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2724 38))
                                         (display "\n")
                                         'posn)
                                       x8486)))))
                                 (begin
                                   (write '(funapp 2725 30))
                                   (display "\n")
                                   (cons
                                    x8485
                                    (begin
                                      (write '(funapp 2725 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2726 27))
                                (display "\n")
                                (cons x8490 x8484)))))
                           (begin
                             (write '(funapp 2727 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2727 29))
                                (display "\n")
                                'world)
                              x8483)))))
                        (begin
                          (write '(funapp 2728 21))
                          (display "\n")
                          (x8495 x8482)))
                       (letrec*
                        ((x8515
                          (letrec*
                           ((xj7500
                             (begin
                               (write '(funapp 2732 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2732 37))
                                  (display "\n")
                                  'module))))
                            (xk7501
                             (begin
                               (write '(funapp 2732 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2732 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8516
                              (begin
                                (write '(funapp 2735 27))
                                (display "\n")
                                ((lambda (j7504 k7505 f7506)
                                   (letrec*
                                    ((g8517
                                      (lambda (g7502 g7503)
                                        (letrec*
                                         ((g8518
                                           (letrec*
                                            ((x8519
                                              (letrec*
                                               ((x8521
                                                 (begin
                                                   (write '(funapp 2744 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7504
                                                    k7505
                                                    g7502)))
                                                (x8520
                                                 (begin
                                                   (write '(funapp 2746 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7504
                                                    k7505
                                                    g7503))))
                                               (begin
                                                 (write '(funapp 2747 42))
                                                 (display "\n")
                                                 (f7506 x8521 x8520)))))
                                            (begin
                                              (write '(funapp 2748 39))
                                              (display "\n")
                                              (WORLD/C j7504 k7505 x8519)))))
                                         g8518))))
                                    g8517))
                                 xj7500
                                 xk7501
                                 handle-key))))
                            g8516)))
                         (x8502
                          (letrec*
                           ((x8503
                             (letrec*
                              ((x8510
                                (letrec*
                                 ((x8511
                                   (letrec*
                                    ((x8514 (input))
                                     (x8512
                                      (letrec*
                                       ((x8513 (input)))
                                       (begin
                                         (write '(funapp 2767 36))
                                         (display "\n")
                                         (cons
                                          x8513
                                          (begin
                                            (write '(funapp 2767 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2768 33))
                                      (display "\n")
                                      (cons x8514 x8512)))))
                                 (begin
                                   (write '(funapp 2769 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2769 35))
                                      (display "\n")
                                      'snake)
                                    x8511))))
                               (x8504
                                (letrec*
                                 ((x8505
                                   (letrec*
                                    ((x8506
                                      (letrec*
                                       ((x8509 (input))
                                        (x8507
                                         (letrec*
                                          ((x8508 (input)))
                                          (begin
                                            (write '(funapp 2780 39))
                                            (display "\n")
                                            (cons
                                             x8508
                                             (begin
                                               (write '(funapp 2780 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2781 36))
                                         (display "\n")
                                         (cons x8509 x8507)))))
                                    (begin
                                      (write '(funapp 2782 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2782 38))
                                         (display "\n")
                                         'posn)
                                       x8506)))))
                                 (begin
                                   (write '(funapp 2783 30))
                                   (display "\n")
                                   (cons
                                    x8505
                                    (begin
                                      (write '(funapp 2783 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2784 27))
                                (display "\n")
                                (cons x8510 x8504)))))
                           (begin
                             (write '(funapp 2785 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2785 29))
                                (display "\n")
                                'world)
                              x8503))))
                         (x8501 (input)))
                        (begin
                          (write '(funapp 2787 21))
                          (display "\n")
                          (x8515 x8502 x8501)))
                       (letrec*
                        ((x8535
                          (letrec*
                           ((xj7507
                             (begin
                               (write '(funapp 2791 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2791 37))
                                  (display "\n")
                                  'module))))
                            (xk7508
                             (begin
                               (write '(funapp 2791 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2791 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8536
                              (begin
                                (write '(funapp 2794 27))
                                (display "\n")
                                ((lambda (j7510 k7511 f7512)
                                   (letrec*
                                    ((g8537
                                      (lambda (g7509)
                                        (letrec*
                                         ((g8538
                                           (letrec*
                                            ((x8539
                                              (letrec*
                                               ((x8540
                                                 (begin
                                                   (write '(funapp 2803 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7510
                                                    k7511
                                                    g7509))))
                                               (begin
                                                 (write '(funapp 2804 42))
                                                 (display "\n")
                                                 (f7512 x8540)))))
                                            (begin
                                              (write '(funapp 2805 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7510
                                               k7511
                                               x8539)))))
                                         g8538))))
                                    g8537))
                                 xj7507
                                 xk7508
                                 game-over?))))
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
                                         (write '(funapp 2824 36))
                                         (display "\n")
                                         (cons
                                          x8533
                                          (begin
                                            (write '(funapp 2824 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2825 33))
                                      (display "\n")
                                      (cons x8534 x8532)))))
                                 (begin
                                   (write '(funapp 2826 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2826 35))
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
                                            (write '(funapp 2837 39))
                                            (display "\n")
                                            (cons
                                             x8528
                                             (begin
                                               (write '(funapp 2837 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2838 36))
                                         (display "\n")
                                         (cons x8529 x8527)))))
                                    (begin
                                      (write '(funapp 2839 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2839 38))
                                         (display "\n")
                                         'posn)
                                       x8526)))))
                                 (begin
                                   (write '(funapp 2840 30))
                                   (display "\n")
                                   (cons
                                    x8525
                                    (begin
                                      (write '(funapp 2840 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2841 27))
                                (display "\n")
                                (cons x8530 x8524)))))
                           (begin
                             (write '(funapp 2842 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2842 29))
                                (display "\n")
                                'world)
                              x8523)))))
                        (begin
                          (write '(funapp 2843 21))
                          (display "\n")
                          (x8535 x8522)))
                       (letrec*
                        ((x8554
                          (letrec*
                           ((xj7513
                             (begin
                               (write '(funapp 2847 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2847 37))
                                  (display "\n")
                                  'module))))
                            (xk7514
                             (begin
                               (write '(funapp 2847 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2847 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8555
                              (begin
                                (write '(funapp 2850 27))
                                (display "\n")
                                ((lambda (j7516 k7517 f7518)
                                   (letrec*
                                    ((g8556
                                      (lambda (g7515)
                                        (letrec*
                                         ((g8557
                                           (letrec*
                                            ((x8558
                                              (letrec*
                                               ((x8559
                                                 (begin
                                                   (write '(funapp 2859 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7516
                                                    k7517
                                                    g7515))))
                                               (begin
                                                 (write '(funapp 2860 42))
                                                 (display "\n")
                                                 (f7518 x8559)))))
                                            (begin
                                              (write '(funapp 2861 39))
                                              (display "\n")
                                              (image/c j7516 k7517 x8558)))))
                                         g8557))))
                                    g8556))
                                 xj7513
                                 xk7514
                                 world->scene))))
                            g8555)))
                         (x8541
                          (letrec*
                           ((x8542
                             (letrec*
                              ((x8549
                                (letrec*
                                 ((x8550
                                   (letrec*
                                    ((x8553 (input))
                                     (x8551
                                      (letrec*
                                       ((x8552 (input)))
                                       (begin
                                         (write '(funapp 2880 36))
                                         (display "\n")
                                         (cons
                                          x8552
                                          (begin
                                            (write '(funapp 2880 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 2881 33))
                                      (display "\n")
                                      (cons x8553 x8551)))))
                                 (begin
                                   (write '(funapp 2882 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 2882 35))
                                      (display "\n")
                                      'snake)
                                    x8550))))
                               (x8543
                                (letrec*
                                 ((x8544
                                   (letrec*
                                    ((x8545
                                      (letrec*
                                       ((x8548 (input))
                                        (x8546
                                         (letrec*
                                          ((x8547 (input)))
                                          (begin
                                            (write '(funapp 2893 39))
                                            (display "\n")
                                            (cons
                                             x8547
                                             (begin
                                               (write '(funapp 2893 50))
                                               (display "\n")
                                               '()))))))
                                       (begin
                                         (write '(funapp 2894 36))
                                         (display "\n")
                                         (cons x8548 x8546)))))
                                    (begin
                                      (write '(funapp 2895 33))
                                      (display "\n")
                                      (cons
                                       (begin
                                         (write '(funapp 2895 38))
                                         (display "\n")
                                         'posn)
                                       x8545)))))
                                 (begin
                                   (write '(funapp 2896 30))
                                   (display "\n")
                                   (cons
                                    x8544
                                    (begin
                                      (write '(funapp 2896 41))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2897 27))
                                (display "\n")
                                (cons x8549 x8543)))))
                           (begin
                             (write '(funapp 2898 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2898 29))
                                (display "\n")
                                'world)
                              x8542)))))
                        (begin
                          (write '(funapp 2899 21))
                          (display "\n")
                          (x8554 x8541)))
                       (letrec*
                        ((x8566
                          (letrec*
                           ((xj7519
                             (begin
                               (write '(funapp 2903 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2903 37))
                                  (display "\n")
                                  'module))))
                            (xk7520
                             (begin
                               (write '(funapp 2903 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2903 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8567
                              (begin
                                (write '(funapp 2906 27))
                                (display "\n")
                                ((lambda (j7523 k7524 f7525)
                                   (letrec*
                                    ((g8568
                                      (lambda (g7521 g7522)
                                        (letrec*
                                         ((g8569
                                           (letrec*
                                            ((x8570
                                              (letrec*
                                               ((x8572
                                                 (begin
                                                   (write '(funapp 2915 50))
                                                   (display "\n")
                                                   (POSN/C j7523 k7524 g7521)))
                                                (x8571
                                                 (begin
                                                   (write '(funapp 2916 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7523
                                                    k7524
                                                    g7522))))
                                               (begin
                                                 (write '(funapp 2917 42))
                                                 (display "\n")
                                                 (f7525 x8572 x8571)))))
                                            (begin
                                              (write '(funapp 2918 39))
                                              (display "\n")
                                              (image/c j7523 k7524 x8570)))))
                                         g8569))))
                                    g8568))
                                 xj7519
                                 xk7520
                                 food+scene))))
                            g8567)))
                         (x8561
                          (letrec*
                           ((x8562
                             (letrec*
                              ((x8565 (input))
                               (x8563
                                (letrec*
                                 ((x8564 (input)))
                                 (begin
                                   (write '(funapp 2931 56))
                                   (display "\n")
                                   (cons
                                    x8564
                                    (begin
                                      (write '(funapp 2931 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2932 27))
                                (display "\n")
                                (cons x8565 x8563)))))
                           (begin
                             (write '(funapp 2933 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2933 29))
                                (display "\n")
                                'posn)
                              x8562))))
                         (x8560
                          (begin
                            (write '(funapp 2934 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2934 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2934 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2935 21))
                          (display "\n")
                          (x8566 x8561 x8560)))
                       (letrec*
                        ((x8577
                          (letrec*
                           ((xj7526
                             (begin
                               (write '(funapp 2939 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2939 37))
                                  (display "\n")
                                  'module))))
                            (xk7527
                             (begin
                               (write '(funapp 2939 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2939 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8578
                              (begin
                                (write '(funapp 2942 27))
                                (display "\n")
                                ((lambda (j7532 k7533 f7534)
                                   (letrec*
                                    ((g8579
                                      (lambda (g7528 g7529 g7530 g7531)
                                        (letrec*
                                         ((g8580
                                           (letrec*
                                            ((x8581
                                              (letrec*
                                               ((x8585
                                                 (begin
                                                   (write '(funapp 2951 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7528)))
                                                (x8584
                                                 (begin
                                                   (write '(funapp 2952 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7529)))
                                                (x8583
                                                 (begin
                                                   (write '(funapp 2953 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7532
                                                    k7533
                                                    g7530)))
                                                (x8582
                                                 (begin
                                                   (write '(funapp 2954 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7532
                                                    k7533
                                                    g7531))))
                                               (begin
                                                 (write '(funapp 2955 42))
                                                 (display "\n")
                                                 (f7534
                                                  x8585
                                                  x8584
                                                  x8583
                                                  x8582)))))
                                            (begin
                                              (write '(funapp 2956 39))
                                              (display "\n")
                                              (image/c j7532 k7533 x8581)))))
                                         g8580))))
                                    g8579))
                                 xj7526
                                 xk7527
                                 place-image-on-grid))))
                            g8578)))
                         (x8576
                          (begin
                            (write '(funapp 2963 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2963 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2963 41))
                               (display "\n")
                               '()))))
                         (x8575 (input))
                         (x8574 (input))
                         (x8573
                          (begin
                            (write '(funapp 2966 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 2966 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 2966 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 2967 21))
                          (display "\n")
                          (x8577 x8576 x8575 x8574 x8573)))
                       (letrec*
                        ((x8592
                          (letrec*
                           ((xj7535
                             (begin
                               (write '(funapp 2971 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2971 37))
                                  (display "\n")
                                  'module))))
                            (xk7536
                             (begin
                               (write '(funapp 2971 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2971 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8593
                              (begin
                                (write '(funapp 2974 27))
                                (display "\n")
                                ((lambda (j7539 k7540 f7541)
                                   (letrec*
                                    ((g8594
                                      (lambda (g7537 g7538)
                                        (letrec*
                                         ((g8595
                                           (letrec*
                                            ((x8596
                                              (letrec*
                                               ((x8598
                                                 (begin
                                                   (write '(funapp 2983 50))
                                                   (display "\n")
                                                   (SNAKE/C
                                                    j7539
                                                    k7540
                                                    g7537)))
                                                (x8597
                                                 (begin
                                                   (write '(funapp 2984 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7539
                                                    k7540
                                                    g7538))))
                                               (begin
                                                 (write '(funapp 2985 42))
                                                 (display "\n")
                                                 (f7541 x8598 x8597)))))
                                            (begin
                                              (write '(funapp 2986 39))
                                              (display "\n")
                                              (image/c j7539 k7540 x8596)))))
                                         g8595))))
                                    g8594))
                                 xj7535
                                 xk7536
                                 snake+scene))))
                            g8593)))
                         (x8587
                          (letrec*
                           ((x8588
                             (letrec*
                              ((x8591 (input))
                               (x8589
                                (letrec*
                                 ((x8590 (input)))
                                 (begin
                                   (write '(funapp 2999 56))
                                   (display "\n")
                                   (cons
                                    x8590
                                    (begin
                                      (write '(funapp 2999 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3000 27))
                                (display "\n")
                                (cons x8591 x8589)))))
                           (begin
                             (write '(funapp 3001 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3001 29))
                                (display "\n")
                                'snake)
                              x8588))))
                         (x8586
                          (begin
                            (write '(funapp 3002 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3002 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3002 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3003 21))
                          (display "\n")
                          (x8592 x8587 x8586)))
                       (letrec*
                        ((x8601
                          (letrec*
                           ((xj7542
                             (begin
                               (write '(funapp 3007 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3007 37))
                                  (display "\n")
                                  'module))))
                            (xk7543
                             (begin
                               (write '(funapp 3007 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3007 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8602
                              (begin
                                (write '(funapp 3010 27))
                                (display "\n")
                                ((lambda (j7546 k7547 f7548)
                                   (letrec*
                                    ((g8603
                                      (lambda (g7544 g7545)
                                        (letrec*
                                         ((g8604
                                           (letrec*
                                            ((x8605
                                              (letrec*
                                               ((x8607
                                                 (letrec*
                                                  ((x8608
                                                    (begin
                                                      (write '(funapp 3021 53))
                                                      (display "\n")
                                                      (listof POSN/C))))
                                                  (begin
                                                    (write '(funapp 3022 45))
                                                    (display "\n")
                                                    (x8608
                                                     j7546
                                                     k7547
                                                     g7544))))
                                                (x8606
                                                 (begin
                                                   (write '(funapp 3023 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7546
                                                    k7547
                                                    g7545))))
                                               (begin
                                                 (write '(funapp 3024 42))
                                                 (display "\n")
                                                 (f7548 x8607 x8606)))))
                                            (begin
                                              (write '(funapp 3025 39))
                                              (display "\n")
                                              (image/c j7546 k7547 x8605)))))
                                         g8604))))
                                    g8603))
                                 xj7542
                                 xk7543
                                 segments+scene))))
                            g8602)))
                         (x8600 (input))
                         (x8599
                          (begin
                            (write '(funapp 3033 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3033 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3033 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3034 21))
                          (display "\n")
                          (x8601 x8600 x8599)))
                       (letrec*
                        ((x8615
                          (letrec*
                           ((xj7549
                             (begin
                               (write '(funapp 3038 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3038 37))
                                  (display "\n")
                                  'module))))
                            (xk7550
                             (begin
                               (write '(funapp 3038 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3038 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8616
                              (begin
                                (write '(funapp 3041 27))
                                (display "\n")
                                ((lambda (j7553 k7554 f7555)
                                   (letrec*
                                    ((g8617
                                      (lambda (g7551 g7552)
                                        (letrec*
                                         ((g8618
                                           (letrec*
                                            ((x8619
                                              (letrec*
                                               ((x8621
                                                 (begin
                                                   (write '(funapp 3050 50))
                                                   (display "\n")
                                                   (POSN/C j7553 k7554 g7551)))
                                                (x8620
                                                 (begin
                                                   (write '(funapp 3051 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7553
                                                    k7554
                                                    g7552))))
                                               (begin
                                                 (write '(funapp 3052 42))
                                                 (display "\n")
                                                 (f7555 x8621 x8620)))))
                                            (begin
                                              (write '(funapp 3053 39))
                                              (display "\n")
                                              (image/c j7553 k7554 x8619)))))
                                         g8618))))
                                    g8617))
                                 xj7549
                                 xk7550
                                 segment+scene))))
                            g8616)))
                         (x8610
                          (letrec*
                           ((x8611
                             (letrec*
                              ((x8614 (input))
                               (x8612
                                (letrec*
                                 ((x8613 (input)))
                                 (begin
                                   (write '(funapp 3066 56))
                                   (display "\n")
                                   (cons
                                    x8613
                                    (begin
                                      (write '(funapp 3066 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3067 27))
                                (display "\n")
                                (cons x8614 x8612)))))
                           (begin
                             (write '(funapp 3068 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3068 29))
                                (display "\n")
                                'posn)
                              x8611))))
                         (x8609
                          (begin
                            (write '(funapp 3069 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 3069 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 3069 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 3070 21))
                          (display "\n")
                          (x8615 x8610 x8609)))))))))
               g8381))))
           g7600))))
       g7583)))
    g7582)))
