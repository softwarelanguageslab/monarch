(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7416 #t)) g7416)))
    (meta (lambda (v) (letrec* ((g7417 v)) g7417)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7418
          (letrec*
           ((g7419
             (letrec*
              ((x-e7420 lst))
              (letrec*
               ((v1742 x-e7420))
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
                   ((x-cnd7421
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7421
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
           g7419)))
        g7418)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7422 (lambda (v) (letrec* ((g7423 v)) g7423)))) g7422)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7424
          (letrec*
           ((x7425 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7425)))))
        g7424))))
   (letrec*
    ((g7426
      (letrec*
       ((g7427
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7428
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7428)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7429
                 (letrec*
                  ((x7431
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7431))))
                (g7430
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7432
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7433 (if val7245 val7245 #f))) g7433)))))
                   g7432))))
               g7430)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7434
                 (letrec*
                  ((x7436
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7436))))
                (g7435
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7437
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7438 (if val7247 val7247 #f))) g7438)))))
                   g7437))))
               g7435)))
           (>
            (lambda (x y)
              (letrec*
               ((g7439
                 (letrec*
                  ((x7441
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7441))))
                (g7440
                 (letrec*
                  ((x7442
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7442)))))
               g7440)))
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
           ((g7443 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7444
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7445
                     (lambda (k j lst)
                       (letrec*
                        ((g7446
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7447
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7447))
                             lst))))
                        g7446))))
                   g7445)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7449
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7448)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7451
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7450)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7453
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7452)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7456 #t)) g7456)) g7273))))
                      (if x-cnd7455
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7454)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7459 #t)) g7459)) g7276))))
                      (if x-cnd7458
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7457)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7461
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7460)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7463
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7462)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7465
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7464)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7467
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7466)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7469
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7468)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7471))))
                   g7470)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7473
                     (lambda (k j v)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((x-cnd7475
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7475
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7479
                                (letrec*
                                 ((x7480
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7480))))
                               (x7476
                                (letrec*
                                 ((x7478
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7477
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7478 k j x7477)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7479 x7476)))))))
                        g7474))))
                   g7473)))
               (any? (lambda (v) (letrec* ((g7481 #t)) g7481)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7483)))))
                   g7482)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7486
                                (letrec*
                                 ((x7487
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7487)))))
                              g7486))
                           g7294))))
                      (if x-cnd7485
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7484)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7491))
                                g7297))))
                           (if x-cnd7490
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7489))))
                   g7488)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7495))
                                g7300))))
                           (if x-cnd7494
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7493))))
                   g7492)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7499))
                                g7303))))
                           (if x-cnd7498
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7497))))
                   g7496)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7503))
                                g7306))))
                           (if x-cnd7502
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7501))))
                   g7500)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7504
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7505
                          (letrec*
                           ((x-cnd7506
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7507
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7507))
                                g7309))))
                           (if x-cnd7506
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7505))))
                   g7504)))
               (meta (lambda (v) (letrec* ((g7508 v)) g7508)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7511
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7514
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7513)))))
                               g7512))))
                          g7511))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7510))))))
                  g7509)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7518
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7521
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7520)))))
                               g7519))))
                          g7518))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7517))))))
                  g7516)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7525
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7528
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7527)))))
                               g7526))))
                          g7525))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7524))))))
                  g7523)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7532
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7535
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7534)))))
                               g7533))))
                          g7532))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7531))))))
                  g7530)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7539
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7542
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7541)))))
                               g7540))))
                          g7539))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7538))))))
                  g7537)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7546
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7549
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7548)))))
                               g7547))))
                          g7546))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7545))))))
                  g7544)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7553
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7556
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7555)))))
                               g7554))))
                          g7553))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7552))))))
                  g7551)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7560
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7563
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7564 x7563)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7562)))))
                               g7561))))
                          g7560))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7559))))))
                  g7558)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7567
                            (lambda (g7368)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7570)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7569)))))
                               g7568))))
                          g7567))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7566))))))
                  g7565)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7573
                            (lambda (g7374)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7576)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7575)))))
                               g7574))))
                          g7573))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7572))))))
                  g7571)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7579
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7582
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7583 x7582)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7581)))))
                               g7580))))
                          g7579))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7578))))))
                  g7577)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7586
                            (lambda (g7387)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7589)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7588)))))
                               g7587))))
                          g7586))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7585))))))
                  g7584)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7592
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7595
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7596 x7595)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7594)))))
                               g7593))))
                          g7592))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7591))))))
                  g7590)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7599)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7605
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7609))))
                          (x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7607)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7608 x7606)))))))
                   g7602)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7615)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7624))))
                    (g7622
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
                       ((g7625
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7626 res))
                       g7626))))
                   g7622)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7629)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7633)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        #f
                        (letrec*
                         ((x-cnd7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7639 k)))))
                         (if x-cnd7638
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7640)))))))))
                   g7635)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7642)))))
                   g7641)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7646
                        ""
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7650))))
                          (x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7648)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7649 x7647)))))))
                   g7644)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7656
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7656))))
                   g7653)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7660)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7659)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7658)))))
                   g7657)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7666
                        x
                        (letrec*
                         ((x7668
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7667
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7668 x7667)))))))
                   g7663)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7669
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7669)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x-cnd7671
                        (letrec*
                         ((x7672 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7672)))))
                      (if x-cnd7671
                        (letrec*
                         ((x7673 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7673)))
                        #f))))
                   g7670)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7675
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7675 9)))))
                      (letrec*
                       ((g7676
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7677
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7677 10)))))
                            (letrec*
                             ((g7678
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7679 32))))))
                             g7678)))))
                       g7676))))
                   g7674)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7682)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7685))))
                    (g7684
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7684)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7686 #f)) g7686)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7691))))
                    (g7690
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7692
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7690)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7694
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7695
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7695
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7696
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7697
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7697
                                       (letrec*
                                        ((x-cnd7698
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7698
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7699
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7700
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7700
                                             (letrec*
                                              ((x-cnd7701
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7701
                                                (letrec*
                                                 ((x-cnd7702
                                                   (letrec*
                                                    ((x7704
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7703
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7704 x7703)))))
                                                 (if x-cnd7702
                                                   (letrec*
                                                    ((x7706
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7705
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7706 x7705)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7707
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7708
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7708
                                                (letrec*
                                                 ((x-cnd7709
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7709
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7710
                                                       (letrec*
                                                        ((x-cnd7711
                                                          (letrec*
                                                           ((x7712
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
                                                             (= x7712 n)))))
                                                        (if x-cnd7711
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7713
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
                                                                    ((g7714
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7715
                                                                           (letrec*
                                                                            ((x7717
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
                                                                             (x7716
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
                                                                               x7717
                                                                               x7716)))))
                                                                         (if x-cnd7715
                                                                           (letrec*
                                                                            ((x7718
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
                                                                               x7718)))
                                                                           #f)))))
                                                                    g7714))))
                                                                g7713))))
                                                           (letrec*
                                                            ((g7719
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7719))
                                                          #f))))
                                                     g7710))
                                                   #f))
                                                #f)))))
                                         g7707)))))
                                   g7699)))))
                             g7696)))))
                       g7694))))
                   g7693)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7723)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7725)))))
                   g7724)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7728
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7728)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7733))))
                    (g7731
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
                       ((g7734
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7735 res))
                       g7735))))
                   g7731)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7736)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7742
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7742))))
                   g7739)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7749)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7761)))))
                   g7758)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7767)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7769)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7773
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7773)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x-cnd7777
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7777
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7781))))
                          (x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7779)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7780 x7778)))))))
                   g7775)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7788)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7787)))))
                   g7786)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7793)))))
                   g7791)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7797)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7803
                        (letrec*
                         ((g7804
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7804)
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7806)))))
                         (if x-cnd7805
                           (letrec*
                            ((g7807
                              (letrec*
                               ((x7808
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7808)))))
                            g7807)
                           (letrec*
                            ((x-cnd7809
                              (letrec*
                               ((x7810
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7810)))))
                            (if x-cnd7809
                              (letrec*
                               ((g7811
                                 (letrec*
                                  ((x7813
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7812
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7813 x7812)))))
                               g7811)
                              (letrec*
                               ((x-cnd7814
                                 (letrec*
                                  ((x7815
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7815)))))
                               (if x-cnd7814
                                 (letrec*
                                  ((g7816
                                    (letrec*
                                     ((x7819
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7818
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7817
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7819 x7818 x7817)))))
                                  g7816)
                                 (letrec*
                                  ((x-cnd7820
                                    (letrec*
                                     ((x7821
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7821)))))
                                  (if x-cnd7820
                                    (letrec*
                                     ((g7822
                                       (letrec*
                                        ((x7826
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7825
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7824
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7823
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7826 x7825 x7824 x7823)))))
                                     g7822)
                                    (letrec*
                                     ((x-cnd7827
                                       (letrec*
                                        ((x7828
                                          (letrec*
                                           ((x7829
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7829)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7828)))))
                                     (if x-cnd7827
                                       (letrec*
                                        ((g7830
                                          (letrec*
                                           ((x7836
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7835
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7834
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7833
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7831
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7832)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7836
                                              x7835
                                              x7834
                                              x7833
                                              x7831)))))
                                        g7830)
                                       (letrec*
                                        ((x-cnd7837
                                          (letrec*
                                           ((x7838
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7839)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7838)))))
                                        (if x-cnd7837
                                          (letrec*
                                           ((g7840
                                             (letrec*
                                              ((x7848
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7847
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7845
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7844))))
                                               (x7841
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7842)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7848
                                                 x7847
                                                 x7846
                                                 x7845
                                                 x7843
                                                 x7841)))))
                                           g7840)
                                          (letrec*
                                           ((x-cnd7849
                                             (letrec*
                                              ((x7850
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7851)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7850)))))
                                           (if x-cnd7849
                                             (letrec*
                                              ((g7852
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7861
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7860
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7859
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7858))))
                                                  (x7855
                                                   (letrec*
                                                    ((x7856
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7856))))
                                                  (x7853
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7854)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7862
                                                    x7861
                                                    x7860
                                                    x7859
                                                    x7857
                                                    x7855
                                                    x7853)))))
                                              g7852)
                                             (letrec*
                                              ((g7863
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7863)))))))))))))))))))
                   g7800)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7867
                        #f
                        (letrec*
                         ((x-cnd7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7869 e)))))
                         (if x-cnd7868
                           l
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7870)))))))))
                   g7865)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7874)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7879
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7879)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7881)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7884
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7884))))
                   g7883)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7888
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7889)))
                           #f))))
                      (letrec*
                       ((g7890
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7890))))
                   g7887)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7892
                        (letrec*
                         ((x7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7894)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7892)))))
                   g7891)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x-cnd7896
                        (letrec*
                         ((x7897 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7897 c)))))
                      (if x-cnd7896
                        (letrec*
                         ((x7898 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7898)))
                        #f))))
                   g7895)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7902
                        #f
                        (letrec*
                         ((x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7904 k)))))
                         (if x-cnd7903
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7905)))))))))
                   g7900)))
               (not (lambda (x) (letrec* ((g7906 (if x #f #t))) g7906)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7907
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7907)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((x-cnd7911
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7911
                        #f
                        (letrec*
                         ((x-cnd7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7913 e)))))
                         (if x-cnd7912
                           l
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7914)))))))))
                   g7909)))
               (cadaar
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
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7918)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7917)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7922
                             (letrec*
                              ((x-cnd7923
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7923
                                0
                                (letrec*
                                 ((x7924
                                   (letrec*
                                    ((x7925
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7925)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7924)))))))
                           g7922))))
                      (letrec*
                       ((g7926
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7926))))
                   g7920)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7932
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7932))))
                   g7929)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7934)))))
                   g7933)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7937)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7936)))))
                   g7935)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        #f
                        (letrec*
                         ((x-cnd7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7943 k)))))
                         (if x-cnd7942
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7944
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7944)))))))))
                   g7939)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7946)))))
                   g7945)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7952)))))
                   g7949)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7954
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7954))))
                   g7953)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7960
                        #t
                        (letrec*
                         ((x-cnd7961
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7961
                           (letrec*
                            ((g7962
                              (letrec*
                               ((x7964
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7964))))
                             (g7963
                              (letrec*
                               ((x7965
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7965)))))
                            g7963)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7957)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7968))))
                    (g7967
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7969
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7967)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7975
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7975))))
                   g7972)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (letrec*
                            ((x7979
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7979)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7978)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7977)))))
                   g7976)))
               (newline (lambda () (letrec* ((g7980 #f)) g7980)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7984))))
                       (x7982
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7983 x7982)))))
                   g7981)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7992)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7991))))
                    (g7988
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7993
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7994
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7995 x7994)))))))
                   g7988)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7997
                        a
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7998)))))))
                   g7996)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8000
                        ys
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car xs)))
                          (x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1671 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1671 56))
                              (display "\n")
                              (mappend x8002 ys)))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (cons x8003 x8001)))))))
                   g7999)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8005
                        empty
                        (letrec*
                         ((x8008
                           (letrec*
                            ((x8009
                              (begin
                                (write '(funapp 1683 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1683 62))
                              (display "\n")
                              (f x8009))))
                          (x8006
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1685 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1685 56))
                              (display "\n")
                              (map-append f x8007)))))
                         (begin
                           (write '(funapp 1686 26))
                           (display "\n")
                           (mappend x8008 x8006)))))))
                   g8004))))
              (letrec*
               ((g8010
                 (begin
                   (write '(funapp 1690 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1691 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8013
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1695 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1695 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1695 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1695 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8014
                              (begin
                                (write '(funapp 1698 27))
                                (display "\n")
                                ((lambda (j7402 k7403 f7404)
                                   (letrec*
                                    ((g8015
                                      (lambda (g7400 g7401)
                                        (letrec*
                                         ((g8016
                                           (letrec*
                                            ((x8026
                                              (begin
                                                (write '(funapp 1705 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8017
                                              (letrec*
                                               ((x8020
                                                 (begin
                                                   (write '(funapp 1709 44))
                                                   (display "\n")
                                                   ((lambda (j7406 k7407 f7408)
                                                      (letrec*
                                                       ((g8021
                                                         (lambda (g7405)
                                                           (letrec*
                                                            ((g8022
                                                              (letrec*
                                                               ((x8025
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1716
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8023
                                                                 (letrec*
                                                                  ((x8024
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1720
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7406
                                                                       k7407
                                                                       g7405))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1724
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7408
                                                                     x8024)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1725
                                                                    56))
                                                                 (display "\n")
                                                                 (x8025
                                                                  j7406
                                                                  k7407
                                                                  x8023)))))
                                                            g8022))))
                                                       g8021))
                                                    j7402
                                                    k7403
                                                    g7400)))
                                                (x8018
                                                 (letrec*
                                                  ((x8019
                                                    (begin
                                                      (write '(funapp 1736 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1737 45))
                                                    (display "\n")
                                                    (x8019
                                                     j7402
                                                     k7403
                                                     g7401)))))
                                               (begin
                                                 (write '(funapp 1738 42))
                                                 (display "\n")
                                                 (f7404 x8020 x8018)))))
                                            (begin
                                              (write '(funapp 1739 39))
                                              (display "\n")
                                              (x8026 j7402 k7403 x8017)))))
                                         g8016))))
                                    g8015))
                                 xj7398
                                 xk7399
                                 map-append))))
                            g8014)))
                         (x8012 (input))
                         (x8011 (input)))
                        (begin
                          (write '(funapp 1748 21))
                          (display "\n")
                          (x8013 x8012 x8011)))
                       (letrec*
                        ((x8029
                          (letrec*
                           ((xj7409
                             (begin
                               (write '(funapp 1752 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1752 37))
                                  (display "\n")
                                  'module))))
                            (xk7410
                             (begin
                               (write '(funapp 1752 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1752 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8030
                              (begin
                                (write '(funapp 1755 27))
                                (display "\n")
                                ((lambda (j7413 k7414 f7415)
                                   (letrec*
                                    ((g8031
                                      (lambda (g7411 g7412)
                                        (letrec*
                                         ((g8032
                                           (letrec*
                                            ((x8038
                                              (begin
                                                (write '(funapp 1762 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8033
                                              (letrec*
                                               ((x8036
                                                 (letrec*
                                                  ((x8037
                                                    (begin
                                                      (write '(funapp 1767 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1768 45))
                                                    (display "\n")
                                                    (x8037
                                                     j7413
                                                     k7414
                                                     g7411))))
                                                (x8034
                                                 (letrec*
                                                  ((x8035
                                                    (begin
                                                      (write '(funapp 1771 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1772 45))
                                                    (display "\n")
                                                    (x8035
                                                     j7413
                                                     k7414
                                                     g7412)))))
                                               (begin
                                                 (write '(funapp 1773 42))
                                                 (display "\n")
                                                 (f7415 x8036 x8034)))))
                                            (begin
                                              (write '(funapp 1774 39))
                                              (display "\n")
                                              (x8038 j7413 k7414 x8033)))))
                                         g8032))))
                                    g8031))
                                 xj7409
                                 xk7410
                                 mappend))))
                            g8030)))
                         (x8028 (input))
                         (x8027 (input)))
                        (begin
                          (write '(funapp 1783 21))
                          (display "\n")
                          (x8029 x8028 x8027)))))))))
               g8010))))
           g7444))))
       g7427)))
    g7426)))
