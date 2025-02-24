(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7418 #t)) g7418)))
    (meta (lambda (v) (letrec* ((g7419 v)) g7419)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7420
          (letrec*
           ((g7421
             (letrec*
              ((x-e7422 lst))
              (letrec*
               ((v1742 x-e7422))
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
                   ((x-cnd7423
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7423
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
           g7421)))
        g7420)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7424 (lambda (v) (letrec* ((g7425 v)) g7425)))) g7424)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7426
          (letrec*
           ((x7427 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7427)))))
        g7426))))
   (letrec*
    ((g7428
      (letrec*
       ((g7429
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
           ((g7430 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7431
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7432
                     (lambda (k j lst)
                       (letrec*
                        ((g7433
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7434
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7434))
                             lst))))
                        g7433))))
                   g7432)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7436
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7435)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7438
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7437)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7440
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7439)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7443 #t)) g7443)) g7272))))
                      (if x-cnd7442
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7441)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7446 #t)) g7446)) g7275))))
                      (if x-cnd7445
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7444)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7448
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7447)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7450
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7449)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7452
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7451)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7454
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7453)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7455
                     (lambda (k j v)
                       (letrec*
                        ((g7456
                          (letrec*
                           ((x-cnd7457
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7457
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7456))))
                   g7455)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7458
                     (lambda (k j v)
                       (letrec*
                        ((g7459
                          (letrec*
                           ((x-cnd7460
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7460
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7464
                                (letrec*
                                 ((x7465
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7465))))
                               (x7461
                                (letrec*
                                 ((x7463
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7462
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7463 k j x7462)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7464 x7461)))))))
                        g7459))))
                   g7458)))
               (any? (lambda (v) (letrec* ((g7466 #t)) g7466)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7468
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7468)))))
                   g7467)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7471
                                (letrec*
                                 ((x7472
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7472)))))
                              g7471))
                           g7290))))
                      (if x-cnd7470
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7469)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7473
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((x-cnd7475
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7476
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7476))
                                g7293))))
                           (if x-cnd7475
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7474))))
                   g7473)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7477
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7480
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7480))
                                g7296))))
                           (if x-cnd7479
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7478))))
                   g7477)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7481
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7484
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7484))
                                g7299))))
                           (if x-cnd7483
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7482))))
                   g7481)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7488))
                                g7302))))
                           (if x-cnd7487
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7486))))
                   g7485)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((x-cnd7491
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7492
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7492))
                                g7305))))
                           (if x-cnd7491
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7490))))
                   g7489)))
               (meta (lambda (v) (letrec* ((g7493 v)) g7493)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7494
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7496
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7497
                                 (letrec*
                                  ((x7498
                                    (letrec*
                                     ((x7500
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7499
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7500 x7499)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7498)))))
                               g7497))))
                          g7496))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7495
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7495))))))
                  g7494)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7501
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7503
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7504
                                 (letrec*
                                  ((x7505
                                    (letrec*
                                     ((x7507
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7506
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7507 x7506)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7505)))))
                               g7504))))
                          g7503))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7502
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7502))))))
                  g7501)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7508
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7510
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7511
                                 (letrec*
                                  ((x7512
                                    (letrec*
                                     ((x7514
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7513
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7514 x7513)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7512)))))
                               g7511))))
                          g7510))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7509
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7509))))))
                  g7508)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7515
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7517
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7518
                                 (letrec*
                                  ((x7519
                                    (letrec*
                                     ((x7521
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7520
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7521 x7520)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7519)))))
                               g7518))))
                          g7517))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7516
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7516))))))
                  g7515)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7522
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7524
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7525
                                 (letrec*
                                  ((x7526
                                    (letrec*
                                     ((x7528
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7527
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7528 x7527)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7526)))))
                               g7525))))
                          g7524))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7523
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7523))))))
                  g7522)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7529
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7531
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7532
                                 (letrec*
                                  ((x7533
                                    (letrec*
                                     ((x7535
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7534
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7535 x7534)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7533)))))
                               g7532))))
                          g7531))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7530
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7530))))))
                  g7529)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7536
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7538
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7539
                                 (letrec*
                                  ((x7540
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7541
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7542 x7541)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7540)))))
                               g7539))))
                          g7538))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7537
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7537))))))
                  g7536)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7545
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7548
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7547)))))
                               g7546))))
                          g7545))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7544))))))
                  g7543)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7552
                            (lambda (g7364)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7555)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7554)))))
                               g7553))))
                          g7552))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7551))))))
                  g7550)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7558
                            (lambda (g7370)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7561)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7560)))))
                               g7559))))
                          g7558))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7557))))))
                  g7556)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7564
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7567
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7566)))))
                               g7565))))
                          g7564))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7563))))))
                  g7562)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7571
                            (lambda (g7383)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7574)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7573)))))
                               g7572))))
                          g7571))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7570))))))
                  g7569)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7577
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7580
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7581 x7580)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7579)))))
                               g7578))))
                          g7577))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7576))))))
                  g7575)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7582
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7582)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7584
                        (letrec*
                         ((x7585
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7585)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7584)))))
                   g7583)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7589))))
                    (g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x-cnd7591
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7591
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7595))))
                          (x7592
                           (letrec*
                            ((x7593
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7593)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7594 x7592)))))))
                   g7588)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7597)))))
                   g7596)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7601)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7600)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7599)))))
                   g7598)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7605)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7610))))
                    (g7608
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
                       ((g7611
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7612 res))
                       g7612))))
                   g7608)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7615)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7614)))))
                   g7613)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7619)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7622))))
                    (g7621
                     (letrec*
                      ((x-cnd7623
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7623
                        #f
                        (letrec*
                         ((x-cnd7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7625 k)))))
                         (if x-cnd7624
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7626)))))))))
                   g7621)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7628)))))
                   g7627)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (letrec*
                      ((x-cnd7632
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7632
                        ""
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7636))))
                          (x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7634)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7635 x7633)))))))
                   g7630)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7642
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7642))))
                   g7639)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7646)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7645)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7644)))))
                   g7643)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7652
                        x
                        (letrec*
                         ((x7654
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7653
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7654 x7653)))))))
                   g7649)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7655
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7655)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x-cnd7657
                        (letrec*
                         ((x7658 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7658)))))
                      (if x-cnd7657
                        (letrec*
                         ((x7659 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7659)))
                        #f))))
                   g7656)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7663
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7664 (if val7245 val7245 #f)))
                             g7664)))))
                       g7663))))
                   g7661)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7666 9)))))
                      (letrec*
                       ((g7667
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7668 10)))))
                            (letrec*
                             ((g7669
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7670 32))))))
                             g7669)))))
                       g7667))))
                   g7665)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7675)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7677 #f)) g7677)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (letrec*
                      ((x-cnd7683
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7683
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7681)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7685
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7686
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7686
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7687
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7688
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7688
                                       (letrec*
                                        ((x-cnd7689
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7689
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7690
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7691
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7691
                                             (letrec*
                                              ((x-cnd7692
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7692
                                                (letrec*
                                                 ((x-cnd7693
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))))
                                                 (if x-cnd7693
                                                   (letrec*
                                                    ((x7697
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7696
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7697 x7696)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7698
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7699
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7699
                                                (letrec*
                                                 ((x-cnd7700
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7700
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7701
                                                       (letrec*
                                                        ((x-cnd7702
                                                          (letrec*
                                                           ((x7703
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
                                                             (= x7703 n)))))
                                                        (if x-cnd7702
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7704
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
                                                                    ((g7705
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7706
                                                                           (letrec*
                                                                            ((x7708
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
                                                                             (x7707
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
                                                                               x7708
                                                                               x7707)))))
                                                                         (if x-cnd7706
                                                                           (letrec*
                                                                            ((x7709
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
                                                                               x7709)))
                                                                           #f)))))
                                                                    g7705))))
                                                                g7704))))
                                                           (letrec*
                                                            ((g7710
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7710))
                                                          #f))))
                                                     g7701))
                                                   #f))
                                                #f)))))
                                         g7698)))))
                                   g7690)))))
                             g7687)))))
                       g7685))))
                   g7684)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7712
                        (letrec*
                         ((x7713
                           (letrec*
                            ((x7714
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7714)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7713)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7712)))))
                   g7711)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7716
                        (letrec*
                         ((x7717
                           (letrec*
                            ((x7718
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7718)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7716)))))
                   g7715)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7719
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7719)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7722))))
                    (g7721
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7723
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7724 (if val7254 val7254 #f)))
                             g7724)))))
                       g7723))))
                   g7721)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7729))))
                    (g7727
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
                       ((g7730
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7731 res))
                       g7731))))
                   g7727)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7732)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7738
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7738))))
                   g7735)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7740)))))
                   g7739)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7757)))))
                   g7754)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7763)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7765)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7769
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7769)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7777))))
                          (x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7775)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7776 x7774)))))))
                   g7771)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7783)))))
                   g7782)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7789)))))
                   g7787)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7793)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7791)))))
                   g7790)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7799
                        (letrec*
                         ((g7800
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7800)
                        (letrec*
                         ((x-cnd7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7802)))))
                         (if x-cnd7801
                           (letrec*
                            ((g7803
                              (letrec*
                               ((x7804
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7804)))))
                            g7803)
                           (letrec*
                            ((x-cnd7805
                              (letrec*
                               ((x7806
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7806)))))
                            (if x-cnd7805
                              (letrec*
                               ((g7807
                                 (letrec*
                                  ((x7809
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7808
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7809 x7808)))))
                               g7807)
                              (letrec*
                               ((x-cnd7810
                                 (letrec*
                                  ((x7811
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7811)))))
                               (if x-cnd7810
                                 (letrec*
                                  ((g7812
                                    (letrec*
                                     ((x7815
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7814
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7813
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7815 x7814 x7813)))))
                                  g7812)
                                 (letrec*
                                  ((x-cnd7816
                                    (letrec*
                                     ((x7817
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7817)))))
                                  (if x-cnd7816
                                    (letrec*
                                     ((g7818
                                       (letrec*
                                        ((x7822
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7821
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7820
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7822 x7821 x7820 x7819)))))
                                     g7818)
                                    (letrec*
                                     ((x-cnd7823
                                       (letrec*
                                        ((x7824
                                          (letrec*
                                           ((x7825
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7825)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7824)))))
                                     (if x-cnd7823
                                       (letrec*
                                        ((g7826
                                          (letrec*
                                           ((x7832
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7831
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7830
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7827
                                             (letrec*
                                              ((x7828
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7828)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7832
                                              x7831
                                              x7830
                                              x7829
                                              x7827)))))
                                        g7826)
                                       (letrec*
                                        ((x-cnd7833
                                          (letrec*
                                           ((x7834
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7835)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7834)))))
                                        (if x-cnd7833
                                          (letrec*
                                           ((g7836
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7843
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7842
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7839
                                                (letrec*
                                                 ((x7840
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7840))))
                                               (x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7838)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7844
                                                 x7843
                                                 x7842
                                                 x7841
                                                 x7839
                                                 x7837)))))
                                           g7836)
                                          (letrec*
                                           ((x-cnd7845
                                             (letrec*
                                              ((x7846
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7847)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7846)))))
                                           (if x-cnd7845
                                             (letrec*
                                              ((g7848
                                                (letrec*
                                                 ((x7858
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7857
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7856
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7853
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7854))))
                                                  (x7851
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7852))))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7850)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7858
                                                    x7857
                                                    x7856
                                                    x7855
                                                    x7853
                                                    x7851
                                                    x7849)))))
                                              g7848)
                                             (letrec*
                                              ((g7859
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7859)))))))))))))))))))
                   g7796)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7862))))
                    (g7861
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7863
                        #f
                        (letrec*
                         ((x-cnd7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7865 e)))))
                         (if x-cnd7864
                           l
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7866)))))))))
                   g7861)))
               (cddddr
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
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7870)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7869)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7868)))))
                   g7867)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7874)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7872)))))
                   g7871)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7875
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7875)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7877)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7880
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7880))))
                   g7879)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7884
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7885)))
                           #f))))
                      (letrec*
                       ((g7886
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7886))))
                   g7883)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7888
                        (letrec*
                         ((x7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7890)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7888)))))
                   g7887)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (letrec*
                         ((x7893 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7893 c)))))
                      (if x-cnd7892
                        (letrec*
                         ((x7894 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7894)))
                        #f))))
                   g7891)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        #f
                        (letrec*
                         ((x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7900 k)))))
                         (if x-cnd7899
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7901)))))))))
                   g7896)))
               (not (lambda (x) (letrec* ((g7902 (if x #f #t))) g7902)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7903
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7903)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7907
                        #f
                        (letrec*
                         ((x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7909 e)))))
                         (if x-cnd7908
                           l
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7910)))))))))
                   g7905)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7914)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7913)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7912)))))
                   g7911)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7918
                             (letrec*
                              ((x-cnd7919
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7919
                                0
                                (letrec*
                                 ((x7920
                                   (letrec*
                                    ((x7921
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7921)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7920)))))))
                           g7918))))
                      (letrec*
                       ((g7922
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7922))))
                   g7916)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7926))))
                    (g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7928
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7928))))
                   g7925)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7930)))))
                   g7929)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7932
                        (letrec*
                         ((x7933
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7933)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7932)))))
                   g7931)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (letrec*
                      ((x-cnd7937
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7937
                        #f
                        (letrec*
                         ((x-cnd7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7939 k)))))
                         (if x-cnd7938
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7940)))))))))
                   g7935)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7942)))))
                   g7941)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7948)))))
                   g7945)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7950
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7950))))
                   g7949)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7956
                        #t
                        (letrec*
                         ((x-cnd7957
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7957
                           (letrec*
                            ((g7958
                              (letrec*
                               ((x7960
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7960))))
                             (g7959
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7961)))))
                            g7959)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7953)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7964))))
                    (g7963
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7965
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7963)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7971
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7971))))
                   g7968)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (letrec*
                            ((x7975
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7975)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7974)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7973)))))
                   g7972)))
               (newline (lambda () (letrec* ((g7976 #f)) g7976)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7980))))
                       (x7978
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7979 x7978)))))
                   g7977)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7983))))
                    (g7982
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7984)))))
                   g7982)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7992)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7991))))
                    (g7988
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7993
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7994
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
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
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7997
                        a
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7998)))))))
                   g7996)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8000
                        z
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1665 34))
                             (display "\n")
                             (car xs)))
                          (x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1667 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1667 56))
                              (display "\n")
                              (foldr f z x8002)))))
                         (begin
                           (write '(funapp 1668 26))
                           (display "\n")
                           (f x8003 x8001)))))))
                   g7999)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8004
                     (begin
                       (write '(funapp 1674 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8005
                             (letrec*
                              ((x8006
                                (begin
                                  (write '(funapp 1677 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1677 59))
                                (display "\n")
                                (cons x8006 ys)))))
                           g8005))
                        empty
                        xs))))
                   g8004))))
              (letrec*
               ((g8007
                 (begin
                   (write '(funapp 1684 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1685 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8011
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1689 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1689 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1689 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1689 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8012
                              (begin
                                (write '(funapp 1692 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8013
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8014
                                           (letrec*
                                            ((x8015
                                              (letrec*
                                               ((x8019
                                                 (begin
                                                   (write '(funapp 1702 44))
                                                   (display "\n")
                                                   ((lambda (j7404 k7405 f7406)
                                                      (letrec*
                                                       ((g8020
                                                         (lambda (g7402 g7403)
                                                           (letrec*
                                                            ((g8021
                                                              (letrec*
                                                               ((x8022
                                                                 (letrec*
                                                                  ((x8024
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1712
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7404
                                                                       k7405
                                                                       g7402)))
                                                                   (x8023
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1717
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7404
                                                                       k7405
                                                                       g7403))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1721
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7406
                                                                     x8024
                                                                     x8023)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1724
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7404
                                                                  k7405
                                                                  x8022)))))
                                                            g8021))))
                                                       g8020))
                                                    j7399
                                                    k7400
                                                    g7396)))
                                                (x8018
                                                 (begin
                                                   (write '(funapp 1733 50))
                                                   (display "\n")
                                                   (any/c j7399 k7400 g7397)))
                                                (x8016
                                                 (letrec*
                                                  ((x8017
                                                    (begin
                                                      (write '(funapp 1736 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1737 45))
                                                    (display "\n")
                                                    (x8017
                                                     j7399
                                                     k7400
                                                     g7398)))))
                                               (begin
                                                 (write '(funapp 1738 42))
                                                 (display "\n")
                                                 (f7401 x8019 x8018 x8016)))))
                                            (begin
                                              (write '(funapp 1739 39))
                                              (display "\n")
                                              (any/c j7399 k7400 x8015)))))
                                         g8014))))
                                    g8013))
                                 xj7394
                                 xk7395
                                 foldr))))
                            g8012)))
                         (x8010 (input))
                         (x8009 (input))
                         (x8008 (input)))
                        (begin
                          (write '(funapp 1749 21))
                          (display "\n")
                          (x8011 x8010 x8009 x8008)))
                       (letrec*
                        ((x8027
                          (letrec*
                           ((xj7407
                             (begin
                               (write '(funapp 1753 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1753 37))
                                  (display "\n")
                                  'module))))
                            (xk7408
                             (begin
                               (write '(funapp 1753 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1753 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8028
                              (begin
                                (write '(funapp 1756 27))
                                (display "\n")
                                ((lambda (j7411 k7412 f7413)
                                   (letrec*
                                    ((g8029
                                      (lambda (g7409 g7410)
                                        (letrec*
                                         ((g8030
                                           (letrec*
                                            ((x8039
                                              (begin
                                                (write '(funapp 1763 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8031
                                              (letrec*
                                               ((x8034
                                                 (begin
                                                   (write '(funapp 1767 44))
                                                   (display "\n")
                                                   ((lambda (j7415 k7416 f7417)
                                                      (letrec*
                                                       ((g8035
                                                         (lambda (g7414)
                                                           (letrec*
                                                            ((g8036
                                                              (letrec*
                                                               ((x8037
                                                                 (letrec*
                                                                  ((x8038
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1777
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7415
                                                                       k7416
                                                                       g7414))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1781
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7417
                                                                     x8038)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1782
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7415
                                                                  k7416
                                                                  x8037)))))
                                                            g8036))))
                                                       g8035))
                                                    j7411
                                                    k7412
                                                    g7409)))
                                                (x8032
                                                 (letrec*
                                                  ((x8033
                                                    (begin
                                                      (write '(funapp 1793 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1794 45))
                                                    (display "\n")
                                                    (x8033
                                                     j7411
                                                     k7412
                                                     g7410)))))
                                               (begin
                                                 (write '(funapp 1795 42))
                                                 (display "\n")
                                                 (f7413 x8034 x8032)))))
                                            (begin
                                              (write '(funapp 1796 39))
                                              (display "\n")
                                              (x8039 j7411 k7412 x8031)))))
                                         g8030))))
                                    g8029))
                                 xj7407
                                 xk7408
                                 map_))))
                            g8028)))
                         (x8026 (input))
                         (x8025 (input)))
                        (begin
                          (write '(funapp 1805 21))
                          (display "\n")
                          (x8027 x8026 x8025)))))))))
               g8007))))
           g7431))))
       g7429)))
    g7428)))
