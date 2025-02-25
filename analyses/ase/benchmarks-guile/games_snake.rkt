(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7458 #t)) g7458)))
    (meta (lambda (v) (letrec* ((g7459 v)) g7459)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7460
          (letrec*
           ((g7461
             (letrec*
              ((x-e7462 lst))
              (letrec*
               ((v1742 x-e7462))
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
                   ((x-cnd7463
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7463
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
           g7461)))
        g7460)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7464 (lambda (v) (letrec* ((g7465 v)) g7465)))) g7464)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7466
          (letrec*
           ((x7467 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7467)))))
        g7466))))
   (letrec*
    ((g7468
      (letrec*
       ((g7469
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7470
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7470)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7471
                 (letrec*
                  ((x7473
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7473))))
                (g7472
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7474
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7475 (if val7245 val7245 #f))) g7475)))))
                   g7474))))
               g7472)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7476
                 (letrec*
                  ((x7478
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7478))))
                (g7477
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7479
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7480 (if val7247 val7247 #f))) g7480)))))
                   g7479))))
               g7477)))
           (>
            (lambda (x y)
              (letrec*
               ((g7481
                 (letrec*
                  ((x7483
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7483))))
                (g7482
                 (letrec*
                  ((x7484
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7484)))))
               g7482)))
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
           ((g7485 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7486
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7487
                     (lambda (k j lst)
                       (letrec*
                        ((g7488
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7489
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7489))
                             lst))))
                        g7488))))
                   g7487)))
               (real?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7269))))
                      (if x-cnd7491
                        g7269
                        (begin
                          (write '(blame g7267 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7490)))
               (boolean?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7272))))
                      (if x-cnd7493
                        g7272
                        (begin
                          (write '(blame g7270 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7492)))
               (number?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7275))))
                      (if x-cnd7495
                        g7275
                        (begin
                          (write '(blame g7273 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7494)))
               (any/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x-cnd7497
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7498 #t)) g7498)) g7278))))
                      (if x-cnd7497
                        g7278
                        (begin
                          (write '(blame g7276 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7496)))
               (any?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x-cnd7500
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7501 #t)) g7501)) g7281))))
                      (if x-cnd7500
                        g7281
                        (begin
                          (write '(blame g7279 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7499)))
               (cons?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x-cnd7503
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7503
                        g7284
                        (begin
                          (write '(blame g7282 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7502)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7504
                     (lambda (k j v)
                       (letrec*
                        ((g7505
                          (letrec*
                           ((x7508
                             (letrec*
                              ((x7509
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7509))))
                            (x7506
                             (letrec*
                              ((x7507
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7507)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7508 x7506)))))
                        g7505))))
                   g7504)))
               (pair?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x-cnd7511
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7287))))
                      (if x-cnd7511
                        g7287
                        (begin
                          (write '(blame g7285 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7510)))
               (integer?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x-cnd7513
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7290))))
                      (if x-cnd7513
                        g7290
                        (begin
                          (write '(blame g7288 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7512)))
               (symbol?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7293))))
                      (if x-cnd7515
                        g7293
                        (begin
                          (write '(blame g7291 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7514)))
               (string?/c
                (lambda (g7294 g7295 g7296)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x-cnd7517
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7296))))
                      (if x-cnd7517
                        g7296
                        (begin
                          (write '(blame g7294 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7294)))))))
                   g7516)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7518
                     (lambda (k j v)
                       (letrec*
                        ((g7519
                          (letrec*
                           ((x-cnd7520
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7520
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7519))))
                   g7518)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7521
                     (lambda (k j v)
                       (letrec*
                        ((g7522
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7523
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7523))))
                        g7522))))
                   g7521)))
               (null?/c
                (lambda (g7297 g7298 g7299)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x-cnd7525
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7299))))
                      (if x-cnd7525
                        g7299
                        (begin
                          (write '(blame g7297 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7297)))))))
                   g7524)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7526
                     (lambda (k j v)
                       (letrec*
                        ((g7527
                          (letrec*
                           ((x-cnd7528
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7528
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7532
                                (letrec*
                                 ((x7533
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7533))))
                               (x7529
                                (letrec*
                                 ((x7531
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7530
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7531 k j x7530)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7532 x7529)))))))
                        g7527))))
                   g7526)))
               (any? (lambda (v) (letrec* ((g7534 #t)) g7534)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7536)))))
                   g7535)))
               (nonzero?/c
                (lambda (g7300 g7301 g7302)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x-cnd7538
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7539
                                (letrec*
                                 ((x7540
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7540)))))
                              g7539))
                           g7302))))
                      (if x-cnd7538
                        g7302
                        (begin
                          (write '(blame g7300 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7300)))))))
                   g7537)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7541
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7542
                          (letrec*
                           ((x-cnd7543
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7544
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7544))
                                g7305))))
                           (if x-cnd7543
                             g7305
                             (begin
                               (write '(blame g7303 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7542))))
                   g7541)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7545
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7546
                          (letrec*
                           ((x-cnd7547
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7548
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7548))
                                g7308))))
                           (if x-cnd7547
                             g7308
                             (begin
                               (write '(blame g7306 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7546))))
                   g7545)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7549
                     (lambda (g7309 g7310 g7311)
                       (letrec*
                        ((g7550
                          (letrec*
                           ((x-cnd7551
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7552
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7552))
                                g7311))))
                           (if x-cnd7551
                             g7311
                             (begin
                               (write '(blame g7309 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7309)))))))
                        g7550))))
                   g7549)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7553
                     (lambda (g7312 g7313 g7314)
                       (letrec*
                        ((g7554
                          (letrec*
                           ((x-cnd7555
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7556
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7556))
                                g7314))))
                           (if x-cnd7555
                             g7314
                             (begin
                               (write '(blame g7312 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7312)))))))
                        g7554))))
                   g7553)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7557
                     (lambda (g7315 g7316 g7317)
                       (letrec*
                        ((g7558
                          (letrec*
                           ((x-cnd7559
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7560
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7560))
                                g7317))))
                           (if x-cnd7559
                             g7317
                             (begin
                               (write '(blame g7315 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7315)))))))
                        g7558))))
                   g7557)))
               (meta (lambda (v) (letrec* ((g7561 v)) g7561)))
               (+
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7564
                            (lambda (g7320 g7321)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7320)))
                                      (x7567
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7324 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7322 k7323 x7566)))))
                               g7565))))
                          g7564))
                       xj7318
                       xk7319
                       (lambda (a b)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7563))))))
                  g7562)))
               (-
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7571
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7327)))
                                      (x7574
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7328))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7331 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7329 k7330 x7573)))))
                               g7572))))
                          g7571))
                       xj7325
                       xk7326
                       (lambda (a b)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7570))))))
                  g7569)))
               (*
                (letrec*
                 ((xj7332
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7333
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7336 k7337 f7338)
                         (letrec*
                          ((g7578
                            (lambda (g7334 g7335)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7334)))
                                      (x7581
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7335))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7338 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7336 k7337 x7580)))))
                               g7579))))
                          g7578))
                       xj7332
                       xk7333
                       (lambda (a b)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7577))))))
                  g7576)))
               (<
                (letrec*
                 ((xj7339
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7340
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7585
                            (lambda (g7341 g7342)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7341)))
                                      (x7588
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7345 x7589 x7588)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7343 k7344 x7587)))))
                               g7586))))
                          g7585))
                       xj7339
                       xk7340
                       (lambda (a b)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7584))))))
                  g7583)))
               (>
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7592
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7348)))
                                      (x7595
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7352 x7596 x7595)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7350 k7351 x7594)))))
                               g7593))))
                          g7592))
                       xj7346
                       xk7347
                       (lambda (a b)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7591))))))
                  g7590)))
               (<=
                (letrec*
                 ((xj7353
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7354
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7597
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7357 k7358 f7359)
                         (letrec*
                          ((g7599
                            (lambda (g7355 g7356)
                              (letrec*
                               ((g7600
                                 (letrec*
                                  ((x7601
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7355)))
                                      (x7602
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7356))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7359 x7603 x7602)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7357 k7358 x7601)))))
                               g7600))))
                          g7599))
                       xj7353
                       xk7354
                       (lambda (a b)
                         (letrec*
                          ((g7598
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7598))))))
                  g7597)))
               (>=
                (letrec*
                 ((xj7360
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7361
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7604
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7364 k7365 f7366)
                         (letrec*
                          ((g7606
                            (lambda (g7362 g7363)
                              (letrec*
                               ((g7607
                                 (letrec*
                                  ((x7608
                                    (letrec*
                                     ((x7610
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7362)))
                                      (x7609
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7363))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7366 x7610 x7609)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7364 k7365 x7608)))))
                               g7607))))
                          g7606))
                       xj7360
                       xk7361
                       (lambda (a b)
                         (letrec*
                          ((g7605
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7605))))))
                  g7604)))
               (/
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7611
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7613
                            (lambda (g7369 g7370)
                              (letrec*
                               ((g7614
                                 (letrec*
                                  ((x7615
                                    (letrec*
                                     ((x7617
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7369)))
                                      (x7616
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7373 x7617 x7616)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7371 k7372 x7615)))))
                               g7614))))
                          g7613))
                       xj7367
                       xk7368
                       (lambda (a b)
                         (letrec*
                          ((g7612
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7612))))))
                  g7611)))
               (car
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7618
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g7620
                            (lambda (g7376)
                              (letrec*
                               ((g7621
                                 (letrec*
                                  ((x7622
                                    (letrec*
                                     ((x7623
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7377 k7378 g7376))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7379 x7623)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7377 k7378 x7622)))))
                               g7621))))
                          g7620))
                       xj7374
                       xk7375
                       (lambda (p)
                         (letrec*
                          ((g7619
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7619))))))
                  g7618)))
               (cdr
                (letrec*
                 ((xj7380
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7381
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7624
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7626
                            (lambda (g7382)
                              (letrec*
                               ((g7627
                                 (letrec*
                                  ((x7628
                                    (letrec*
                                     ((x7629
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7385 x7629)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7383 k7384 x7628)))))
                               g7627))))
                          g7626))
                       xj7380
                       xk7381
                       (lambda (p)
                         (letrec*
                          ((g7625
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7625))))))
                  g7624)))
               (cons
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7630
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g7632
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g7633
                                 (letrec*
                                  ((x7634
                                    (letrec*
                                     ((x7636
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7388)))
                                      (x7635
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7392 x7636 x7635)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7390 k7391 x7634)))))
                               g7633))))
                          g7632))
                       xj7386
                       xk7387
                       (lambda (a b)
                         (letrec*
                          ((g7631
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7631))))))
                  g7630)))
               (vector-ref
                (letrec*
                 ((xj7393
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7394
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7637
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7639
                            (lambda (g7395)
                              (letrec*
                               ((g7640
                                 (letrec*
                                  ((x7641
                                    (letrec*
                                     ((x7642
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7398 x7642)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7396 k7397 x7641)))))
                               g7640))))
                          g7639))
                       xj7393
                       xk7394
                       (lambda (v i)
                         (letrec*
                          ((g7638
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7638))))))
                  g7637)))
               (vector-set!
                (letrec*
                 ((xj7399
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7400
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7643
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7403 k7404 f7405)
                         (letrec*
                          ((g7645
                            (lambda (g7401 g7402)
                              (letrec*
                               ((g7646
                                 (letrec*
                                  ((x7647
                                    (letrec*
                                     ((x7649
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7403 k7404 g7401)))
                                      (x7648
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7403 k7404 g7402))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7405 x7649 x7648)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7403 k7404 x7647)))))
                               g7646))))
                          g7645))
                       xj7399
                       xk7400
                       (lambda (vec i v)
                         (letrec*
                          ((g7644
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7644))))))
                  g7643)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7651)))))
                   g7650)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7658
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7662))))
                          (x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7660)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7661 x7659)))))))
                   g7655)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7664)))))
                   g7663)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7668)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7666)))))
                   g7665)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7672)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7671)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7677))))
                    (g7675
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
                       ((g7678
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7679 res))
                       g7679))))
                   g7675)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7682)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7681)))))
                   g7680)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (letrec*
                         ((x7685
                           (letrec*
                            ((x7686
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7686)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7685)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7684)))))
                   g7683)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7689))))
                    (g7688
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7690
                        #f
                        (letrec*
                         ((x-cnd7691
                           (letrec*
                            ((x7692
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7692 k)))))
                         (if x-cnd7691
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7693
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7693)))))))))
                   g7688)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7695)))))
                   g7694)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7698))))
                    (g7697
                     (letrec*
                      ((x-cnd7699
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7699
                        ""
                        (letrec*
                         ((x7702
                           (letrec*
                            ((x7703
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7703))))
                          (x7700
                           (letrec*
                            ((x7701
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7701)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7702 x7700)))))))
                   g7697)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7707))))
                    (g7705
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7708))))
                    (g7706
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7709
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7709))))
                   g7706)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7711
                        (letrec*
                         ((x7712
                           (letrec*
                            ((x7713
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7713)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7712)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7711)))))
                   g7710)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7717))))
                    (g7715
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7718))))
                    (g7716
                     (letrec*
                      ((x-cnd7719
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7719
                        x
                        (letrec*
                         ((x7721
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7720
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7721 x7720)))))))
                   g7716)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7722
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7722)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x-cnd7724
                        (letrec*
                         ((x7725 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7725)))))
                      (if x-cnd7724
                        (letrec*
                         ((x7726 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7726)))
                        #f))))
                   g7723)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7728
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7728 9)))))
                      (letrec*
                       ((g7729
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7730
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7730 10)))))
                            (letrec*
                             ((g7731
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7732
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7732 32))))))
                             g7731)))))
                       g7729))))
                   g7727)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7738))))
                    (g7737
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7737)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7739)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7740 #f)) g7740)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (letrec*
                      ((x-cnd7746
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7746
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7744)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7748
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7749
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7749
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7750
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7751
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7751
                                       (letrec*
                                        ((x-cnd7752
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7752
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7753
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7754
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7754
                                             (letrec*
                                              ((x-cnd7755
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7755
                                                (letrec*
                                                 ((x-cnd7756
                                                   (letrec*
                                                    ((x7758
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7757
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7758 x7757)))))
                                                 (if x-cnd7756
                                                   (letrec*
                                                    ((x7760
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7759
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7760 x7759)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7761
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7762
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7762
                                                (letrec*
                                                 ((x-cnd7763
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7763
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7764
                                                       (letrec*
                                                        ((x-cnd7765
                                                          (letrec*
                                                           ((x7766
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
                                                             (= x7766 n)))))
                                                        (if x-cnd7765
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7767
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
                                                                    ((g7768
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7769
                                                                           (letrec*
                                                                            ((x7771
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
                                                                             (x7770
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
                                                                               x7771
                                                                               x7770)))))
                                                                         (if x-cnd7769
                                                                           (letrec*
                                                                            ((x7772
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
                                                                               x7772)))
                                                                           #f)))))
                                                                    g7768))))
                                                                g7767))))
                                                           (letrec*
                                                            ((g7773
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7773))
                                                          #f))))
                                                     g7764))
                                                   #f))
                                                #f)))))
                                         g7761)))))
                                   g7753)))))
                             g7750)))))
                       g7748))))
                   g7747)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7775)))))
                   g7774)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7781)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7782
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7782)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7787))))
                    (g7785
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
                       ((g7788
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7789 res))
                       g7789))))
                   g7785)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7790
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7790)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7796
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7796))))
                   g7793)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7798)))))
                   g7797)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7803)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (letrec*
                         ((x7806
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7806)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7805)))))
                   g7804)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7809)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7815)))))
                   g7812)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7817
                        (letrec*
                         ((x7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7819)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7818)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7817)))))
                   g7816)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7822))))
                    (g7821
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7821)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7823
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7823)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7825
                        (letrec*
                         ((x7826
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7826)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7825)))))
                   g7824)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7827
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7827)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7831
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7834
                           (letrec*
                            ((x7835
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7835))))
                          (x7832
                           (letrec*
                            ((x7833
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7833)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7834 x7832)))))))
                   g7829)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7837
                        (letrec*
                         ((x7838
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7839)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7838)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7837)))))
                   g7836)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7843)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7842)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7841)))))
                   g7840)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7847)))))
                   g7845)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7851)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7850)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7849)))))
                   g7848)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7855))))
                    (g7853
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7856))))
                    (g7854
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7857
                        (letrec*
                         ((g7858
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7858)
                        (letrec*
                         ((x-cnd7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7860)))))
                         (if x-cnd7859
                           (letrec*
                            ((g7861
                              (letrec*
                               ((x7862
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7862)))))
                            g7861)
                           (letrec*
                            ((x-cnd7863
                              (letrec*
                               ((x7864
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7864)))))
                            (if x-cnd7863
                              (letrec*
                               ((g7865
                                 (letrec*
                                  ((x7867
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7866
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7867 x7866)))))
                               g7865)
                              (letrec*
                               ((x-cnd7868
                                 (letrec*
                                  ((x7869
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7869)))))
                               (if x-cnd7868
                                 (letrec*
                                  ((g7870
                                    (letrec*
                                     ((x7873
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7872
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7871
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7873 x7872 x7871)))))
                                  g7870)
                                 (letrec*
                                  ((x-cnd7874
                                    (letrec*
                                     ((x7875
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7875)))))
                                  (if x-cnd7874
                                    (letrec*
                                     ((g7876
                                       (letrec*
                                        ((x7880
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7879
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7878
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7877
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7880 x7879 x7878 x7877)))))
                                     g7876)
                                    (letrec*
                                     ((x-cnd7881
                                       (letrec*
                                        ((x7882
                                          (letrec*
                                           ((x7883
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7883)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7882)))))
                                     (if x-cnd7881
                                       (letrec*
                                        ((g7884
                                          (letrec*
                                           ((x7890
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7889
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7888
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7887
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7885
                                             (letrec*
                                              ((x7886
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7886)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7890
                                              x7889
                                              x7888
                                              x7887
                                              x7885)))))
                                        g7884)
                                       (letrec*
                                        ((x-cnd7891
                                          (letrec*
                                           ((x7892
                                             (letrec*
                                              ((x7893
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7893)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7892)))))
                                        (if x-cnd7891
                                          (letrec*
                                           ((g7894
                                             (letrec*
                                              ((x7902
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7901
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7900
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7899
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7897
                                                (letrec*
                                                 ((x7898
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7898))))
                                               (x7895
                                                (letrec*
                                                 ((x7896
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7896)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7902
                                                 x7901
                                                 x7900
                                                 x7899
                                                 x7897
                                                 x7895)))))
                                           g7894)
                                          (letrec*
                                           ((x-cnd7903
                                             (letrec*
                                              ((x7904
                                                (letrec*
                                                 ((x7905
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7905)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7904)))))
                                           (if x-cnd7903
                                             (letrec*
                                              ((g7906
                                                (letrec*
                                                 ((x7916
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7915
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7914
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7913
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7911
                                                   (letrec*
                                                    ((x7912
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7912))))
                                                  (x7909
                                                   (letrec*
                                                    ((x7910
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7910))))
                                                  (x7907
                                                   (letrec*
                                                    ((x7908
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7908)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7916
                                                    x7915
                                                    x7914
                                                    x7913
                                                    x7911
                                                    x7909
                                                    x7907)))))
                                              g7906)
                                             (letrec*
                                              ((g7917
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7917)))))))))))))))))))
                   g7854)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7921
                        #f
                        (letrec*
                         ((x-cnd7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7923 e)))))
                         (if x-cnd7922
                           l
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7924)))))))))
                   g7919)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (letrec*
                         ((x7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7928)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7927)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7926)))))
                   g7925)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7932)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7931)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7930)))))
                   g7929)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7933
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7933)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7935)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7938
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7938))))
                   g7937)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7942
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7943)))
                           #f))))
                      (letrec*
                       ((g7944
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7944))))
                   g7941)))
               (cddaar
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
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7948)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7947)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7946)))))
                   g7945)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x-cnd7950
                        (letrec*
                         ((x7951 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7951 c)))))
                      (if x-cnd7950
                        (letrec*
                         ((x7952 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7952)))
                        #f))))
                   g7949)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7956
                        #f
                        (letrec*
                         ((x-cnd7957
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7958 k)))))
                         (if x-cnd7957
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7959)))))))))
                   g7954)))
               (not (lambda (x) (letrec* ((g7960 (if x #f #t))) g7960)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7961
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7961)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7964))))
                    (g7963
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7965
                        #f
                        (letrec*
                         ((x-cnd7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7967 e)))))
                         (if x-cnd7966
                           l
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7968)))))))))
                   g7963)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (letrec*
                            ((x7972
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7972)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7971)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7970)))))
                   g7969)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7975))))
                    (g7974
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7976
                             (letrec*
                              ((x-cnd7977
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7977
                                0
                                (letrec*
                                 ((x7978
                                   (letrec*
                                    ((x7979
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7979)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7978)))))))
                           g7976))))
                      (letrec*
                       ((g7980
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7980))))
                   g7974)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7986
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7986))))
                   g7983)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7988)))))
                   g7987)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7991)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7990)))))
                   g7989)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7994))))
                    (g7993
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7995
                        #f
                        (letrec*
                         ((x-cnd7996
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7997 k)))))
                         (if x-cnd7996
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7998
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7998)))))))))
                   g7993)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x8000)))))
                   g7999)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8004))))
                    (g8002
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8005))))
                    (g8003
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x8006)))))
                   g8003)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8008
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8008))))
                   g8007)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x8012))))
                    (g8010
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x8013))))
                    (g8011
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8014
                        #t
                        (letrec*
                         ((x-cnd8015
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8015
                           (letrec*
                            ((g8016
                              (letrec*
                               ((x8018
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x8018))))
                             (g8017
                              (letrec*
                               ((x8019
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x8019)))))
                            g8017)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g8011)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x8022))))
                    (g8021
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8023
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8021)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x8027
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x8027))))
                    (g8025
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8028))))
                    (g8026
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8029
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8029))))
                   g8026)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8031
                        (letrec*
                         ((x8032
                           (letrec*
                            ((x8033
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x8033)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x8032)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x8031)))))
                   g8030)))
               (newline (lambda () (letrec* ((g8034 #f)) g8034)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8037
                        (letrec*
                         ((x8038
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8038))))
                       (x8036
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8037 x8036)))))
                   g8035)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8043))))
                    (g8040
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8044))))
                    (g8041
                     (letrec*
                      ((x8045
                        (letrec*
                         ((x8046
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8046)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8045))))
                    (g8042
                     (letrec*
                      ((x-cnd8047
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8047
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8049
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8048
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8049 x8048)))))))
                   g8042)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((x-cnd8051
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8051
                        a
                        (letrec*
                         ((x8052
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8052)))))))
                   g8050)))
               (image
                (lambda ()
                  (letrec*
                   ((g8053
                     (begin
                       (write '(funapp 1696 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1696 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1696 62))
                          (display "\n")
                          '())))))
                   g8053)))
               (image?
                (lambda (image7442)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((x8055
                        (begin
                          (write '(funapp 1701 39))
                          (display "\n")
                          (car image7442))))
                      (begin
                        (write '(funapp 1701 57))
                        (display "\n")
                        (eq?
                         x8055
                         (begin
                           (write '(funapp 1701 67))
                           (display "\n")
                           'image))))))
                   g8054)))
               (image/c
                (lambda (j7407 k7408 v7406)
                  (letrec*
                   ((g8056
                     (begin
                       (write '(funapp 1705 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1705 47))
                          (display "\n")
                          '())))))
                   g8056)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8057
                     (begin (write '(funapp 1706 57)) (display "\n") (image))))
                   g8057)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8058
                     (begin (write '(funapp 1707 60)) (display "\n") (image))))
                   g8058)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8059
                     (begin (write '(funapp 1709 54)) (display "\n") (image))))
                   g8059)))
               (posn
                (lambda (x7444 y7445)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x8061
                        (letrec*
                         ((x8062
                           (begin
                             (write '(funapp 1717 34))
                             (display "\n")
                             (orig-cons
                              y7445
                              (begin
                                (write '(funapp 1717 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1718 26))
                           (display "\n")
                           (orig-cons x7444 x8062)))))
                      (begin
                        (write '(funapp 1719 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1719 33)) (display "\n") 'posn)
                         x8061)))))
                   g8060)))
               (posn?
                (lambda (posn7443)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x8064
                        (begin
                          (write '(funapp 1725 39))
                          (display "\n")
                          (car posn7443))))
                      (begin
                        (write '(funapp 1725 56))
                        (display "\n")
                        (eq?
                         x8064
                         (begin
                           (write '(funapp 1725 66))
                           (display "\n")
                           'posn))))))
                   g8063)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8066
                        (begin
                          (write '(funapp 1731 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1731 57))
                        (display "\n")
                        (orig-car x8066)))))
                   g8065)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8068
                        (letrec*
                         ((x8069
                           (begin
                             (write '(funapp 1739 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1739 60))
                           (display "\n")
                           (orig-cdr x8069)))))
                      (begin
                        (write '(funapp 1740 23))
                        (display "\n")
                        (orig-car x8068)))))
                   g8067)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8070
                     (letrec*
                      ((x-cnd8071
                        (letrec*
                         ((x8073
                           (begin
                             (write '(funapp 1749 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8072
                           (begin
                             (write '(funapp 1749 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1750 26))
                           (display "\n")
                           (= x8073 x8072)))))
                      (if x-cnd8071
                        (letrec*
                         ((x8075
                           (begin
                             (write '(funapp 1753 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8074
                           (begin
                             (write '(funapp 1753 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1754 26))
                           (display "\n")
                           (= x8075 x8074)))
                        #f))))
                   g8070)))
               (snake
                (lambda (dir7449 segs7450)
                  (letrec*
                   ((g8076
                     (letrec*
                      ((x8077
                        (letrec*
                         ((x8078
                           (begin
                             (write '(funapp 1764 34))
                             (display "\n")
                             (orig-cons
                              segs7450
                              (begin
                                (write '(funapp 1764 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1765 26))
                           (display "\n")
                           (orig-cons dir7449 x8078)))))
                      (begin
                        (write '(funapp 1766 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1766 33))
                           (display "\n")
                           'snake)
                         x8077)))))
                   g8076)))
               (snake?
                (lambda (snake7448)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1772 39))
                          (display "\n")
                          (car snake7448))))
                      (begin
                        (write '(funapp 1772 57))
                        (display "\n")
                        (eq?
                         x8080
                         (begin
                           (write '(funapp 1772 67))
                           (display "\n")
                           'snake))))))
                   g8079)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8082
                        (begin
                          (write '(funapp 1778 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1778 58))
                        (display "\n")
                        (orig-car x8082)))))
                   g8081)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8083
                     (letrec*
                      ((x8084
                        (letrec*
                         ((x8085
                           (begin
                             (write '(funapp 1786 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1786 61))
                           (display "\n")
                           (orig-cdr x8085)))))
                      (begin
                        (write '(funapp 1787 23))
                        (display "\n")
                        (orig-car x8084)))))
                   g8083)))
               (world
                (lambda (snake7454 food7455)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8087
                        (letrec*
                         ((x8088
                           (begin
                             (write '(funapp 1796 34))
                             (display "\n")
                             (orig-cons
                              food7455
                              (begin
                                (write '(funapp 1796 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1797 26))
                           (display "\n")
                           (orig-cons snake7454 x8088)))))
                      (begin
                        (write '(funapp 1798 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1798 33))
                           (display "\n")
                           'world)
                         x8087)))))
                   g8086)))
               (world?
                (lambda (world7453)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8090
                        (begin
                          (write '(funapp 1804 39))
                          (display "\n")
                          (car world7453))))
                      (begin
                        (write '(funapp 1804 57))
                        (display "\n")
                        (eq?
                         x8090
                         (begin
                           (write '(funapp 1804 67))
                           (display "\n")
                           'world))))))
                   g8089)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1810 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1810 58))
                        (display "\n")
                        (orig-car x8092)))))
                   g8091)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x8094
                        (letrec*
                         ((x8095
                           (begin
                             (write '(funapp 1818 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1818 61))
                           (display "\n")
                           (orig-cdr x8095)))))
                      (begin
                        (write '(funapp 1819 23))
                        (display "\n")
                        (orig-car x8094)))))
                   g8093)))
               (DIR/C
                (lambda (g7413 g7414 g7415)
                  (letrec*
                   ((g8096
                     (letrec*
                      ((x-cnd8097
                        (begin
                          (write '(funapp 1827 25))
                          (display "\n")
                          ((lambda (v7412)
                             (letrec*
                              ((g8098
                                (letrec*
                                 ((x-cnd8099
                                   (begin
                                     (write '(funapp 1831 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1831 48))
                                        (display "\n")
                                        'up)
                                      v7412))))
                                 (if x-cnd8099
                                   #t
                                   (letrec*
                                    ((x-cnd8100
                                      (begin
                                        (write '(funapp 1835 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1835 51))
                                           (display "\n")
                                           'down)
                                         v7412))))
                                    (if x-cnd8100
                                      #t
                                      (letrec*
                                       ((x-cnd8101
                                         (begin
                                           (write '(funapp 1839 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1839 54))
                                              (display "\n")
                                              'left)
                                            v7412))))
                                       (if x-cnd8101
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
                              g8098))
                           g7415))))
                      (if x-cnd8097
                        g7415
                        (begin
                          (write '(blame g7413 1847 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7413)))))))
                   g8096)))
               (POSN/C
                (lambda (j7417 k7418 v7416)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((checked7419
                        (letrec*
                         ((x8103
                           (letrec*
                            ((x8104
                              (begin
                                (write '(funapp 1867 37))
                                (display "\n")
                                (orig-cdr v7416))))
                            (begin
                              (write '(funapp 1868 29))
                              (display "\n")
                              (orig-car x8104)))))
                         (begin
                           (write '(funapp 1869 26))
                           (display "\n")
                           (real?/c j7417 k7418 x8103)))))
                      (letrec*
                       ((g8105
                         (letrec*
                          ((checked7420
                            (letrec*
                             ((x8106
                               (letrec*
                                ((x8107
                                  (letrec*
                                   ((x8108
                                     (begin
                                       (write '(funapp 1879 44))
                                       (display "\n")
                                       (orig-cdr v7416))))
                                   (begin
                                     (write '(funapp 1880 36))
                                     (display "\n")
                                     (orig-cdr x8108)))))
                                (begin
                                  (write '(funapp 1881 33))
                                  (display "\n")
                                  (orig-car x8107)))))
                             (begin
                               (write '(funapp 1882 30))
                               (display "\n")
                               (real?/c j7417 k7418 x8106)))))
                          (letrec*
                           ((g8109
                             (letrec*
                              ((x8110
                                (letrec*
                                 ((x8111
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
                                   (cons checked7419 x8111)))))
                              (begin
                                (write '(funapp 1890 31))
                                (display "\n")
                                (cons posn x8110)))))
                           g8109))))
                       g8105))))
                   g8102)))
               (SNAKE/C
                (lambda (j7423 k7424 v7422)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((checked7425
                        (letrec*
                         ((x8113
                           (letrec*
                            ((x8114
                              (begin
                                (write '(funapp 1903 37))
                                (display "\n")
                                (orig-cdr v7422))))
                            (begin
                              (write '(funapp 1904 29))
                              (display "\n")
                              (orig-car x8114)))))
                         (begin
                           (write '(funapp 1905 26))
                           (display "\n")
                           (DIR/C j7423 k7424 x8113)))))
                      (letrec*
                       ((g8115
                         (letrec*
                          ((checked7426
                            (letrec*
                             ((x8119
                               (letrec*
                                ((x8120
                                  (begin
                                    (write '(funapp 1913 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1914 33))
                                  (display "\n")
                                  (and/c cons?/c x8120))))
                              (x8116
                               (letrec*
                                ((x8117
                                  (letrec*
                                   ((x8118
                                     (begin
                                       (write '(funapp 1919 44))
                                       (display "\n")
                                       (orig-cdr v7422))))
                                   (begin
                                     (write '(funapp 1920 36))
                                     (display "\n")
                                     (orig-cdr x8118)))))
                                (begin
                                  (write '(funapp 1921 33))
                                  (display "\n")
                                  (orig-car x8117)))))
                             (begin
                               (write '(funapp 1922 30))
                               (display "\n")
                               (x8119 j7423 k7424 x8116)))))
                          (letrec*
                           ((g8121
                             (letrec*
                              ((x8122
                                (letrec*
                                 ((x8123
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
                                   (cons checked7425 x8123)))))
                              (begin
                                (write '(funapp 1930 31))
                                (display "\n")
                                (cons snake x8122)))))
                           g8121))))
                       g8115))))
                   g8112)))
               (WORLD/C
                (lambda (j7429 k7430 v7428)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((checked7431
                        (letrec*
                         ((x8125
                           (letrec*
                            ((x8126
                              (begin
                                (write '(funapp 1943 37))
                                (display "\n")
                                (orig-cdr v7428))))
                            (begin
                              (write '(funapp 1944 29))
                              (display "\n")
                              (orig-car x8126)))))
                         (begin
                           (write '(funapp 1945 26))
                           (display "\n")
                           (SNAKE/C j7429 k7430 x8125)))))
                      (letrec*
                       ((g8127
                         (letrec*
                          ((checked7432
                            (letrec*
                             ((x8128
                               (letrec*
                                ((x8129
                                  (letrec*
                                   ((x8130
                                     (begin
                                       (write '(funapp 1955 44))
                                       (display "\n")
                                       (orig-cdr v7428))))
                                   (begin
                                     (write '(funapp 1956 36))
                                     (display "\n")
                                     (orig-cdr x8130)))))
                                (begin
                                  (write '(funapp 1957 33))
                                  (display "\n")
                                  (orig-car x8129)))))
                             (begin
                               (write '(funapp 1958 30))
                               (display "\n")
                               (POSN/C j7429 k7430 x8128)))))
                          (letrec*
                           ((g8131
                             (letrec*
                              ((x8132
                                (letrec*
                                 ((x8133
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
                                   (cons checked7431 x8133)))))
                              (begin
                                (write '(funapp 1966 31))
                                (display "\n")
                                (cons world x8132)))))
                           g8131))))
                       g8127))))
                   g8124)))
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
                 ((x8135
                   (letrec*
                    ((x8136
                      (letrec*
                       ((x8137
                         (begin
                           (write '(funapp 1985 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1985 59))
                         (display "\n")
                         (cons x8137 empty)))))
                    (begin
                      (write '(funapp 1986 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1986 27)) (display "\n") 'right)
                       x8136))))
                  (x8134
                   (begin
                     (write '(funapp 1987 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1988 18))
                   (display "\n")
                   (world x8135 x8134))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (begin
                             (write '(funapp 1995 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1995 61))
                           (display "\n")
                           (car x8140)))))
                      (begin
                        (write '(funapp 1996 23))
                        (display "\n")
                        (head-collide? x8139)))))
                   g8138)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((val7263
                        (letrec*
                         ((x8142
                           (begin
                             (write '(funapp 2003 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 2003 63))
                           (display "\n")
                           (<= x8142 0)))))
                      (letrec*
                       ((g8143
                         (if val7263
                           val7263
                           (letrec*
                            ((val7264
                              (letrec*
                               ((x8144
                                 (begin
                                   (write '(funapp 2011 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 2012 32))
                                 (display "\n")
                                 (>= x8144 BOARD-WIDTH)))))
                            (letrec*
                             ((g8145
                               (if val7264
                                 val7264
                                 (letrec*
                                  ((val7265
                                    (letrec*
                                     ((x8146
                                       (begin
                                         (write '(funapp 2020 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 2021 38))
                                       (display "\n")
                                       (<= x8146 0)))))
                                  (letrec*
                                   ((g8147
                                     (if val7265
                                       val7265
                                       (letrec*
                                        ((x8148
                                          (begin
                                            (write '(funapp 2027 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 2028 41))
                                          (display "\n")
                                          (>= x8148 BOARD-HEIGHT))))))
                                   g8147)))))
                             g8145)))))
                       g8143))))
                   g8141)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8152
                        (letrec*
                         ((x8153
                           (begin
                             (write '(funapp 2038 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2038 67))
                           (display "\n")
                           (car x8153))))
                       (x8150
                        (letrec*
                         ((x8151
                           (begin
                             (write '(funapp 2040 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 2040 61))
                           (display "\n")
                           (cdr x8151)))))
                      (begin
                        (write '(funapp 2041 23))
                        (display "\n")
                        (segs-self-collide? x8152 x8150)))))
                   g8149)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x-cnd8155
                        (begin
                          (write '(funapp 2048 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8155
                        (letrec* ((g8156 #f)) g8156)
                        (letrec*
                         ((g8157
                           (letrec*
                            ((x8160
                              (letrec*
                               ((x8161
                                 (begin
                                   (write '(funapp 2055 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2055 61))
                                 (display "\n")
                                 (posn=? x8161 h))))
                             (x8158
                              (letrec*
                               ((x8159
                                 (begin
                                   (write '(funapp 2058 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 2059 32))
                                 (display "\n")
                                 (segs-self-collide? h x8159)))))
                            (begin
                              (write '(funapp 2060 29))
                              (display "\n")
                              (or x8160 x8158)))))
                         g8157)))))
                   g8154)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 2068 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8163
                         (letrec*
                          ((x-cnd8164
                            (begin
                              (write '(funapp 2072 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8164
                            (letrec* ((g8165 empty)) g8165)
                            (letrec*
                             ((g8166
                               (letrec*
                                ((x8168
                                  (begin
                                    (write '(funapp 2078 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8167
                                  (begin
                                    (write '(funapp 2078 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 2079 33))
                                  (display "\n")
                                  (cons x8168 x8167)))))
                             g8166)))))
                       g8163))))
                   g8162)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8169
                     (letrec*
                      ((x-cnd8170
                        (begin
                          (write '(funapp 2088 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 2088 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8170
                        (letrec*
                         ((g8171
                           (letrec*
                            ((x8173
                              (letrec*
                               ((x8174
                                 (begin
                                   (write '(funapp 2094 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 2094 63))
                                 (display "\n")
                                 (add1 x8174))))
                             (x8172
                              (begin
                                (write '(funapp 2095 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 2096 29))
                              (display "\n")
                              (posn x8173 x8172)))))
                         g8171)
                        (letrec*
                         ((x-cnd8175
                           (begin
                             (write '(funapp 2099 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 2099 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8175
                           (letrec*
                            ((g8176
                              (letrec*
                               ((x8178
                                 (letrec*
                                  ((x8179
                                    (begin
                                      (write '(funapp 2105 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 2105 66))
                                    (display "\n")
                                    (sub1 x8179))))
                                (x8177
                                 (begin
                                   (write '(funapp 2106 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 2107 32))
                                 (display "\n")
                                 (posn x8178 x8177)))))
                            g8176)
                           (letrec*
                            ((x-cnd8180
                              (begin
                                (write '(funapp 2110 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 2110 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8180
                              (letrec*
                               ((g8181
                                 (letrec*
                                  ((x8184
                                    (begin
                                      (write '(funapp 2115 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8182
                                    (letrec*
                                     ((x8183
                                       (begin
                                         (write '(funapp 2118 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2119 38))
                                       (display "\n")
                                       (sub1 x8183)))))
                                  (begin
                                    (write '(funapp 2120 35))
                                    (display "\n")
                                    (posn x8184 x8182)))))
                               g8181)
                              (letrec*
                               ((g8185
                                 (letrec*
                                  ((x8188
                                    (begin
                                      (write '(funapp 2125 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8186
                                    (letrec*
                                     ((x8187
                                       (begin
                                         (write '(funapp 2128 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 2129 38))
                                       (display "\n")
                                       (add1 x8187)))))
                                  (begin
                                    (write '(funapp 2130 35))
                                    (display "\n")
                                    (posn x8188 x8186)))))
                               g8185)))))))))
                   g8169)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8189
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2138 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8190
                         (letrec*
                          ((x8191
                            (letrec*
                             ((x8194
                               (letrec*
                                ((x8195
                                  (letrec*
                                   ((x8196
                                     (begin
                                       (write '(funapp 2148 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2149 36))
                                     (display "\n")
                                     (car x8196)))))
                                (begin
                                  (write '(funapp 2150 33))
                                  (display "\n")
                                  (next-head x8195 d))))
                              (x8192
                               (letrec*
                                ((x8193
                                  (begin
                                    (write '(funapp 2153 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 2154 33))
                                  (display "\n")
                                  (cut-tail x8193)))))
                             (begin
                               (write '(funapp 2155 30))
                               (display "\n")
                               (cons x8194 x8192)))))
                          (begin
                            (write '(funapp 2156 27))
                            (display "\n")
                            (snake d x8191)))))
                       g8190))))
                   g8189)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8197
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 2164 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8198
                         (letrec*
                          ((x8199
                            (letrec*
                             ((x8201
                               (letrec*
                                ((x8202
                                  (letrec*
                                   ((x8203
                                     (begin
                                       (write '(funapp 2174 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 2175 36))
                                     (display "\n")
                                     (car x8203)))))
                                (begin
                                  (write '(funapp 2176 33))
                                  (display "\n")
                                  (next-head x8202 d))))
                              (x8200
                               (begin
                                 (write '(funapp 2177 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 2178 30))
                               (display "\n")
                               (cons x8201 x8200)))))
                          (begin
                            (write '(funapp 2179 27))
                            (display "\n")
                            (snake d x8199)))))
                       g8198))))
                   g8197)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8204
                     (letrec*
                      ((x-cnd8205
                        (begin
                          (write '(funapp 2187 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8205
                        (letrec*
                         ((g8206
                           (begin
                             (write '(funapp 2189 42))
                             (display "\n")
                             (snake-eat w))))
                         g8206)
                        (letrec*
                         ((g8207
                           (letrec*
                            ((x8209
                              (letrec*
                               ((x8210
                                 (begin
                                   (write '(funapp 2195 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 2196 32))
                                 (display "\n")
                                 (snake-slither x8210))))
                             (x8208
                              (begin
                                (write '(funapp 2197 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 2198 29))
                              (display "\n")
                              (world x8209 x8208)))))
                         g8207)))))
                   g8204)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8211
                     (letrec*
                      ((x8215
                        (begin
                          (write '(funapp 2206 31))
                          (display "\n")
                          (world-food w)))
                       (x8212
                        (letrec*
                         ((x8213
                           (letrec*
                            ((x8214
                              (begin
                                (write '(funapp 2211 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2212 29))
                              (display "\n")
                              (snake-segs x8214)))))
                         (begin
                           (write '(funapp 2213 26))
                           (display "\n")
                           (car x8213)))))
                      (begin
                        (write '(funapp 2214 23))
                        (display "\n")
                        (posn=? x8215 x8212)))))
                   g8211)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8216
                     (letrec*
                      ((x8217
                        (begin
                          (write '(funapp 2220 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2220 58))
                        (display "\n")
                        (snake dir x8217)))))
                   g8216)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8218
                     (letrec*
                      ((x8220
                        (letrec*
                         ((x8221
                           (begin
                             (write '(funapp 2229 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2230 26))
                           (display "\n")
                           (snake-change-direction x8221 dir))))
                       (x8219
                        (begin
                          (write '(funapp 2231 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2232 23))
                        (display "\n")
                        (world x8220 x8219)))))
                   g8218)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8222
                     (letrec*
                      ((x8226
                        (letrec*
                         ((x8227
                           (begin
                             (write '(funapp 2240 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2240 60))
                           (display "\n")
                           (snake-grow x8227))))
                       (x8223
                        (letrec*
                         ((x8225
                           (begin
                             (write '(funapp 2243 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8224
                           (begin
                             (write '(funapp 2243 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2244 26))
                           (display "\n")
                           (posn x8225 x8224)))))
                      (begin
                        (write '(funapp 2245 23))
                        (display "\n")
                        (world x8226 x8223)))))
                   g8222)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8228
                     (letrec*
                      ((x-cnd8229
                        (begin
                          (write '(funapp 2252 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8229
                        (letrec*
                         ((g8230
                           (begin
                             (write '(funapp 2254 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2254 61))
                                (display "\n")
                                'up)))))
                         g8230)
                        (letrec*
                         ((x-cnd8231
                           (begin
                             (write '(funapp 2256 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8231
                           (letrec*
                            ((g8232
                              (begin
                                (write '(funapp 2258 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2258 64))
                                   (display "\n")
                                   'down)))))
                            g8232)
                           (letrec*
                            ((x-cnd8233
                              (begin
                                (write '(funapp 2260 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8233
                              (letrec*
                               ((g8234
                                 (begin
                                   (write '(funapp 2263 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2263 59))
                                      (display "\n")
                                      'left)))))
                               g8234)
                              (letrec*
                               ((x-cnd8235
                                 (begin
                                   (write '(funapp 2266 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8235
                                 (letrec*
                                  ((g8236
                                    (begin
                                      (write '(funapp 2269 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2269 62))
                                         (display "\n")
                                         'right)))))
                                  g8236)
                                 (letrec* ((g8237 w)) g8237)))))))))))
                   g8228)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((val7266
                        (letrec*
                         ((x8239
                           (begin
                             (write '(funapp 2280 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2281 26))
                           (display "\n")
                           (snake-wall-collide? x8239)))))
                      (letrec*
                       ((g8240
                         (if val7266
                           val7266
                           (letrec*
                            ((x8241
                              (begin
                                (write '(funapp 2287 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2288 29))
                              (display "\n")
                              (snake-self-collide? x8241))))))
                       g8240))))
                   g8238)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8242
                     (letrec*
                      ((x8245
                        (begin
                          (write '(funapp 2296 31))
                          (display "\n")
                          (world-snake w)))
                       (x8243
                        (letrec*
                         ((x8244
                           (begin
                             (write '(funapp 2299 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2300 26))
                           (display "\n")
                           (food+scene x8244 BACKGROUND)))))
                      (begin
                        (write '(funapp 2301 23))
                        (display "\n")
                        (snake+scene x8245 x8243)))))
                   g8242)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8246
                     (letrec*
                      ((x8248
                        (begin
                          (write '(funapp 2308 31))
                          (display "\n")
                          (posn-x f)))
                       (x8247
                        (begin
                          (write '(funapp 2308 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2309 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8248 x8247 scn)))))
                   g8246)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8249
                     (letrec*
                      ((x8252
                        (begin
                          (write '(funapp 2316 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8250
                        (letrec*
                         ((x8251
                           (begin
                             (write '(funapp 2319 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2320 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8251)))))
                      (begin
                        (write '(funapp 2321 23))
                        (display "\n")
                        (place-image img x8252 x8250 scn)))))
                   g8249)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8253
                     (letrec*
                      ((x8254
                        (begin
                          (write '(funapp 2328 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2329 23))
                        (display "\n")
                        (segments+scene x8254 scn)))))
                   g8253)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8255
                     (letrec*
                      ((x-cnd8256
                        (begin
                          (write '(funapp 2336 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8256
                        (letrec* ((g8257 scn)) g8257)
                        (letrec*
                         ((g8258
                           (letrec*
                            ((x8261
                              (begin
                                (write '(funapp 2342 37))
                                (display "\n")
                                (cdr segs)))
                             (x8259
                              (letrec*
                               ((x8260
                                 (begin
                                   (write '(funapp 2345 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2346 32))
                                 (display "\n")
                                 (segment+scene x8260 scn)))))
                            (begin
                              (write '(funapp 2347 29))
                              (display "\n")
                              (segments+scene x8261 x8259)))))
                         g8258)))))
                   g8255)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8262
                     (letrec*
                      ((x8264
                        (begin
                          (write '(funapp 2355 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8263
                        (begin
                          (write '(funapp 2355 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2356 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8264 x8263 scn)))))
                   g8262))))
              (letrec*
               ((g8265
                 (begin
                   (write '(funapp 2360 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2361 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7434
                          (begin
                            (write '(funapp 2363 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2363 34))
                               (display "\n")
                               'module))))
                         (xk7435
                          (begin
                            (write '(funapp 2363 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2363 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8266
                           (begin
                             (write '(funapp 2365 30))
                             (display "\n")
                             (real?/c xj7434 xk7435 GRID-SIZE))))
                         g8266))
                       (letrec*
                        ((xj7436
                          (begin
                            (write '(funapp 2368 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2368 34))
                               (display "\n")
                               'module))))
                         (xk7437
                          (begin
                            (write '(funapp 2368 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2368 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8267
                           (begin
                             (write '(funapp 2370 30))
                             (display "\n")
                             (real?/c xj7436 xk7437 BOARD-HEIGHT-PIXELS))))
                         g8267))
                       (letrec*
                        ((xj7438
                          (begin
                            (write '(funapp 2373 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2373 34))
                               (display "\n")
                               'module))))
                         (xk7439
                          (begin
                            (write '(funapp 2373 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2373 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8268
                           (begin
                             (write '(funapp 2375 30))
                             (display "\n")
                             (real?/c xj7438 xk7439 BOARD-WIDTH))))
                         g8268))
                       (letrec*
                        ((xj7440
                          (begin
                            (write '(funapp 2378 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2378 34))
                               (display "\n")
                               'module))))
                         (xk7441
                          (begin
                            (write '(funapp 2378 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2378 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8269
                           (begin
                             (write '(funapp 2380 30))
                             (display "\n")
                             (real?/c xj7440 xk7441 BOARD-HEIGHT))))
                         g8269))))))))
               g8265))))
           g7486))))
       g7469)))
    g7468)))
