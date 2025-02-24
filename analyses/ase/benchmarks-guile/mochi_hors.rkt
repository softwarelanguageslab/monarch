(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7400 #t)) g7400)))
    (meta (lambda (v) (letrec* ((g7401 v)) g7401)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7402
          (letrec*
           ((g7403
             (letrec*
              ((x-e7404 lst))
              (letrec*
               ((v1742 x-e7404))
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
                   ((x-cnd7405
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7405
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
           g7403)))
        g7402)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7406 (lambda (v) (letrec* ((g7407 v)) g7407)))) g7406)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7408
          (letrec*
           ((x7409 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7409)))))
        g7408))))
   (letrec*
    ((g7410
      (letrec*
       ((g7411
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
           ((g7412 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7413
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7414
                     (lambda (k j lst)
                       (letrec*
                        ((g7415
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7416
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7416))
                             lst))))
                        g7415))))
                   g7414)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7417
                     (letrec*
                      ((x-cnd7418
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7418
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7417)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7419
                     (letrec*
                      ((x-cnd7420
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7420
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7419)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7421
                     (letrec*
                      ((x-cnd7422
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7422
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7421)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7423
                     (letrec*
                      ((x-cnd7424
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7425 #t)) g7425)) g7272))))
                      (if x-cnd7424
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7423)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7426
                     (letrec*
                      ((x-cnd7427
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7428 #t)) g7428)) g7275))))
                      (if x-cnd7427
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7426)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7430
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7429)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7431
                     (letrec*
                      ((x-cnd7432
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7432
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7431)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7434
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7433)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7436
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7435)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7437
                     (lambda (k j v)
                       (letrec*
                        ((g7438
                          (letrec*
                           ((x-cnd7439
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7439
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7438))))
                   g7437)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7440
                     (lambda (k j v)
                       (letrec*
                        ((g7441
                          (letrec*
                           ((x-cnd7442
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7442
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7446
                                (letrec*
                                 ((x7447
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7447))))
                               (x7443
                                (letrec*
                                 ((x7445
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7444
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7445 k j x7444)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7446 x7443)))))))
                        g7441))))
                   g7440)))
               (any? (lambda (v) (letrec* ((g7448 #t)) g7448)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7450
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7450)))))
                   g7449)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7453
                                (letrec*
                                 ((x7454
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7454)))))
                              g7453))
                           g7290))))
                      (if x-cnd7452
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7451)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7455
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7456
                          (letrec*
                           ((x-cnd7457
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7458
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7458))
                                g7293))))
                           (if x-cnd7457
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7456))))
                   g7455)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7459
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7460
                          (letrec*
                           ((x-cnd7461
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7462
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7462))
                                g7296))))
                           (if x-cnd7461
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7460))))
                   g7459)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7463
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x-cnd7465
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7466
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7466))
                                g7299))))
                           (if x-cnd7465
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7464))))
                   g7463)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7467
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7468
                          (letrec*
                           ((x-cnd7469
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7470
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7470))
                                g7302))))
                           (if x-cnd7469
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7468))))
                   g7467)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7471
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((x-cnd7473
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7474
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7474))
                                g7305))))
                           (if x-cnd7473
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7472))))
                   g7471)))
               (meta (lambda (v) (letrec* ((g7475 v)) g7475)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7476
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7478
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7479
                                 (letrec*
                                  ((x7480
                                    (letrec*
                                     ((x7482
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7481
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7482 x7481)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7480)))))
                               g7479))))
                          g7478))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7477
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7477))))))
                  g7476)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7483
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7485
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7486
                                 (letrec*
                                  ((x7487
                                    (letrec*
                                     ((x7489
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7488
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7489 x7488)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7487)))))
                               g7486))))
                          g7485))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7484
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7484))))))
                  g7483)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7490
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7492
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7493
                                 (letrec*
                                  ((x7494
                                    (letrec*
                                     ((x7496
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7495
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7496 x7495)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7494)))))
                               g7493))))
                          g7492))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7491
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7491))))))
                  g7490)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7497
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7499
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7500
                                 (letrec*
                                  ((x7501
                                    (letrec*
                                     ((x7503
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7502
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7503 x7502)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7501)))))
                               g7500))))
                          g7499))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7498
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7498))))))
                  g7497)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7506
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7509
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7508)))))
                               g7507))))
                          g7506))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7505))))))
                  g7504)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7513
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7516
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7515)))))
                               g7514))))
                          g7513))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7512))))))
                  g7511)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7520
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7523
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7522)))))
                               g7521))))
                          g7520))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7519))))))
                  g7518)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7527
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7530
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7529)))))
                               g7528))))
                          g7527))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7526))))))
                  g7525)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7534
                            (lambda (g7364)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7537)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7536)))))
                               g7535))))
                          g7534))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7533))))))
                  g7532)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7540
                            (lambda (g7370)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7543)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7542)))))
                               g7541))))
                          g7540))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7539))))))
                  g7538)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7546
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7549
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7548)))))
                               g7547))))
                          g7546))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7545))))))
                  g7544)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7553
                            (lambda (g7383)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7556)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7555)))))
                               g7554))))
                          g7553))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7552))))))
                  g7551)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7559
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7562
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7563 x7562)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7561)))))
                               g7560))))
                          g7559))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7558))))))
                  g7557)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7564
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7564)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((x7566
                        (letrec*
                         ((x7567
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7567)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7566)))))
                   g7565)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7571))))
                    (g7569
                     (letrec*
                      ((x7572
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7572))))
                    (g7570
                     (letrec*
                      ((x-cnd7573
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7573
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7576
                           (letrec*
                            ((x7577
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7577))))
                          (x7574
                           (letrec*
                            ((x7575
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7575)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7576 x7574)))))))
                   g7570)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (letrec*
                         ((x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7583)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7582)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7581)))))
                   g7580)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7585
                        (letrec*
                         ((x7586
                           (letrec*
                            ((x7587
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7587)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7586)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7585)))))
                   g7584)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7592))))
                    (g7590
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
                       ((g7593
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7594 res))
                       g7594))))
                   g7590)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7596
                        (letrec*
                         ((x7597
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7597)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7596)))))
                   g7595)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7601)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7604))))
                    (g7603
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7605
                        #f
                        (letrec*
                         ((x-cnd7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7607 k)))))
                         (if x-cnd7606
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7608)))))))))
                   g7603)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7610)))))
                   g7609)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7613))))
                    (g7612
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7614
                        ""
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7618))))
                          (x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7616)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7617 x7615)))))))
                   g7612)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7624
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7624))))
                   g7621)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7628)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7627)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7626)))))
                   g7625)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7634
                        x
                        (letrec*
                         ((x7636
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7635
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7636 x7635)))))))
                   g7631)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7637
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7637)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x-cnd7639
                        (letrec*
                         ((x7640 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7640)))))
                      (if x-cnd7639
                        (letrec*
                         ((x7641 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7641)))
                        #f))))
                   g7638)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7644))))
                    (g7643
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7645
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7646 (if val7245 val7245 #f)))
                             g7646)))))
                       g7645))))
                   g7643)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7648
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7648 9)))))
                      (letrec*
                       ((g7649
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7650
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7650 10)))))
                            (letrec*
                             ((g7651
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7652
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7652 32))))))
                             g7651)))))
                       g7649))))
                   g7647)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7655)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7654)))))
                   g7653)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7657)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7659 #f)) g7659)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7661)))))
                   g7660)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7665
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7663)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7667
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7668
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7668
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7669
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7670
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7670
                                       (letrec*
                                        ((x-cnd7671
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7671
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7672
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7673
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7673
                                             (letrec*
                                              ((x-cnd7674
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7674
                                                (letrec*
                                                 ((x-cnd7675
                                                   (letrec*
                                                    ((x7677
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7676
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7677 x7676)))))
                                                 (if x-cnd7675
                                                   (letrec*
                                                    ((x7679
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7678
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7679 x7678)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7680
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7681
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7681
                                                (letrec*
                                                 ((x-cnd7682
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7682
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7683
                                                       (letrec*
                                                        ((x-cnd7684
                                                          (letrec*
                                                           ((x7685
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
                                                             (= x7685 n)))))
                                                        (if x-cnd7684
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7686
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
                                                                    ((g7687
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7688
                                                                           (letrec*
                                                                            ((x7690
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
                                                                             (x7689
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
                                                                               x7690
                                                                               x7689)))))
                                                                         (if x-cnd7688
                                                                           (letrec*
                                                                            ((x7691
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
                                                                               x7691)))
                                                                           #f)))))
                                                                    g7687))))
                                                                g7686))))
                                                           (letrec*
                                                            ((g7692
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7692))
                                                          #f))))
                                                     g7683))
                                                   #f))
                                                #f)))))
                                         g7680)))))
                                   g7672)))))
                             g7669)))))
                       g7667))))
                   g7666)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (letrec*
                         ((x7695
                           (letrec*
                            ((x7696
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7696)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7695)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7694)))))
                   g7693)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7698
                        (letrec*
                         ((x7699
                           (letrec*
                            ((x7700
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7700)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7699)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7698)))))
                   g7697)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7701
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7701)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7704))))
                    (g7703
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7705
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7706 (if val7254 val7254 #f)))
                             g7706)))))
                       g7705))))
                   g7703)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7710))))
                    (g7708
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7711))))
                    (g7709
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
                       ((g7712
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7713 res))
                       g7713))))
                   g7709)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7714
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7714)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7718))))
                    (g7716
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7719))))
                    (g7717
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7720
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7720))))
                   g7717)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7722
                        (letrec*
                         ((x7723
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7723)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7722)))))
                   g7721)))
               (cdaddr
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
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7730)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7739)))))
                   g7736)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7743)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7746))))
                    (g7745
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7745)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7747
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7747)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7751
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7751)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7754))))
                    (g7753
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7755
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7759))))
                          (x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7757)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7758 x7756)))))))
                   g7753)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7763)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7767)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7766)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7771)))))
                   g7769)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7775)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7779))))
                    (g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7780))))
                    (g7778
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7781
                        (letrec*
                         ((g7782
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7782)
                        (letrec*
                         ((x-cnd7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7784)))))
                         (if x-cnd7783
                           (letrec*
                            ((g7785
                              (letrec*
                               ((x7786
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7786)))))
                            g7785)
                           (letrec*
                            ((x-cnd7787
                              (letrec*
                               ((x7788
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7788)))))
                            (if x-cnd7787
                              (letrec*
                               ((g7789
                                 (letrec*
                                  ((x7791
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7790
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7791 x7790)))))
                               g7789)
                              (letrec*
                               ((x-cnd7792
                                 (letrec*
                                  ((x7793
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7793)))))
                               (if x-cnd7792
                                 (letrec*
                                  ((g7794
                                    (letrec*
                                     ((x7797
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7796
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7795
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7797 x7796 x7795)))))
                                  g7794)
                                 (letrec*
                                  ((x-cnd7798
                                    (letrec*
                                     ((x7799
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7799)))))
                                  (if x-cnd7798
                                    (letrec*
                                     ((g7800
                                       (letrec*
                                        ((x7804
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7803
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7802
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7801
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7804 x7803 x7802 x7801)))))
                                     g7800)
                                    (letrec*
                                     ((x-cnd7805
                                       (letrec*
                                        ((x7806
                                          (letrec*
                                           ((x7807
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7807)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7806)))))
                                     (if x-cnd7805
                                       (letrec*
                                        ((g7808
                                          (letrec*
                                           ((x7814
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7813
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7812
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7811
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7809
                                             (letrec*
                                              ((x7810
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7810)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7814
                                              x7813
                                              x7812
                                              x7811
                                              x7809)))))
                                        g7808)
                                       (letrec*
                                        ((x-cnd7815
                                          (letrec*
                                           ((x7816
                                             (letrec*
                                              ((x7817
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7817)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7816)))))
                                        (if x-cnd7815
                                          (letrec*
                                           ((g7818
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7825
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7824
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7823
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7821
                                                (letrec*
                                                 ((x7822
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7822))))
                                               (x7819
                                                (letrec*
                                                 ((x7820
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7820)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7826
                                                 x7825
                                                 x7824
                                                 x7823
                                                 x7821
                                                 x7819)))))
                                           g7818)
                                          (letrec*
                                           ((x-cnd7827
                                             (letrec*
                                              ((x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7829)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7828)))))
                                           (if x-cnd7827
                                             (letrec*
                                              ((g7830
                                                (letrec*
                                                 ((x7840
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7839
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7838
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7837
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7835
                                                   (letrec*
                                                    ((x7836
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7836))))
                                                  (x7833
                                                   (letrec*
                                                    ((x7834
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7834))))
                                                  (x7831
                                                   (letrec*
                                                    ((x7832
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7832)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7840
                                                    x7839
                                                    x7838
                                                    x7837
                                                    x7835
                                                    x7833
                                                    x7831)))))
                                              g7830)
                                             (letrec*
                                              ((g7841
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7841)))))))))))))))))))
                   g7778)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7845
                        #f
                        (letrec*
                         ((x-cnd7846
                           (letrec*
                            ((x7847
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7847 e)))))
                         (if x-cnd7846
                           l
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7848)))))))))
                   g7843)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (letrec*
                            ((x7852
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7852)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7850)))))
                   g7849)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7856)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7855)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7854)))))
                   g7853)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7857
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7857)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7859)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7862
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7862))))
                   g7861)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7864)))))
                   g7863)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7866
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7867)))
                           #f))))
                      (letrec*
                       ((g7868
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7868))))
                   g7865)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7872)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7871)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7870)))))
                   g7869)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x-cnd7874
                        (letrec*
                         ((x7875 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7875 c)))))
                      (if x-cnd7874
                        (letrec*
                         ((x7876 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7876)))
                        #f))))
                   g7873)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((x-cnd7880
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7880
                        #f
                        (letrec*
                         ((x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7882 k)))))
                         (if x-cnd7881
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7883)))))))))
                   g7878)))
               (not (lambda (x) (letrec* ((g7884 (if x #f #t))) g7884)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7885
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7885)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7891 e)))))
                         (if x-cnd7890
                           l
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7892)))))))))
                   g7887)))
               (cadaar
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
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7896)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7895)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7894)))))
                   g7893)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7899))))
                    (g7898
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7900
                             (letrec*
                              ((x-cnd7901
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7901
                                0
                                (letrec*
                                 ((x7902
                                   (letrec*
                                    ((x7903
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7903)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7902)))))))
                           g7900))))
                      (letrec*
                       ((g7904
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7904))))
                   g7898)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7910
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7910))))
                   g7907)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7912)))))
                   g7911)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7914)))))
                   g7913)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7919
                        #f
                        (letrec*
                         ((x-cnd7920
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7921 k)))))
                         (if x-cnd7920
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7922)))))))))
                   g7917)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7924)))))
                   g7923)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7930)))))
                   g7927)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7932
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7932))))
                   g7931)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7938
                        #t
                        (letrec*
                         ((x-cnd7939
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7939
                           (letrec*
                            ((g7940
                              (letrec*
                               ((x7942
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7942))))
                             (g7941
                              (letrec*
                               ((x7943
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7943)))))
                            g7941)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7935)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7947
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7945)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7953
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7953))))
                   g7950)))
               (caddar
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
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7957)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7956)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7955)))))
                   g7954)))
               (newline (lambda () (letrec* ((g7958 #f)) g7958)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (letrec*
                         ((x7962
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7962))))
                       (x7960
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7961 x7960)))))
                   g7959)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7965))))
                    (g7964
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7966)))))
                   g7964)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7971))))
                    (g7968
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7972))))
                    (g7969
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7974)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7973))))
                    (g7970
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7975
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7976
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7977 x7976)))))))
                   g7970)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7979
                        a
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7980)))))))
                   g7978)))
               (c
                (lambda (_)
                  (letrec*
                   ((g7981
                     (begin (write '(funapp 1656 47)) (display "\n") 'unit)))
                   g7981)))
               (b
                (lambda (x _)
                  (letrec*
                   ((g7982
                     (begin (write '(funapp 1657 50)) (display "\n") (x 1))))
                   g7982)))
               (a
                (lambda (x y q)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1663 35))
                          (display "\n")
                          (= q 0))))
                      (if x-cnd7984
                        (letrec*
                         ((g7985
                           (begin
                             (write '(funapp 1665 42))
                             (display "\n")
                             (x 0)))
                          (g7986
                           (begin
                             (write '(funapp 1665 56))
                             (display "\n")
                             (y 0))))
                         g7986)
                        (begin
                          (write '(funapp 1666 25))
                          (display "\n")
                          (error
                           (begin
                             (write '(funapp 1666 31))
                             (display "\n")
                             'invalid)))))))
                   g7983)))
               (f
                (lambda (n x q)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x-cnd7988
                        (begin
                          (write '(funapp 1673 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7988
                        (begin (write '(funapp 1675 25)) (display "\n") (x q))
                        (begin
                          (write '(funapp 1676 25))
                          (display "\n")
                          (a
                           x
                           (lambda (p)
                             (letrec*
                              ((g7989
                                (letrec*
                                 ((x7991
                                   (begin
                                     (write '(funapp 1682 40))
                                     (display "\n")
                                     (- n 1))))
                                 (begin
                                   (write '(funapp 1683 32))
                                   (display "\n")
                                   (f
                                    x7991
                                    (lambda (_)
                                      (letrec*
                                       ((g7990
                                         (begin
                                           (write '(funapp 1685 62))
                                           (display "\n")
                                           (b x _))))
                                       g7990))
                                    p)))))
                              g7989))
                           q))))))
                   g7987)))
               (s
                (lambda (n q)
                  (letrec*
                   ((g7992
                     (begin
                       (write '(funapp 1690 50))
                       (display "\n")
                       (f n c q))))
                   g7992)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7993
                     (begin (write '(funapp 1691 51)) (display "\n") (s n 0))))
                   g7993))))
              (letrec*
               ((g7994
                 (begin
                   (write '(funapp 1694 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1695 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7996
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1699 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1699 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1699 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1699 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7997
                              (begin
                                (write '(funapp 1702 27))
                                (display "\n")
                                ((lambda (j7397 k7398 f7399)
                                   (letrec*
                                    ((g7998
                                      (lambda (g7396)
                                        (letrec*
                                         ((g7999
                                           (letrec*
                                            ((x8000
                                              (letrec*
                                               ((x8001
                                                 (begin
                                                   (write '(funapp 1712 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7397
                                                    k7398
                                                    g7396))))
                                               (begin
                                                 (write '(funapp 1713 42))
                                                 (display "\n")
                                                 (f7399 x8001)))))
                                            (begin
                                              (write '(funapp 1714 39))
                                              (display "\n")
                                              (any/c j7397 k7398 x8000)))))
                                         g7999))))
                                    g7998))
                                 xj7394
                                 xk7395
                                 main))))
                            g7997)))
                         (x7995 (input)))
                        (begin
                          (write '(funapp 1722 21))
                          (display "\n")
                          (x7996 x7995)))))))))
               g7994))))
           g7413))))
       g7411)))
    g7410)))
