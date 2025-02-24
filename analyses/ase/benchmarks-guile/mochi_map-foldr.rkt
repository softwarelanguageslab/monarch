(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7422 #t)) g7422)))
    (meta (lambda (v) (letrec* ((g7423 v)) g7423)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7424
          (letrec*
           ((g7425
             (letrec*
              ((x-e7426 lst))
              (letrec*
               ((v1742 x-e7426))
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
                   ((x-cnd7427
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7427
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
           g7425)))
        g7424)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7428 (lambda (v) (letrec* ((g7429 v)) g7429)))) g7428)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7430
          (letrec*
           ((x7431 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7431)))))
        g7430))))
   (letrec*
    ((g7432
      (letrec*
       ((g7433
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7434
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7434)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7435
                 (letrec*
                  ((x7437
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7437))))
                (g7436
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7438
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7439 (if val7245 val7245 #f))) g7439)))))
                   g7438))))
               g7436)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7440
                 (letrec*
                  ((x7442
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7442))))
                (g7441
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7443
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7444 (if val7247 val7247 #f))) g7444)))))
                   g7443))))
               g7441)))
           (>
            (lambda (x y)
              (letrec*
               ((g7445
                 (letrec*
                  ((x7447
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7447))))
                (g7446
                 (letrec*
                  ((x7448
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7448)))))
               g7446)))
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
           ((g7449 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7450
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7451
                     (lambda (k j lst)
                       (letrec*
                        ((g7452
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7453
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7453))
                             lst))))
                        g7452))))
                   g7451)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7455
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7454)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7457
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7456)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7459
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7458)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7462 #t)) g7462)) g7273))))
                      (if x-cnd7461
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7460)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7465 #t)) g7465)) g7276))))
                      (if x-cnd7464
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7463)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7467
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7466)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7469
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7468)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7471
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7470)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7473
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7472)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7475
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7474)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7476
                     (lambda (k j v)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7478
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7477))))
                   g7476)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7479
                     (lambda (k j v)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7481
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7485
                                (letrec*
                                 ((x7486
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7486))))
                               (x7482
                                (letrec*
                                 ((x7484
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7483
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7484 k j x7483)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7485 x7482)))))))
                        g7480))))
                   g7479)))
               (any? (lambda (v) (letrec* ((g7487 #t)) g7487)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7489)))))
                   g7488)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7492
                                (letrec*
                                 ((x7493
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7493)))))
                              g7492))
                           g7294))))
                      (if x-cnd7491
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7490)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7497
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7497))
                                g7297))))
                           (if x-cnd7496
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7495))))
                   g7494)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7498
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7499
                          (letrec*
                           ((x-cnd7500
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7501
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7501))
                                g7300))))
                           (if x-cnd7500
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7499))))
                   g7498)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7502
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7503
                          (letrec*
                           ((x-cnd7504
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7505
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7505))
                                g7303))))
                           (if x-cnd7504
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7503))))
                   g7502)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7507
                          (letrec*
                           ((x-cnd7508
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7509
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7509))
                                g7306))))
                           (if x-cnd7508
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7507))))
                   g7506)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7510
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7511
                          (letrec*
                           ((x-cnd7512
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7513
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7513))
                                g7309))))
                           (if x-cnd7512
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7511))))
                   g7510)))
               (meta (lambda (v) (letrec* ((g7514 v)) g7514)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7515
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7517
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7518
                                 (letrec*
                                  ((x7519
                                    (letrec*
                                     ((x7521
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7520
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7521 x7520)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7519)))))
                               g7518))))
                          g7517))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7516
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7516))))))
                  g7515)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7522
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7524
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7525
                                 (letrec*
                                  ((x7526
                                    (letrec*
                                     ((x7528
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7527
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7528 x7527)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7526)))))
                               g7525))))
                          g7524))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7523
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7523))))))
                  g7522)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7529
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7531
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7532
                                 (letrec*
                                  ((x7533
                                    (letrec*
                                     ((x7535
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7534
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7535 x7534)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7533)))))
                               g7532))))
                          g7531))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7530
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7530))))))
                  g7529)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7536
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7538
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7539
                                 (letrec*
                                  ((x7540
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7541
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7542 x7541)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7540)))))
                               g7539))))
                          g7538))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7537
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7537))))))
                  g7536)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7545
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7548
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7547)))))
                               g7546))))
                          g7545))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7544))))))
                  g7543)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7552
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7555
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7556 x7555)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7554)))))
                               g7553))))
                          g7552))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7551))))))
                  g7550)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7559
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7562
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7563 x7562)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7561)))))
                               g7560))))
                          g7559))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7558))))))
                  g7557)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7566
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7569
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7570 x7569)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7568)))))
                               g7567))))
                          g7566))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7565))))))
                  g7564)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7573
                            (lambda (g7368)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7576)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7575)))))
                               g7574))))
                          g7573))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7572))))))
                  g7571)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7579
                            (lambda (g7374)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7582)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7581)))))
                               g7580))))
                          g7579))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7578))))))
                  g7577)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7585
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7588
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7589 x7588)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7587)))))
                               g7586))))
                          g7585))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7584))))))
                  g7583)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7592
                            (lambda (g7387)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7595)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7594)))))
                               g7593))))
                          g7592))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7591))))))
                  g7590)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7598
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7601
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7602 x7601)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7600)))))
                               g7599))))
                          g7598))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7597))))))
                  g7596)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x-cnd7611
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7611
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7615))))
                          (x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7613)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7614 x7612)))))))
                   g7608)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7620)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7625)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7630))))
                    (g7628
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
                       ((g7631
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7632 res))
                       g7632))))
                   g7628)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7635)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7639)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        #f
                        (letrec*
                         ((x-cnd7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7645 k)))))
                         (if x-cnd7644
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7646)))))))))
                   g7641)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7648)))))
                   g7647)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7652
                        ""
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7656))))
                          (x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7654)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7655 x7653)))))))
                   g7650)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7662
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7662))))
                   g7659)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7666)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7665)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7664)))))
                   g7663)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7672
                        x
                        (letrec*
                         ((x7674
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7673
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7674 x7673)))))))
                   g7669)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7675
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7675)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x-cnd7677
                        (letrec*
                         ((x7678 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7678)))))
                      (if x-cnd7677
                        (letrec*
                         ((x7679 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7679)))
                        #f))))
                   g7676)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7681
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7681 9)))))
                      (letrec*
                       ((g7682
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7683
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7683 10)))))
                            (letrec*
                             ((g7684
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7685
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7685 32))))))
                             g7684)))))
                       g7682))))
                   g7680)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7687
                        (letrec*
                         ((x7688
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7688)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7687)))))
                   g7686)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7691))))
                    (g7690
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7690)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7692 #f)) g7692)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7694)))))
                   g7693)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7697))))
                    (g7696
                     (letrec*
                      ((x-cnd7698
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7698
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7696)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7700
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7701
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7701
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7702
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7703
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7703
                                       (letrec*
                                        ((x-cnd7704
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7704
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7705
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7706
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7706
                                             (letrec*
                                              ((x-cnd7707
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7707
                                                (letrec*
                                                 ((x-cnd7708
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7709
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7710 x7709)))))
                                                 (if x-cnd7708
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7711
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7712 x7711)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7713
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7714
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7714
                                                (letrec*
                                                 ((x-cnd7715
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7715
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7716
                                                       (letrec*
                                                        ((x-cnd7717
                                                          (letrec*
                                                           ((x7718
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
                                                             (= x7718 n)))))
                                                        (if x-cnd7717
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7719
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
                                                                    ((g7720
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7721
                                                                           (letrec*
                                                                            ((x7723
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
                                                                             (x7722
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
                                                                               x7723
                                                                               x7722)))))
                                                                         (if x-cnd7721
                                                                           (letrec*
                                                                            ((x7724
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
                                                                               x7724)))
                                                                           #f)))))
                                                                    g7720))))
                                                                g7719))))
                                                           (letrec*
                                                            ((g7725
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7725))
                                                          #f))))
                                                     g7716))
                                                   #f))
                                                #f)))))
                                         g7713)))))
                                   g7705)))))
                             g7702)))))
                       g7700))))
                   g7699)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7729)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7734
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7734)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7739))))
                    (g7737
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
                       ((g7740
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7741 res))
                       g7741))))
                   g7737)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7742
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7742)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7748
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7748))))
                   g7745)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7755)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7767)))))
                   g7764)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7773)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7775
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7775)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7779
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7779)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7787))))
                          (x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7785)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7786 x7784)))))))
                   g7781)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7794)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7799)))))
                   g7797)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7803)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7809
                        (letrec*
                         ((g7810
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7810)
                        (letrec*
                         ((x-cnd7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7812)))))
                         (if x-cnd7811
                           (letrec*
                            ((g7813
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7814)))))
                            g7813)
                           (letrec*
                            ((x-cnd7815
                              (letrec*
                               ((x7816
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7816)))))
                            (if x-cnd7815
                              (letrec*
                               ((g7817
                                 (letrec*
                                  ((x7819
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7818
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7819 x7818)))))
                               g7817)
                              (letrec*
                               ((x-cnd7820
                                 (letrec*
                                  ((x7821
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7821)))))
                               (if x-cnd7820
                                 (letrec*
                                  ((g7822
                                    (letrec*
                                     ((x7825
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7824
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7823
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7825 x7824 x7823)))))
                                  g7822)
                                 (letrec*
                                  ((x-cnd7826
                                    (letrec*
                                     ((x7827
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7827)))))
                                  (if x-cnd7826
                                    (letrec*
                                     ((g7828
                                       (letrec*
                                        ((x7832
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7831
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7832 x7831 x7830 x7829)))))
                                     g7828)
                                    (letrec*
                                     ((x-cnd7833
                                       (letrec*
                                        ((x7834
                                          (letrec*
                                           ((x7835
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7835)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7834)))))
                                     (if x-cnd7833
                                       (letrec*
                                        ((g7836
                                          (letrec*
                                           ((x7842
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7841
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7837
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7838)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7842
                                              x7841
                                              x7840
                                              x7839
                                              x7837)))))
                                        g7836)
                                       (letrec*
                                        ((x-cnd7843
                                          (letrec*
                                           ((x7844
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7845)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7844)))))
                                        (if x-cnd7843
                                          (letrec*
                                           ((g7846
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7853
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7850))))
                                               (x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7848)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7854
                                                 x7853
                                                 x7852
                                                 x7851
                                                 x7849
                                                 x7847)))))
                                           g7846)
                                          (letrec*
                                           ((x-cnd7855
                                             (letrec*
                                              ((x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7857)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7856)))))
                                           (if x-cnd7855
                                             (letrec*
                                              ((g7858
                                                (letrec*
                                                 ((x7868
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7867
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7864))))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7862))))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7860)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7868
                                                    x7867
                                                    x7866
                                                    x7865
                                                    x7863
                                                    x7861
                                                    x7859)))))
                                              g7858)
                                             (letrec*
                                              ((g7869
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7869)))))))))))))))))))
                   g7806)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7873
                        #f
                        (letrec*
                         ((x-cnd7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7875 e)))))
                         (if x-cnd7874
                           l
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7876)))))))))
                   g7871)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (letrec*
                         ((x7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7879)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7878)))))
                   g7877)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7885
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7885)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7887)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7890
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7890))))
                   g7889)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7892)))))
                   g7891)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7894
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7895)))
                           #f))))
                      (letrec*
                       ((g7896
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7896))))
                   g7893)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7900)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7899)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7898)))))
                   g7897)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x-cnd7902
                        (letrec*
                         ((x7903 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7903 c)))))
                      (if x-cnd7902
                        (letrec*
                         ((x7904 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7904)))
                        #f))))
                   g7901)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7907))))
                    (g7906
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7910 k)))))
                         (if x-cnd7909
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7911)))))))))
                   g7906)))
               (not (lambda (x) (letrec* ((g7912 (if x #f #t))) g7912)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7913
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7913)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7919 e)))))
                         (if x-cnd7918
                           l
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7920)))))))))
                   g7915)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7924)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7923)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7928
                             (letrec*
                              ((x-cnd7929
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7929
                                0
                                (letrec*
                                 ((x7930
                                   (letrec*
                                    ((x7931
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7931)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7930)))))))
                           g7928))))
                      (letrec*
                       ((g7932
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7932))))
                   g7926)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7938
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7938))))
                   g7935)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7940)))))
                   g7939)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (letrec*
                         ((x7943
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7943)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7942)))))
                   g7941)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #f
                        (letrec*
                         ((x-cnd7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7949 k)))))
                         (if x-cnd7948
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7950)))))))))
                   g7945)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7952)))))
                   g7951)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7958)))))
                   g7955)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7960
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7960))))
                   g7959)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7966
                        #t
                        (letrec*
                         ((x-cnd7967
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7967
                           (letrec*
                            ((g7968
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7970))))
                             (g7969
                              (letrec*
                               ((x7971
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7971)))))
                            g7969)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7963)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7974))))
                    (g7973
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7975
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7973)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7981
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7981))))
                   g7978)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (letrec*
                            ((x7985
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7985)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7984)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7983)))))
                   g7982)))
               (newline (lambda () (letrec* ((g7986 #f)) g7986)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7990))))
                       (x7988
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7989 x7988)))))
                   g7987)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7998)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7997))))
                    (g7994
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7999
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x8000
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8001 x8000)))))))
                   g7994)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x-cnd8003
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8003
                        a
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8004)))))))
                   g8002)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8006
                        z
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car xs)))
                          (x8007
                           (letrec*
                            ((x8008
                              (begin
                                (write '(funapp 1671 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1671 56))
                              (display "\n")
                              (foldr f z x8008)))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (f x8009 x8007)))))))
                   g8005)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8010
                     (begin
                       (write '(funapp 1678 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8011
                             (letrec*
                              ((x8012
                                (begin
                                  (write '(funapp 1681 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1681 59))
                                (display "\n")
                                (cons x8012 ys)))))
                           g8011))
                        empty
                        xs))))
                   g8010))))
              (letrec*
               ((g8013
                 (begin
                   (write '(funapp 1688 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1689 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8017
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1693 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1693 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1693 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1693 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8018
                              (begin
                                (write '(funapp 1696 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8019
                                      (lambda (g7400 g7401 g7402)
                                        (letrec*
                                         ((g8020
                                           (letrec*
                                            ((x8021
                                              (letrec*
                                               ((x8025
                                                 (begin
                                                   (write '(funapp 1706 44))
                                                   (display "\n")
                                                   ((lambda (j7408 k7409 f7410)
                                                      (letrec*
                                                       ((g8026
                                                         (lambda (g7406 g7407)
                                                           (letrec*
                                                            ((g8027
                                                              (letrec*
                                                               ((x8028
                                                                 (letrec*
                                                                  ((x8030
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1716
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7408
                                                                       k7409
                                                                       g7406)))
                                                                   (x8029
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1721
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7408
                                                                       k7409
                                                                       g7407))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1725
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7410
                                                                     x8030
                                                                     x8029)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1728
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7408
                                                                  k7409
                                                                  x8028)))))
                                                            g8027))))
                                                       g8026))
                                                    j7403
                                                    k7404
                                                    g7400)))
                                                (x8024
                                                 (begin
                                                   (write '(funapp 1737 50))
                                                   (display "\n")
                                                   (any/c j7403 k7404 g7401)))
                                                (x8022
                                                 (letrec*
                                                  ((x8023
                                                    (begin
                                                      (write '(funapp 1740 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1741 45))
                                                    (display "\n")
                                                    (x8023
                                                     j7403
                                                     k7404
                                                     g7402)))))
                                               (begin
                                                 (write '(funapp 1742 42))
                                                 (display "\n")
                                                 (f7405 x8025 x8024 x8022)))))
                                            (begin
                                              (write '(funapp 1743 39))
                                              (display "\n")
                                              (any/c j7403 k7404 x8021)))))
                                         g8020))))
                                    g8019))
                                 xj7398
                                 xk7399
                                 foldr))))
                            g8018)))
                         (x8016 (input))
                         (x8015 (input))
                         (x8014 (input)))
                        (begin
                          (write '(funapp 1753 21))
                          (display "\n")
                          (x8017 x8016 x8015 x8014)))
                       (letrec*
                        ((x8033
                          (letrec*
                           ((xj7411
                             (begin
                               (write '(funapp 1757 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1757 37))
                                  (display "\n")
                                  'module))))
                            (xk7412
                             (begin
                               (write '(funapp 1757 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1757 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8034
                              (begin
                                (write '(funapp 1760 27))
                                (display "\n")
                                ((lambda (j7415 k7416 f7417)
                                   (letrec*
                                    ((g8035
                                      (lambda (g7413 g7414)
                                        (letrec*
                                         ((g8036
                                           (letrec*
                                            ((x8045
                                              (begin
                                                (write '(funapp 1767 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8037
                                              (letrec*
                                               ((x8040
                                                 (begin
                                                   (write '(funapp 1771 44))
                                                   (display "\n")
                                                   ((lambda (j7419 k7420 f7421)
                                                      (letrec*
                                                       ((g8041
                                                         (lambda (g7418)
                                                           (letrec*
                                                            ((g8042
                                                              (letrec*
                                                               ((x8043
                                                                 (letrec*
                                                                  ((x8044
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1781
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7419
                                                                       k7420
                                                                       g7418))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1785
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7421
                                                                     x8044)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1786
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7419
                                                                  k7420
                                                                  x8043)))))
                                                            g8042))))
                                                       g8041))
                                                    j7415
                                                    k7416
                                                    g7413)))
                                                (x8038
                                                 (letrec*
                                                  ((x8039
                                                    (begin
                                                      (write '(funapp 1797 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1798 45))
                                                    (display "\n")
                                                    (x8039
                                                     j7415
                                                     k7416
                                                     g7414)))))
                                               (begin
                                                 (write '(funapp 1799 42))
                                                 (display "\n")
                                                 (f7417 x8040 x8038)))))
                                            (begin
                                              (write '(funapp 1800 39))
                                              (display "\n")
                                              (x8045 j7415 k7416 x8037)))))
                                         g8036))))
                                    g8035))
                                 xj7411
                                 xk7412
                                 map_))))
                            g8034)))
                         (x8032 (input))
                         (x8031 (input)))
                        (begin
                          (write '(funapp 1809 21))
                          (display "\n")
                          (x8033 x8032 x8031)))))))))
               g8013))))
           g7450))))
       g7433)))
    g7432)))
