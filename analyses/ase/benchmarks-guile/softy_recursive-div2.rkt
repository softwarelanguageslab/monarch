(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7403 #t)) g7403)))
    (meta (lambda (v) (letrec* ((g7404 v)) g7404)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7405
          (letrec*
           ((g7406
             (letrec*
              ((x-e7407 lst))
              (letrec*
               ((v1742 x-e7407))
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
                   ((x-cnd7408
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7408
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
           g7406)))
        g7405)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7409 (lambda (v) (letrec* ((g7410 v)) g7410)))) g7409)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7411
          (letrec*
           ((x7412 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7412)))))
        g7411))))
   (letrec*
    ((g7413
      (letrec*
       ((g7414
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
           ((g7415 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7416
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7417
                     (lambda (k j lst)
                       (letrec*
                        ((g7418
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7419
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7419))
                             lst))))
                        g7418))))
                   g7417)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7420
                     (letrec*
                      ((x-cnd7421
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7421
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7420)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7422
                     (letrec*
                      ((x-cnd7423
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7423
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7422)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7424
                     (letrec*
                      ((x-cnd7425
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7425
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7424)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7426
                     (letrec*
                      ((x-cnd7427
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7428 #t)) g7428)) g7272))))
                      (if x-cnd7427
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7426)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7431 #t)) g7431)) g7275))))
                      (if x-cnd7430
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7429)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7433
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7432)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7435
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7434)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7437
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7436)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7439
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7438)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7440
                     (lambda (k j v)
                       (letrec*
                        ((g7441
                          (letrec*
                           ((x-cnd7442
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7442
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7441))))
                   g7440)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7443
                     (lambda (k j v)
                       (letrec*
                        ((g7444
                          (letrec*
                           ((x-cnd7445
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7445
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7449
                                (letrec*
                                 ((x7450
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7450))))
                               (x7446
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7447
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7448 k j x7447)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7449 x7446)))))))
                        g7444))))
                   g7443)))
               (any? (lambda (v) (letrec* ((g7451 #t)) g7451)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7453)))))
                   g7452)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7456
                                (letrec*
                                 ((x7457
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7457)))))
                              g7456))
                           g7290))))
                      (if x-cnd7455
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7454)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7458
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7459
                          (letrec*
                           ((x-cnd7460
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7461
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7461))
                                g7293))))
                           (if x-cnd7460
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7459))))
                   g7458)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7462
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7463
                          (letrec*
                           ((x-cnd7464
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7465
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7465))
                                g7296))))
                           (if x-cnd7464
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7463))))
                   g7462)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7466
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x-cnd7468
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7469
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7469))
                                g7299))))
                           (if x-cnd7468
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7467))))
                   g7466)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7470
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7473
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7473))
                                g7302))))
                           (if x-cnd7472
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7471))))
                   g7470)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7474
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7477
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7477))
                                g7305))))
                           (if x-cnd7476
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7475))))
                   g7474)))
               (meta (lambda (v) (letrec* ((g7478 v)) g7478)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7479
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7481
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7482
                                 (letrec*
                                  ((x7483
                                    (letrec*
                                     ((x7485
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7484
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7485 x7484)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7483)))))
                               g7482))))
                          g7481))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7480
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7480))))))
                  g7479)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7486
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7488
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7489
                                 (letrec*
                                  ((x7490
                                    (letrec*
                                     ((x7492
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7491
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7492 x7491)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7490)))))
                               g7489))))
                          g7488))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7487
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7487))))))
                  g7486)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7493
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7495
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7496
                                 (letrec*
                                  ((x7497
                                    (letrec*
                                     ((x7499
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7498
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7499 x7498)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7497)))))
                               g7496))))
                          g7495))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7494
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7494))))))
                  g7493)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7500
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7502
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7503
                                 (letrec*
                                  ((x7504
                                    (letrec*
                                     ((x7506
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7505
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7506 x7505)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7504)))))
                               g7503))))
                          g7502))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7501
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7501))))))
                  g7500)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7507
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7509
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7510
                                 (letrec*
                                  ((x7511
                                    (letrec*
                                     ((x7513
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7512
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7513 x7512)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7511)))))
                               g7510))))
                          g7509))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7508
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7508))))))
                  g7507)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7516
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7519
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7518)))))
                               g7517))))
                          g7516))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7515))))))
                  g7514)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7523
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7526
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7525)))))
                               g7524))))
                          g7523))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7522))))))
                  g7521)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7530
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7533
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7532)))))
                               g7531))))
                          g7530))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7529))))))
                  g7528)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7537
                            (lambda (g7364)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7540)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7539)))))
                               g7538))))
                          g7537))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7536))))))
                  g7535)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7543
                            (lambda (g7370)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7546)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7545)))))
                               g7544))))
                          g7543))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7542))))))
                  g7541)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7549
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7552
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7551)))))
                               g7550))))
                          g7549))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7548))))))
                  g7547)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7556
                            (lambda (g7383)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7559)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7558)))))
                               g7557))))
                          g7556))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7555))))))
                  g7554)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7562
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7565
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7566 x7565)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7564)))))
                               g7563))))
                          g7562))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7561))))))
                  g7560)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7567
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7567)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7569
                        (letrec*
                         ((x7570
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7570)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7569)))))
                   g7568)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7574
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7574))))
                    (g7572
                     (letrec*
                      ((x7575
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7575))))
                    (g7573
                     (letrec*
                      ((x-cnd7576
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7576
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7579
                           (letrec*
                            ((x7580
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7580))))
                          (x7577
                           (letrec*
                            ((x7578
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7578)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7579 x7577)))))))
                   g7573)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7584
                        (letrec*
                         ((x7585
                           (letrec*
                            ((x7586
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7586)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7585)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7584)))))
                   g7583)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7588
                        (letrec*
                         ((x7589
                           (letrec*
                            ((x7590
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7590)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7589)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7588)))))
                   g7587)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7595))))
                    (g7593
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
                       ((g7596
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7597 res))
                       g7597))))
                   g7593)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7600)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7599)))))
                   g7598)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7604)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7607))))
                    (g7606
                     (letrec*
                      ((x-cnd7608
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7608
                        #f
                        (letrec*
                         ((x-cnd7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7610 k)))))
                         (if x-cnd7609
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7611)))))))))
                   g7606)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7613)))))
                   g7612)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7616))))
                    (g7615
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7617
                        ""
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7621))))
                          (x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7619)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7620 x7618)))))))
                   g7615)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7627
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7627))))
                   g7624)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7631)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7630)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7637
                        x
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7638
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7639 x7638)))))))
                   g7634)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7640
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7640)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x-cnd7642
                        (letrec*
                         ((x7643 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7643)))))
                      (if x-cnd7642
                        (letrec*
                         ((x7644 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7644)))
                        #f))))
                   g7641)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7648
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7649 (if val7245 val7245 #f)))
                             g7649)))))
                       g7648))))
                   g7646)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7651 9)))))
                      (letrec*
                       ((g7652
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7653
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7653 10)))))
                            (letrec*
                             ((g7654
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7655
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7655 32))))))
                             g7654)))))
                       g7652))))
                   g7650)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7660)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7662 #f)) g7662)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7664)))))
                   g7663)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7668
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7666)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7670
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7671
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7671
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7672
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7673
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7673
                                       (letrec*
                                        ((x-cnd7674
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7674
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7675
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7676
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7676
                                             (letrec*
                                              ((x-cnd7677
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7677
                                                (letrec*
                                                 ((x-cnd7678
                                                   (letrec*
                                                    ((x7680
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7679
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7680 x7679)))))
                                                 (if x-cnd7678
                                                   (letrec*
                                                    ((x7682
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7681
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7682 x7681)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7683
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7684
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7684
                                                (letrec*
                                                 ((x-cnd7685
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7685
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7686
                                                       (letrec*
                                                        ((x-cnd7687
                                                          (letrec*
                                                           ((x7688
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
                                                             (= x7688 n)))))
                                                        (if x-cnd7687
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7689
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
                                                                    ((g7690
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7691
                                                                           (letrec*
                                                                            ((x7693
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
                                                                             (x7692
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
                                                                               x7693
                                                                               x7692)))))
                                                                         (if x-cnd7691
                                                                           (letrec*
                                                                            ((x7694
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
                                                                               x7694)))
                                                                           #f)))))
                                                                    g7690))))
                                                                g7689))))
                                                           (letrec*
                                                            ((g7695
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7695))
                                                          #f))))
                                                     g7686))
                                                   #f))
                                                #f)))))
                                         g7683)))))
                                   g7675)))))
                             g7672)))))
                       g7670))))
                   g7669)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (letrec*
                         ((x7698
                           (letrec*
                            ((x7699
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7699)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7698)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7697)))))
                   g7696)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (letrec*
                         ((x7702
                           (letrec*
                            ((x7703
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7703)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7702)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7701)))))
                   g7700)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7704
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7704)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7707))))
                    (g7706
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7708
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7709 (if val7254 val7254 #f)))
                             g7709)))))
                       g7708))))
                   g7706)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7713))))
                    (g7711
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7714))))
                    (g7712
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
                       ((g7715
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7716 res))
                       g7716))))
                   g7712)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7717
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7717)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7721))))
                    (g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7722))))
                    (g7720
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7723
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7723))))
                   g7720)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7742)))))
                   g7739)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7746)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7749))))
                    (g7748
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7748)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7750
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7750)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7754
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7754)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (letrec*
                      ((x-cnd7758
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7758
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7762))))
                          (x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7760)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7761 x7759)))))))
                   g7756)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7774)))))
                   g7772)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7778)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7782))))
                    (g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x-cnd7784
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7784
                        (letrec*
                         ((g7785
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7785)
                        (letrec*
                         ((x-cnd7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7787)))))
                         (if x-cnd7786
                           (letrec*
                            ((g7788
                              (letrec*
                               ((x7789
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7789)))))
                            g7788)
                           (letrec*
                            ((x-cnd7790
                              (letrec*
                               ((x7791
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7791)))))
                            (if x-cnd7790
                              (letrec*
                               ((g7792
                                 (letrec*
                                  ((x7794
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7793
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7794 x7793)))))
                               g7792)
                              (letrec*
                               ((x-cnd7795
                                 (letrec*
                                  ((x7796
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7796)))))
                               (if x-cnd7795
                                 (letrec*
                                  ((g7797
                                    (letrec*
                                     ((x7800
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7799
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7798
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7800 x7799 x7798)))))
                                  g7797)
                                 (letrec*
                                  ((x-cnd7801
                                    (letrec*
                                     ((x7802
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7802)))))
                                  (if x-cnd7801
                                    (letrec*
                                     ((g7803
                                       (letrec*
                                        ((x7807
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7806
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7805
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7804
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7807 x7806 x7805 x7804)))))
                                     g7803)
                                    (letrec*
                                     ((x-cnd7808
                                       (letrec*
                                        ((x7809
                                          (letrec*
                                           ((x7810
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7810)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7809)))))
                                     (if x-cnd7808
                                       (letrec*
                                        ((g7811
                                          (letrec*
                                           ((x7817
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7816
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7815
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7814
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7812
                                             (letrec*
                                              ((x7813
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7813)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7817
                                              x7816
                                              x7815
                                              x7814
                                              x7812)))))
                                        g7811)
                                       (letrec*
                                        ((x-cnd7818
                                          (letrec*
                                           ((x7819
                                             (letrec*
                                              ((x7820
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7820)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7819)))))
                                        (if x-cnd7818
                                          (letrec*
                                           ((g7821
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7828
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7827
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7826
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7824
                                                (letrec*
                                                 ((x7825
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7825))))
                                               (x7822
                                                (letrec*
                                                 ((x7823
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7823)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7829
                                                 x7828
                                                 x7827
                                                 x7826
                                                 x7824
                                                 x7822)))))
                                           g7821)
                                          (letrec*
                                           ((x-cnd7830
                                             (letrec*
                                              ((x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7832)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7831)))))
                                           (if x-cnd7830
                                             (letrec*
                                              ((g7833
                                                (letrec*
                                                 ((x7843
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7842
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7841
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7840
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7838
                                                   (letrec*
                                                    ((x7839
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7839))))
                                                  (x7836
                                                   (letrec*
                                                    ((x7837
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7837))))
                                                  (x7834
                                                   (letrec*
                                                    ((x7835
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7835)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7843
                                                    x7842
                                                    x7841
                                                    x7840
                                                    x7838
                                                    x7836
                                                    x7834)))))
                                              g7833)
                                             (letrec*
                                              ((g7844
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7844)))))))))))))))))))
                   g7781)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7848
                        #f
                        (letrec*
                         ((x-cnd7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7850 e)))))
                         (if x-cnd7849
                           l
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7851)))))))))
                   g7846)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7853
                        (letrec*
                         ((x7854
                           (letrec*
                            ((x7855
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7855)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7854)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7853)))))
                   g7852)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7859)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7858)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7857)))))
                   g7856)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7860
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7860)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7863))))
                    (g7862
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7862)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7865
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7865))))
                   g7864)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7869
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7870)))
                           #f))))
                      (letrec*
                       ((g7871
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7871))))
                   g7868)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7875)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7874)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7873)))))
                   g7872)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x-cnd7877
                        (letrec*
                         ((x7878 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7878 c)))))
                      (if x-cnd7877
                        (letrec*
                         ((x7879 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7879)))
                        #f))))
                   g7876)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        #f
                        (letrec*
                         ((x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7885 k)))))
                         (if x-cnd7884
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7886)))))))))
                   g7881)))
               (not (lambda (x) (letrec* ((g7887 (if x #f #t))) g7887)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7888
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7888)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7892
                        #f
                        (letrec*
                         ((x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7894 e)))))
                         (if x-cnd7893
                           l
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7895)))))))))
                   g7890)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7899)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7903
                             (letrec*
                              ((x-cnd7904
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7904
                                0
                                (letrec*
                                 ((x7905
                                   (letrec*
                                    ((x7906
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7906)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7905)))))))
                           g7903))))
                      (letrec*
                       ((g7907
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7907))))
                   g7901)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7912))))
                    (g7910
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7913
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7913))))
                   g7910)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7915)))))
                   g7914)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7918)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7917)))))
                   g7916)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7924 k)))))
                         (if x-cnd7923
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7925)))))))))
                   g7920)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7927)))))
                   g7926)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7933)))))
                   g7930)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7935
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7935))))
                   g7934)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        #t
                        (letrec*
                         ((x-cnd7942
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7942
                           (letrec*
                            ((g7943
                              (letrec*
                               ((x7945
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7945))))
                             (g7944
                              (letrec*
                               ((x7946
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7946)))))
                            g7944)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7938)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7949))))
                    (g7948
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7950
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7948)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7956
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7956))))
                   g7953)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (letrec*
                         ((x7959
                           (letrec*
                            ((x7960
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7960)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7959)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7958)))))
                   g7957)))
               (newline (lambda () (letrec* ((g7961 #f)) g7961)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7965))))
                       (x7963
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7964 x7963)))))
                   g7962)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7968))))
                    (g7967
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7969)))))
                   g7967)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7974))))
                    (g7971
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7975))))
                    (g7972
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7977)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7976))))
                    (g7973
                     (letrec*
                      ((x-cnd7978
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7978
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7979
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7980 x7979)))))))
                   g7973)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7982
                        a
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7983)))))))
                   g7981)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7985
                        empty
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1665 34))
                             (display "\n")
                             (car l)))
                          (x7986
                           (letrec*
                            ((x7987
                              (letrec*
                               ((x7988
                                 (begin
                                   (write '(funapp 1668 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1668 64))
                                 (display "\n")
                                 (cdr x7988)))))
                            (begin
                              (write '(funapp 1669 29))
                              (display "\n")
                              (recursive-div2 x7987)))))
                         (begin
                           (write '(funapp 1670 26))
                           (display "\n")
                           (cons x7989 x7986)))))))
                   g7984)))
               (even-list/c
                (lambda (g7394 g7395 g7396)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1678 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7992
                                (letrec*
                                 ((x7993
                                   (letrec*
                                    ((x7994
                                      (begin
                                        (write '(funapp 1684 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1685 35))
                                      (display "\n")
                                      (cons/c any/c x7994)))))
                                 (begin
                                   (write '(funapp 1686 32))
                                   (display "\n")
                                   (or/c null? x7993)))))
                              g7992))
                           g7396))))
                      (if x-cnd7991
                        g7396
                        (begin
                          (write '(blame g7394 1691 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7394)))))))
                   g7990))))
              (letrec*
               ((g7995
                 (begin
                   (write '(funapp 1700 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1701 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7997
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1705 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1705 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1705 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1705 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7998
                              (begin
                                (write '(funapp 1708 27))
                                (display "\n")
                                ((lambda (j7400 k7401 f7402)
                                   (letrec*
                                    ((g7999
                                      (lambda (g7399)
                                        (letrec*
                                         ((g8000
                                           (letrec*
                                            ((x8004
                                              (begin
                                                (write '(funapp 1715 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8001
                                              (letrec*
                                               ((x8002
                                                 (letrec*
                                                  ((x8003
                                                    (begin
                                                      (write '(funapp 1720 53))
                                                      (display "\n")
                                                      (even-list/c))))
                                                  (begin
                                                    (write '(funapp 1721 45))
                                                    (display "\n")
                                                    (x8003
                                                     j7400
                                                     k7401
                                                     g7399)))))
                                               (begin
                                                 (write '(funapp 1722 42))
                                                 (display "\n")
                                                 (f7402 x8002)))))
                                            (begin
                                              (write '(funapp 1723 39))
                                              (display "\n")
                                              (x8004 j7400 k7401 x8001)))))
                                         g8000))))
                                    g7999))
                                 xj7397
                                 xk7398
                                 recursive-div2))))
                            g7998)))
                         (x7996 (input)))
                        (begin
                          (write '(funapp 1731 21))
                          (display "\n")
                          (x7997 x7996)))))))))
               g7995))))
           g7416))))
       g7414)))
    g7413)))
